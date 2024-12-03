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

#include <netinet/in.h>
#include <netdb.h>
#include <sys/types.h>
#include <ifaddrs.h>
#include <stdlib.h>

MsgReceiver::MsgReceiver()
{
    //memset(recvBuf, 0, RECV_BUF_SIZE);  //接收数据的缓冲区
}


bool MsgReceiver::initSocket(unsigned short int simulatorPort)
{
    //socket 初始化
    memset(&remote_addr,0,sizeof(remote_addr));                                                                           //数据初始化--清零
    remote_addr.sin_family       =AF_INET;                                                                                //设置为IP通信
    remote_addr.sin_addr.s_addr  =inet_addr("127.0.0.1");                                                                 // IPv4 address
    remote_addr.sin_port         =htons(simulatorPort);                                                                   //服务器端口号

                                                                                                    // udp
    /*创建客户端套接字--IPv4协议，面向无连接通信，UDP协议*/
    if((client_sockfd_simulator = socket(PF_INET,SOCK_DGRAM,0)) < 0)
    {
        perror("socket error");
        return false;
    }

    // 创建 epoll 实例，用于监视特定的套接字，以便异步的处理网络事件
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

    //使用epoll_ctl函数将client_sockfd_simulator套接字添加到epoll的监视列表中。如果操作失败，打印错误信息并返回false
    if (epoll_ctl(epoll_fd, EPOLL_CTL_ADD, client_sockfd_simulator, &ev_simulator) == -1)
    {
        perror("epoll_ctl: simulator");
        return false;
    }

    // 创建一个新线程recv_thread，调用recvData函数来处理接收数据的任务
    // detach方法将线程分离，使其在后台独立运行
    std::thread recv_thread(recvData);
    recv_thread.detach(); //TODO: join

    return true;
}


void MsgReceiver::recvData()
{
    //int ret     = PARSE_SOCKET_SUCESS;
    int recvLen = 0;
    char recvBuf[RECV_BUF_SIZE] = {0};   //接收数据的缓冲区

    int CmrecvLen = 0;
    char CmrecvBuf[RECV_BUF_SIZE] = {0};   //接收数据的缓冲区

    while (true)
    {
        // simpro帧率控制数据传输架构图整改 zxz 2023.12.27 添加epoll机制
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
                if (events[i].data.fd == client_sockfd_simulator)
                {
                    printf("simulator recv start\n");
                    /*接收服务端的数据 */
                    if((recvLen = recvfrom(client_sockfd_simulator, recvBuf , RECV_BUF_SIZE , 0, (struct sockaddr *)&remote_addr, &sin_size)) < 0)  //recvfrom()返回数据字节长度，若对方已经结束返回0,出错返回-1
                    {
                        perror("recvfrom error");
                        return;
                    }

                    //将接收到的数据添加到recvMsgBuf
                    addRecvMsg(recvBuf, recvLen);
                }

            }
        }

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
                                                                                                                            // udp
    /*向服务器发送数据包*/
    if ((sendLen = sendto(client_sockfd_simulator, buffer, size, 0, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr))) < 0) //返回发送的数据长度，出错返回-1
    {
        perror("send error!");
        return false;
    }
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
 * @param msgBuff               buffer指针  ,同上述 recvBuf 数据
 * @param msgSize               buffer size ，同上述 recvLen  大小
 */
void MsgReceiver::addRecvMsg(char *msgBuff, int msgSize)
{
    if ((msgBuff != NULL) && (msgSize > 0))
    {
        int recvMsgBufFreeSize = RECV_BUF_SIZE - recvMsgBufUsedSize; //recvMsgBuf剩余大小
        if (recvMsgBufFreeSize >= msgSize) //如果该client的MsgBuffer剩余大小 足够多
        {
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
                //解析消息
                if (parseMsgFunc != nullptr)
                {
                    parseMsgFunc(recvMsgBuf, firstMsgSize);
                }

                //将第一帧数据移除数据缓冲区
                if (recvMsgBufUsedSize == firstMsgSize) //如果碰巧，recvMsgBuf里的数据不多不少正好一帧
                {
                    //只要将clientMsgBufUsedSize重置为0
                    recvMsgBufUsedSize = 0; //该client的MsgBuffer已使用大小
                }
                else if (recvMsgBufUsedSize > firstMsgSize) //如果 recvMsgBuf里的数据 大于 一帧的数据量
                {
                    //借助交换空间，将第一帧数据移除数据缓冲区
                    char *remainMsgBuf = recvMsgBuf + firstMsgSize; //recvMsgBuf里剩余的数据
                    int remainMsgSize = recvMsgBufUsedSize - firstMsgSize; //recvMsgBuf里剩余的数据

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

    // 首先判断是否包含了完整的消息头，若包含头，再继续判断是否包含完整的消息，然后再改变标志位
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
