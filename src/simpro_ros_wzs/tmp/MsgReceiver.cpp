#include "MsgReceiver.h"
#include <cstring>
#include <cstdio>
#include <thread>
#include "SimProType.h"

// socket
int client_sockfd_simulator = 0; //连接simulator的socket fd
int client_sockfd_component_manager = 0; //连接ComponentManager的socket fd
struct sockaddr_in remote_addr = {0};     //服务器端网络地址结构体(Simulator)
struct sockaddr_in cm_remote_addr = {0};  //服务器端网络地址结构体(ComponentManager)
unsigned int sin_size = sizeof(struct sockaddr_in);
//char recvBuf[RECV_BUF_SIZE];   //接收数据的缓冲区

void(*parseMsgFunc)(char *msgBuff, unsigned long int size) = nullptr; //解析消息函数指针

//拆包粘包处理
char recvMsgBuf[RECV_BUF_SIZE];  //接收数据的缓冲区
int recvMsgBufUsedSize = 0; //recvMsgBuf已使用空间
char swapBuf[RECV_BUF_SIZE]; //交换空间

#if 1 // simpro帧率控制数据传输架构图整改 zxz 2023.12.27 添加epoll机制
#define MAX_EVENTS (5)

int epoll_fd;  // epoll 文件描述符
#endif

#if 1 /* dingjiajia 2022.08.08 网络安全要求 [start] */
#include <netinet/in.h>
#include <netdb.h>
#include <sys/types.h>
#include <ifaddrs.h>
#include <stdlib.h>

static void getIp(char *p_ip)
{
    struct ifaddrs *ifAddrStruct = NULL;
    struct ifaddrs *ifAddrStructHead = NULL;
    void *tmpAddrPtr = NULL;
    char target[] = "127.0.0.1";

    getifaddrs(&ifAddrStruct);
    ifAddrStructHead = ifAddrStruct;

    while (ifAddrStruct != NULL)
    {
        if ((ifAddrStruct->ifa_name)[0] == 'e') /* 网络接口名：以字母e开头 */
        {
            if (ifAddrStruct->ifa_addr->sa_family == AF_INET) /* 协议族：AF_INET,当前网络接口可以支持：与所属网络中某个节点通信 */
            {
                tmpAddrPtr = &((struct sockaddr_in *)ifAddrStruct->ifa_addr)->sin_addr;
                char addressBuffer[INET_ADDRSTRLEN];
                inet_ntop(AF_INET, tmpAddrPtr, addressBuffer, INET_ADDRSTRLEN);
                if (0 != strcmp(target, addressBuffer))
                {
                    memcpy(p_ip, addressBuffer, INET_ADDRSTRLEN);

                    freeifaddrs(ifAddrStructHead);
                    return ;
                }
            }
        }
        ifAddrStruct = ifAddrStruct->ifa_next;
    }
    memcpy(p_ip, target, strlen(target));
    freeifaddrs(ifAddrStructHead);
    return ;
}
#endif /* dingjiajia 2022.08.08 网络安全要求 [end] */

MsgReceiver::MsgReceiver()
{
    //memset(recvBuf, 0, RECV_BUF_SIZE);  //接收数据的缓冲区
}

//socket初始化，返回是否成功
#if USE_CM
bool MsgReceiver::initSocket(unsigned short int simulatorPort, unsigned short int componentManagerPort)
{
    //socket 初始化
    memset(&remote_addr,0,sizeof(remote_addr));                                                                           //数据初始化--清零
    remote_addr.sin_family       =AF_INET;                                                                                //设置为IP通信
#if 1 /* dingjiajia 2022.08.08 网络安全要求 [start] */
    char LocalIP[INET_ADDRSTRLEN] = {0};
    (void)getIp(LocalIP);
    remote_addr.sin_addr.s_addr  =inet_addr(LocalIP);
#else
    // remote_addr.sin_addr.s_addr  =inet_addr("127.0.0.1");                                                                 //服务器IP地址
#endif /* dingjiajia 2022.08.08 网络安全要求 [end] */
    remote_addr.sin_port         =htons(simulatorPort);                                                                            //服务器端口号

#if USE_UDP_OR_TCP                                                                                                        // udp
    /*创建客户端套接字--IPv4协议，面向无连接通信，UDP协议*/
    if((client_sockfd_simulator = socket(PF_INET,SOCK_DGRAM,0)) < 0)
    {
        perror("socket error");
        return false;
    }
    if((client_sockfd_component_manager = socket(PF_INET,SOCK_DGRAM,0)) < 0)
    {
        perror("socket error");
        return false;
    }

    remote_addr.sin_port         =htons(componentManagerPort);
    sendIdentity2ComponentManager();
    remote_addr.sin_port         =htons(simulatorPort);

#else                                                                                                                    // tcp
    /*创建客户端套接字--IPv4协议，面向连接通信，TCP协议*/
    if ((client_sockfd_simulator = socket(PF_INET, SOCK_STREAM, 0)) < 0)
    {
        perror("socket error");
        return false;
    }
    if ((client_sockfd_component_manager = socket(PF_INET, SOCK_STREAM, 0)) < 0)
    {
        perror("socket error");
        return false;
    }

    /*连接服务器*/
    if (connect(client_sockfd_simulator, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr)) < 0)
    {
        perror("Simulator connect error");
        return false;
    }
    remote_addr.sin_port         =htons(componentManagerPort);//服务器端口号
    if (connect(client_sockfd_component_manager, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr)) < 0)
    {
        perror("ComponentManager connect error");
        return false;
    }
#endif

#if 1 // simpro帧率控制数据传输架构图整改 zxz 2023.12.27 添加epoll机制
    // 创建 epoll 实例
    epoll_fd = epoll_create(2);
    if (epoll_fd < 0)
    {
        perror("epoll_create faild");
        return false;
    }

    // 添加 Simulator Socket 到 epoll 监视列表
    struct epoll_event ev_simulator = {0};
    ev_simulator.events = EPOLLIN; // 监听读事件
    ev_simulator.data.fd = client_sockfd_simulator;
    if (epoll_ctl(epoll_fd, EPOLL_CTL_ADD, client_sockfd_simulator, &ev_simulator) == -1)
    {
        perror("epoll_ctl: simulator");
        return false;
    }

    // 添加 ComponentManager Socket 到 epoll 监视列表
    struct epoll_event ev_component_manager = {0};
    ev_component_manager.events = EPOLLIN; // 监听读事件
    ev_component_manager.data.fd = client_sockfd_component_manager;
    if (epoll_ctl(epoll_fd, EPOLL_CTL_ADD, client_sockfd_component_manager, &ev_component_manager) == -1)
    {
        perror("epoll_ctl: component_manager");
        return false;
    }
#endif

    std::thread recv_thread(recvData);
    recv_thread.detach(); //TODO: join

    return true;
}
#else
bool MsgReceiver::initSocket(unsigned short int simulatorPort)
{
    //socket 初始化
    memset(&remote_addr,0,sizeof(remote_addr));                                                                           //数据初始化--清零
    remote_addr.sin_family       =AF_INET;                                                                                //设置为IP通信
    char LocalIP[INET_ADDRSTRLEN] = {0};
    (void)getIp(LocalIP);
    remote_addr.sin_addr.s_addr  =inet_addr(LocalIP);
    remote_addr.sin_port         =htons(simulatorPort);                                                                            //服务器端口号

#if USE_UDP_OR_TCP                                                                                                        // udp
    /*创建客户端套接字--IPv4协议，面向无连接通信，UDP协议*/
    if((client_sockfd_simulator = socket(PF_INET,SOCK_DGRAM,0)) < 0)
    {
        perror("socket error");
        return false;
    }
#else                                                                                                                    // tcp
    /*创建客户端套接字--IPv4协议，面向连接通信，TCP协议*/
    if ((client_sockfd_simulator = socket(PF_INET, SOCK_STREAM, 0)) < 0)
    {
        perror("socket error");
        return false;
    }

    /*连接服务器*/
    if (connect(client_sockfd_simulator, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr)) < 0)
    {
        perror("Simulator connect error");
        return false;
    }
#endif

    // 创建 epoll 实例
    epoll_fd = epoll_create(1);
    if (epoll_fd < 0)
    {
        perror("epoll_create faild");
        return false;
    }

    // 添加 Simulator Socket 到 epoll 监视列表
    struct epoll_event ev_simulator = {0};
    ev_simulator.events = EPOLLIN; // 监听读事件
    ev_simulator.data.fd = client_sockfd_simulator;
    if (epoll_ctl(epoll_fd, EPOLL_CTL_ADD, client_sockfd_simulator, &ev_simulator) == -1)
    {
        perror("epoll_ctl: simulator");
        return false;
    }

    std::thread recv_thread(recvData);
    recv_thread.detach(); //TODO: join

    return true;
}
#endif

void MsgReceiver::recvData()
{
    //int ret     = PARSE_SOCKET_SUCESS;
    int recvLen = 0;
    char recvBuf[RECV_BUF_SIZE] = {0};   //接收数据的缓冲区

    int CmrecvLen = 0;
    char CmrecvBuf[RECV_BUF_SIZE] = {0};   //接收数据的缓冲区


    while (true)
    {
#if 1 // simpro帧率控制数据传输架构图整改 zxz 2023.12.27 添加epoll机制
        struct epoll_event events[MAX_EVENTS] = {0};
        int nfds = epoll_wait(epoll_fd, events, MAX_EVENTS, -1);
        // printf("epoll_wait nfds = %d\n", nfds);
        if (nfds <= 0)
        {
            perror("epoll_wait");
            break;
        }
        else
        {
            for (int i = 0; i < nfds; ++i)
            {
#if USE_CM
                if (events[i].data.fd == client_sockfd_component_manager)
                {
                    printf("component_manager recv start\n");
                    /*接收服务端的数据 */
#if USE_UDP_OR_TCP
                    if((CmrecvLen = recvfrom(client_sockfd_component_manager, CmrecvBuf , RECV_BUF_SIZE , 0, (struct sockaddr *)&cm_remote_addr, &sin_size)) < 0)  //recvfrom()返回数据字节长度，若对方已经结束返回0,出错返回-1
                    {
                        perror("recvfrom error");
                        return;
                    }
#else
                    if ((CmrecvLen = recv(client_sockfd_component_manager, CmrecvBuf , RECV_BUF_SIZE , 0)) < 0)
                    {
                        perror("recv component_manager error");
                        return;
                    }
#endif
                    // //将接收到的数据添加到recvMsgBuf
                    // addRecvMsg(CmrecvBuf, CmrecvLen);
                }
                else if (events[i].data.fd == client_sockfd_simulator)
                {
                    printf("simulator recv start\n");
                    /*接收服务端的数据 */
#if USE_UDP_OR_TCP
                    if((recvLen = recvfrom(client_sockfd_simulator, recvBuf , RECV_BUF_SIZE , 0, (struct sockaddr *)&remote_addr, &sin_size)) < 0)  //recvfrom()返回数据字节长度，若对方已经结束返回0,出错返回-1
                    {
                        perror("recvfrom error");
                        return;
                    }
#else
                    if ((recvLen = recv(client_sockfd_simulator, recvBuf , RECV_BUF_SIZE , 0)) < 0)
                    {
                        perror("recv simulator error");
                        return;
                    }
#endif
                    //将接收到的数据添加到recvMsgBuf
                    addRecvMsg(recvBuf, recvLen);
                }
#else
                if (events[i].data.fd == client_sockfd_simulator)
                {
                    printf("simulator recv start\n");
                    /*接收服务端的数据 */
#if USE_UDP_OR_TCP
                    if((recvLen = recvfrom(client_sockfd_simulator, recvBuf , RECV_BUF_SIZE , 0, (struct sockaddr *)&remote_addr, &sin_size)) < 0)  //recvfrom()返回数据字节长度，若对方已经结束返回0,出错返回-1
                    {
                        perror("recvfrom error");
                        return;
                    }
#else
                    if ((recvLen = recv(client_sockfd_simulator, recvBuf , RECV_BUF_SIZE , 0)) < 0)
                    {
                        perror("recv simulator error");
                        return;
                    }
#endif
                    //将接收到的数据添加到recvMsgBuf
                    addRecvMsg(recvBuf, recvLen);
                }
#endif
            }
        }
#else
#if USE_UDP_OR_TCP                                                                                                            // udp
        /*接收服务端的数据--recvfrom是无连接的,第5个参数可以获得数据发送者的地址*/
        if((recvLen = recvfrom(client_sockfd_component_manager, recvBuf , RECV_BUF_SIZE , 0, (struct sockaddr *)&remote_addr, &sin_size)) < 0)  //recvfrom()返回数据字节长度，若对方已经结束返回0,出错返回-1
        {
            perror("recvfrom error");
            return;
        }
#else                                                                                                                         // tcp
        /*接收服务端的数据 */
        if ((recvLen = recv(client_sockfd_component_manager, recvBuf , RECV_BUF_SIZE , 0)) < 0)
        {
            perror("recv error");
            return;
        }

        /*接收服务端的数据 */
        if ((recvLen2 = recv(client_sockfd_simulator, recvBuf2 , RECV_BUF_SIZE , 0)) < 0)
        {
            perror("recv2 error");
            return;
        }
#endif

#if 0 // 通信模块封装(调试) Sue 2023.04.23
        //printf("server: %s\n", recvBuf);
        if (parseMsgFunc != nullptr)
        {
            //解析消息
            parseMsgFunc(recvBuf, recvLen);
        }
#else
        //将接收到的数据添加到recvMsgBuf
        addRecvMsg(recvBuf, recvLen);
#endif
#endif
    }
}

//发送消息
bool MsgReceiver::sendMsg(char *buffer, unsigned long int size)
{
    if (buffer == nullptr)
    {
        return false;
    }

    int sendLen = 0;

#if USE_UDP_OR_TCP                                                                                                                                // udp
    /*向服务器发送数据包*/
    if ((sendLen = sendto(client_sockfd_simulator, buffer, size, 0, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr))) < 0) //返回发送的数据长度，出错返回-1
    {
        perror("send error!");
        return false;
    }
    // std::cout << "sendLen = " <<  sendLen <<  std::endl;
#else                                                                                                                                             // tcp
    /*向服务器发送数据包*/
    if ((sendLen = send(client_sockfd_simulator, buffer, size, 0)) < 0)                                                             //返回发送的数据长度，出错返回-1
    {
        perror("send error!");
        return false;
    }
#endif

    return true;
}

//注册解析消息的回调函数
void MsgReceiver::setCallback(void(*_parseMsgFunc)(char *msgBuff, unsigned long int size))
{
    parseMsgFunc = _parseMsgFunc;
}

/**
 * @brief                       将接收到的数据添加到recvMsgBuf
 *                              如果recvMsgBuf包含完整的一帧数据，就解析这一帧数据，并将其移除数据缓冲区
 *                              属于接收线程
 * @param msgBuff               buffer指针
 * @param msgSize               buffer size
 */
void MsgReceiver::addRecvMsg(char *msgBuff, int msgSize)
{
    if ((msgBuff != NULL) && (msgSize > 0))
    {
        //if (D_DEBUG_LOG) std::cout << "MsgTransfer::addRecvMsg 2" << std::endl;

        int recvMsgBufFreeSize = RECV_BUF_SIZE - recvMsgBufUsedSize; //recvMsgBuf剩余大小

        if (recvMsgBufFreeSize >= msgSize) //如果该client的MsgBuffer剩余大小 足够多
        {
            //if (D_DEBUG_LOG) std::cout << "MsgTransfer::addRecvMsg 4" << std::endl;

            //将新消息 追加到 recvMsgBuf 末尾
            memcpy(recvMsgBuf + recvMsgBufUsedSize, msgBuff, msgSize);
            recvMsgBufUsedSize += msgSize; //该client的MsgBuffer已使用大小

            bool isComplete = false; //是否包含完整的一帧数据
            int firstMsgSize = 0; //第一帧数据的大小

            //检查 该client的MsgBuffer 是否包含完整的一帧数据
            checkMsgComplete(recvMsgBuf, recvMsgBufUsedSize, isComplete, firstMsgSize);

            //如果包含完整的一帧数据
            while (isComplete)
            {
//                if (D_DEBUG_LOG)
//                {
//                    std::cout << "MsgTransfer::addRecvMsg 5 isComplete=" << isComplete
//                              << " firstMsgSize=" << firstMsgSize
//                              << " recvMsgBufUsedSize=" << recvMsgBufUsedSize
//                              << std::endl;
//                }

#if 0 // 通信模块封装(调试) Sue 2023.04.23
                /**
                 * 将数据包, 存入消息队列
                 */
                saveMsg(recvMsgBuf, static_cast<unsigned int>(firstMsgSize));
#else
                //解析消息
                if (parseMsgFunc != nullptr)
                {
                    parseMsgFunc(recvMsgBuf, firstMsgSize);
                }
#endif

                //将第一帧数据移除数据缓冲区
                if (recvMsgBufUsedSize == firstMsgSize) //如果碰巧，recvMsgBuf里的数据不多不少正好一帧
                {
//                    if (D_DEBUG_LOG)
//                    {
//                        std::cout << "MsgTransfer::addRecvMsg 6 isComplete=" << isComplete
//                                  << " firstMsgSize=" << firstMsgSize
//                                  << " recvMsgBufUsedSize=" << recvMsgBufUsedSize
//                                  << std::endl;
//                    }

                    //只要将clientMsgBufUsedSize重置为0
                    recvMsgBufUsedSize = 0; //该client的MsgBuffer已使用大小
                }
                else if (recvMsgBufUsedSize > firstMsgSize) //如果 recvMsgBuf里的数据 大于 一帧的数据量
                {
                    //借助交换空间，将第一帧数据移除数据缓冲区
                    char *remainMsgBuf = recvMsgBuf + firstMsgSize; //recvMsgBuf里剩余的数据
                    int remainMsgSize = recvMsgBufUsedSize - firstMsgSize; //recvMsgBuf里剩余的数据

//                    if (D_DEBUG_LOG)
//                    {
//                        std::cout << "MsgTransfer::addRecvMsg 7 isComplete=" << isComplete
//                                  << " firstMsgSize=" << firstMsgSize
//                                  << " recvMsgBufUsedSize=" << recvMsgBufUsedSize
//                                  << " remainMsgSize=" << remainMsgSize
//                                  << std::endl;
//                    }

                    //将第一帧数据移除数据缓冲区
                    //remainMsgSize一定小于swapBuf的空间(RECV_BUF_SIZE)
                    memcpy(swapBuf, remainMsgBuf, remainMsgSize);
                    memcpy(recvMsgBuf, swapBuf, remainMsgSize);
                    recvMsgBufUsedSize = remainMsgSize; //recvMsgBuf已使用大小
                }
                else //如果 recvMsgBuf 小于 一帧的数据量
                {
                    //不应该出现，说明checkMsgComplete()工作不正常
                    //if (D_DEBUG_LOG) std::cout << "MsgTransfer::addRecvMsg Error: recvMsgBufUsedSize < firstMsgSize)" << std::endl;
                }

                //再次检查 recvMsgBuf 是否包含完整的一帧数据
                checkMsgComplete(recvMsgBuf, recvMsgBufUsedSize, isComplete, firstMsgSize);
            }
        }
        else //如果recvMsgBuf剩余大小 不足
        {
            //严重错误，丢弃掉新的消息
//            if (D_DEBUG_LOG)
//            {
//                std::cout << "MsgTransfer::addRecvMsg Error: recvMsgBufFreeSize not enough. recvMsgBufFreeSize=" << recvMsgBufFreeSize
//                          << " msgSize==" << msgSize
//                          << std::endl;
//            }
        }
    }
}

/**
 * @brief                   检查buffer中是否包含完整的一帧数据
 *                          属于接收线程
 * @param buffer            buffer指针
 * @param bufferSize        buffer Size
 * @param isComplete        返回值：是否包含完整的一帧数据
 * @param msgSize           返回值：当buffer中包含完整的一帧数据的头部时（此时不一定包含完整的一帧数据），返回第一帧数据的大小
 */
void MsgReceiver::checkMsgComplete(char *buffer, int bufferSize, bool &isComplete, int &msgSize)
{
    //if (D_DEBUG_LOG) std::cout << "MsgTransfer::checkMsgComplete start bufferSize=" << bufferSize << std::endl;

    isComplete = false; //返回值：是否包含完整的一帧数据
    msgSize = 0; //返回值：当buffer中包含完整的一帧数据的头部时，返回第一帧数据的大小

    if ((buffer != nullptr) && (bufferSize > 0))
    {
        if (static_cast<unsigned int>(bufferSize) >= sizeof(S_SP_MSG_HDR)) //说明包含了完整的MsgHeader
        {
            S_SP_MSG_HDR *msgHeader = (S_SP_MSG_HDR *)buffer; //msg 头部指针

            uint64_t msgLargeSize = msgHeader->u4HeaderSize + msgHeader->u4DataSize; // 返回值：msg总大小

            if ( static_cast<uint64_t>(bufferSize) >= msgLargeSize)  //说明包含了完整的Msg
            {
                msgSize = static_cast<int>(msgLargeSize);
                isComplete = true; //返回值：是否包含完整的一帧数据
            }
        }
    }
}

//在UDP模式下给CM模块发送数据告知身份
void MsgReceiver::sendIdentity2ComponentManager()
{
    char sendBuf[RECV_BUF_SIZE] = {0};
    int usedSize = 0;

    //生成Msg头部
    S_SP_MSG_HDR *msgHead = (S_SP_MSG_HDR *)sendBuf;

    //填充Msg头部
    msgHead->u8SimTime = 0.0;
    msgHead->u4HeaderSize = sizeof(S_SP_MSG_HDR);
    msgHead->u4FrameNo = 0;
    msgHead->u1Sender = D_SP_SENDER_ADS;
    usedSize += sizeof(S_SP_MSG_HDR);

    //生成D_SP_PKG_ID_START_FRAME
    S_SP_MSG_ENTRY_HDR *pkgHead = (S_SP_MSG_ENTRY_HDR *)(sendBuf + usedSize);

    //填充PKG头部
    pkgHead->u4HeaderSize = sizeof(S_SP_MSG_ENTRY_HDR);
    pkgHead->u4DataSize = 0;
    pkgHead->u4ElementSize = 0;
    pkgHead->u2PkgId = D_SP_PKG_ID_START_FRAME;

    usedSize += pkgHead->u4HeaderSize + pkgHead->u4DataSize;

    //生成D_SP_PKG_ID_END_FRAME
    S_SP_MSG_ENTRY_HDR* pkgEnd = (S_SP_MSG_ENTRY_HDR *)(sendBuf + usedSize);

    //填充PKG头部
    pkgEnd->u4HeaderSize = sizeof(S_SP_MSG_ENTRY_HDR);
    pkgEnd->u4DataSize = 0;
    pkgEnd->u4ElementSize = 0;
    pkgEnd->u2PkgId = D_SP_PKG_ID_END_FRAME;

    usedSize += pkgEnd->u4HeaderSize + pkgEnd->u4DataSize;

    msgHead->u4DataSize = usedSize - msgHead->u4HeaderSize;

    int sendLen = sendto(client_sockfd_component_manager, sendBuf, usedSize, 0, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr));
    if (sendLen < 0)
    {
        perror("send error!");
    }
}
