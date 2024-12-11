#include "RosSimproAD.h"

#include <sys/types.h>
#include <thread>
#include <netinet/in.h>
#include <netdb.h>
#include <sys/types.h>
#include <ifaddrs.h>
#include <stdlib.h>

using namespace std;    

namespace RosAdapter
{

    RosSimproAD::RosSimproAD()
        : nh_("RosAdapter_node")
    {
        std::cout << "RosSimproAD::RosSimproAD()" << std::endl;
        msgBufferAllocSize = 1024 * 40; // 对应的已申请空间
        msgBufferUsedSize = 0;          // 对应的已使用空间
        sin_size = sizeof(struct sockaddr_in);
        mTotalLen = 0;
        mCurrPkgLen = 0;
        mTempLen = 0;

        isInitial = true;
        bScenarioFinished = true;

        msgBuffer = (char *)malloc(msgBufferAllocSize); // 一帧数据的buffer
        if (!msgBuffer)                                 // 失败
        {
            std::cout << "Error: msgBuffer malloc fail" << std::endl;
            msgBufferAllocSize = 0;
        }

        std::string ADToSimproTriggerTopic;
        nh_.getParam("ADToSimproTriggerTopic", ADToSimproTriggerTopic); // 获取launch文件中字段为ADToSimproTriggerTopic的值（订阅trigger的topic）
        trigger_ = nh_.subscribe(ADToSimproTriggerTopic, 1000, &RosSimproAD::sendTriggerToSimpro, this);

        // wzs
        // sendTriggerToSimpro();
        
        cout << "connType=" << connType << endl;

        std::string SimproToADTopic;
        nh_.getParam("SimproToADTopic", SimproToADTopic); // 获取launch文件中字段为SimproToADTopic的值（发布rosSimproToAD类型数据的topic）
        SimproToAD_ = nh_.advertise<rosSimproToAD>(SimproToADTopic, 1000);

        recvMsgBufUsedSize = 0;

        std::cout << "RosSimproAD::RosSimproAD() end" << std::endl;
        // recvDataFromAD();
    }

    RosSimproAD::~RosSimproAD()
    {
        std::cout << "RosSimproAD::~RosSimproAD() start" << std::endl;
        if (msgBuffer != nullptr)
        {
            free(msgBuffer);
            msgBuffer = nullptr;
        }

        if (mCurrPBuffer != nullptr)
        {
            free(mCurrPBuffer);
            mCurrPBuffer = nullptr;
        }

        msgBufferUsedSize = 0;

        // 关闭所有的发布和订阅
        trigger_.shutdown();
        SimproToAD_.shutdown();
        driverCtrl_.shutdown();
        objState_.shutdown();

        std::cout << "RosSimproAD::~RosSimproAD() end" << std::endl;
    }

    void RosSimproAD::clearMessage()
    {
        message.laneInfos.clear();
        message.sensorStates.clear();
        message.sensorObjects.clear();
        message.contactPoints.clear();
        message.trafficSigns.clear();
        message.roadStates.clear();
        message.environments.clear();
        message.trafficLights.clear();
        message.roadQueries.clear();
        message.egoStates.clear();
        message.milObjStates.clear();
        message.milRoadMarks.clear();

        message.initParams.clear();
        message.milAmesimSignals.clear();
        message.activateControllers.clear();
        message.assignControllers.clear();
        message.overrideControllers.clear();
        message.customCommands.clear();
        message.driverCtrls.clear();
        message.parkingSpaces.clear();
        message.syncs.clear();
        message.imuDatas.clear();
        message.gnssGgaS.clear();
        message.uwbDatas.clear();
        message.modelOutlines.clear();
    }

    void RosSimproAD::getIp(char *p_ip)
    {
        struct ifaddrs *ifAddrStruct = NULL;
        struct ifaddrs *ifAddrStructHead = NULL;
        void *tmpAddrPtr = NULL;
        std::string ip;
        nh_.getParam("ip", ip);
        
        // char *target[] = ip;

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
                    if (0 != strcmp(ip.c_str(), addressBuffer))
                    {
                        memcpy(p_ip, addressBuffer, INET_ADDRSTRLEN);

                        freeifaddrs(ifAddrStructHead);
                        return;
                    }
                }
            }
            ifAddrStruct = ifAddrStruct->ifa_next;
        }
        memcpy(p_ip, ip.c_str(), strlen(ip.c_str()));
        freeifaddrs(ifAddrStructHead);
        return;
    }


    void RosSimproAD::sendTriggerToSimpro(const rosADToSimproTrigger::ConstPtr &triggerMsg)
    {
        std::cout << "RosSimproAD::sendTriggerToSimpro" << std::endl;

        int sendLen;

        // 将rosADToSimproTrigger数据转换成package结构类型数据
        generateHeadMsg(triggerMsg->head);
        generateTrigger();
        generateEndMsg();

        // 发送trigger数据给Simpro
        if (connType == 1)  // UDP connection
        {
            // 向服务器发送数据包
            if ((sendLen = sendto(client_sockfd, msgBuffer, msgBufferUsedSize, 0, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr))) < 0) // 返回发送的数据长度，出错返回-1
            {
                perror("send error!");
                return;
            }
        }

        if (connType == 0)  // TCP connection
        {
            std::cout << "tcp send trigger" << std::endl;
            // 向服务器发送数据包
            if ((sendLen = send(client_sockfd, msgBuffer, msgBufferUsedSize, 0)) < 0) // 返回发送的数据长度，出错返回-1
            {
                perror("send error!");
                return;
            }
        }
        std::cout << "send trigger end" << std::endl;

        // 触发Simpro运行后，可以接收Simpro发送的数据
        recvMessage();

        // 由于当前场景已经开始运行，因此结束当前场景的订阅
        //  trigger_.shutdown();

        std::cout << "RosSimproAD::sendTriggerToSimpro() end" << std::endl;
    }

    void RosSimproAD::connectSimpro()
    {
        std::string ip;
        int port;
        nh_.getParam("ip", ip);
        nh_.getParam("port", port);

        // ip = "172.21.0.111";
        // port = 8000;
        std::cout << "ip = " << ip << ", port = " << port << std::endl;
        memset(&remote_addr, 0, sizeof(remote_addr)); // 数据初始化--清零
        remote_addr.sin_family = AF_INET;             // 设置为IP通信
        char LocalIP[INET_ADDRSTRLEN] = {0};
        // (void)getIp(LocalIP);
        // std::cout << "LocalIP=" << LocalIP << std::endl;
        // remote_addr.sin_addr.s_addr = inet_addr(LocalIP);

        // remote_addr.sin_addr.s_addr = inet_addr(ip.c_str()); //服务器IP地址
        // remote_addr.sin_port = htons(port); // 服务器端口号

        remote_addr.sin_addr.s_addr = inet_addr(ip.c_str()); //服务器IP地址
        remote_addr.sin_port = htons(port); // 服务器端口号

        nh_.getParam("connType", connType); // 获取通信类型，UPD/TCP
        std::cout << "connType=" << connType << std::endl;

        if (connType == 1)
        {
            /*创建客户端套接字--IPv4协议，面向无连接通信，UDP协议*/
            if ((client_sockfd = socket(PF_INET, SOCK_DGRAM, 0)) < 0)
            {
                perror("socket error");
                return;
            }
            else
            {
                std::cout << "connect success" << std::endl;
            }
        }

        if (connType == 0)
        {
            /*创建客户端套接字--IPv4协议，面向连接通信，TCP协议*/
            if ((client_sockfd = socket(PF_INET, SOCK_STREAM, 0)) < 0)
            {
                perror("socket error");
                return;
            }

            /*连接服务器*/
            if (connect(client_sockfd, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr)) < 0)
            {
                perror("connect error");
                return;
            }
            else
            {
                std::cout << "connect success" << std::endl;
            }
        }
    }

    // 接收从Simpro发送过来的数据
    void RosSimproAD::recvMessage()
    {
        std::cout << "RosSimproAD::recvMessage() start" << std::endl;

        int ret = PARSE_SOCKET_SUCESS;
        int recvLen = 0;
        int AdCtrlEgo;
        nh_.getParam("AdCtrlEgo", AdCtrlEgo);
        if (AdCtrlEgo == 1)
        {
            recvDataFromAD();
        }

        while (true)
        {
            std::cout << "RosSimproAD::recvMessage() while(true)" << std::endl;

            if (connType == 1)
            {
                /*接收服务端的数据--recvfrom是无连接的,第5个参数可以获得数据发送者的地址*/
                if ((recvLen = recvfrom(client_sockfd, recvBuf, RECV_BUF_SIZE, 0, (struct sockaddr *)&remote_addr, &sin_size)) < 0) // recvfrom()返回数据字节长度，若对方已经结束返回0,出错返回-1
                {
                    perror("recvfrom error");
                    return;
                }
            }

            if (connType == 0)
            {
                /*接收服务端的数据 */
                if ((recvLen = recv(client_sockfd, recvBuf, RECV_BUF_SIZE, 0)) < 0)
                {
                    perror("recv error");
                    return;
                }
            }

            addRecvMsg(recvBuf, recvLen);
        }
        std::cout << "RosSimproAD::recvMessage() end" << std::endl;
    }

    /**
     * @brief                       将接收到的数据添加到recvMsgBuf
     *                              如果recvMsgBuf包含完整的一帧数据，就解析这一帧数据，并将其移除数据缓冲区
     *                              属于接收线程
     * @param msgBuff               buffer指针
     * @param msgSize               buffer size
     */
    void RosSimproAD::addRecvMsg(char *msgBuff, int msgSize)
    {
        if ((msgBuff != NULL) && (msgSize > 0))
        {
            //if (D_DEBUG_LOG) std::cout << "RosSimproAD::addRecvMsg 2" << std::endl;

            int recvMsgBufFreeSize = RECV_BUF_SIZE - recvMsgBufUsedSize; //recvMsgBuf剩余大小

            if (recvMsgBufFreeSize >= msgSize) //如果该client的MsgBuffer剩余大小 足够多
            {
                //if (D_DEBUG_LOG) std::cout << "RosSimproAD::addRecvMsg 4" << std::endl;

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
    //                    std::cout << "RosSimproAD::addRecvMsg 5 isComplete=" << isComplete
    //                              << " firstMsgSize=" << firstMsgSize
    //                              << " recvMsgBufUsedSize=" << recvMsgBufUsedSize
    //                              << std::endl;
    //                }

                    //解析消息

                    parsePackage(recvMsgBuf);

                    //将第一帧数据移除数据缓冲区
                    if (recvMsgBufUsedSize == firstMsgSize) //如果碰巧，recvMsgBuf里的数据不多不少正好一帧
                    {
    //                    if (D_DEBUG_LOG)
    //                    {
    //                        std::cout << "RosSimproAD::addRecvMsg 6 isComplete=" << isComplete
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
    //                        std::cout << "RosSimproAD::addRecvMsg 7 isComplete=" << isComplete
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
                        //if (D_DEBUG_LOG) std::cout << "RosSimproAD::addRecvMsg Error: recvMsgBufUsedSize < firstMsgSize)" << std::endl;
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
    //                std::cout << "RosSimproAD::addRecvMsg Error: recvMsgBufFreeSize not enough. recvMsgBufFreeSize=" << recvMsgBufFreeSize
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
    void RosSimproAD::checkMsgComplete(char *buffer, int bufferSize, bool &isComplete, int &msgSize)
    {
        //if (D_DEBUG_LOG) std::cout << "RosSimproAD::checkMsgComplete start bufferSize=" << bufferSize << std::endl;

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

    /**
     * 解析每一帧socket中粘包和拆包问题
     * 合成PKG数据包，当完全合成后调用parsePackage()解析PKG并发送数据
     */
    int RosSimproAD::parseSocket(int recvLen)
    {
        gettimeofday(&socketStart, NULL);
        std::cout << "RosSimproAD::parseSocket start" << std::endl;

        int ret = PARSE_SOCKET_SUCESS;
        char *pbuffer = recvBuf;

        
        if (recvLen == 0) // TBD：test
        {
            return PARSE_SOCKET_NODATA;
        }
        else if (recvLen > sizeof(S_SP_MSG_HDR)) // 如果接收长度大于 Msg Head
        {
            // TBD：test
            if (mCurrPkgLen == 0)
            {
                const S_SP_MSG_HDR *const msgHead = reinterpret_cast<const S_SP_MSG_HDR *>((pbuffer)); // Msg的头部指针
                mTotalLen = msgHead->u4HeaderSize + msgHead->u4DataSize;
                mCurrPBuffer = (char *)malloc(mTotalLen);
                if (mCurrPBuffer == nullptr)
                {
                    return PARSE_SOCKET_ERROR;
                }
                else
                {
                    memset(mCurrPBuffer, 0, mTotalLen);
                }
            }
        }
        else
        {
            // if (mCurrPkgLen > 0)   mCurrPBuffer 已有数据，不需要处理，下面会进行拼接，
            if (mCurrPkgLen == 0) // mCurrPBuffer 没有数据，此时mCurrPBuffer还没有分配空间，需要借助临时空间存储接收数据
            {
                memcpy(mTempBuff + mTempLen, pbuffer, recvLen);
                mTempLen += recvLen;

                if (mTempLen >= sizeof(S_SP_MSG_HDR)) // 接收到完整 S_SP_MSG_HDR数据，分配 mCurrPBuffer空间
                {
                    const S_SP_MSG_HDR *const msgHead = reinterpret_cast<const S_SP_MSG_HDR *>((mTempBuff));
                    mTotalLen = msgHead->u4HeaderSize + msgHead->u4DataSize;
                    mCurrPBuffer = (char *)malloc(mTotalLen);
                    if (mCurrPBuffer == nullptr)
                    {
                        return PARSE_SOCKET_ERROR;
                    }
                    else
                    {
                        memset(mCurrPBuffer, 0, mTotalLen);
                    }
                    memcpy(mCurrPBuffer, mTempBuff, mTempLen);
                    memset(mTempBuff, 0, mTempLen);
                    mCurrPkgLen = mTempLen;
                    mTempLen = 0;
                }
                else // mCurrPBuffer 没有数据，mTempLen 也小于 sizeof(S_SP_MSG_HDR) ，不做处理
                {
                    return PARSE_SOCKET_CURBUFFER_NODATA;
                }
            }
        }

        if (mCurrPkgLen + recvLen < mTotalLen) // 缓存已有数据长度 + 本次接收数据长度 < 包数据长度，把接收数据接到缓存后面，不发送数据
        {
            memcpy(mCurrPBuffer + mCurrPkgLen, pbuffer, recvLen);

            mCurrPkgLen += recvLen;
            mIsMerge = true;
        }
        else if (mCurrPkgLen + recvLen == mTotalLen) // 缓存已有数据长度 + 本次接收数据长度 = 包数据长度，把接收数据接到缓存后面，发送数据
        {
            memcpy(mCurrPBuffer + mCurrPkgLen, pbuffer, recvLen);

            // 拼接好数据包的后续处理
            ret = parsePackage(mCurrPBuffer);
            if (ret != PARSE_PACKAGE_SUCESS)
            {
                return PARSE_SOCKET_ERROR;
            }

            mCurrPkgLen = 0;
            mTotalLen = 0;
            mIsMerge = false;
            if (mCurrPBuffer != nullptr)
            {
                free(mCurrPBuffer);
                mCurrPBuffer = nullptr;
            }
        }
        else // 缓存已有数据长度 + 本次接收数据长度 > 包数据长度
        {
            int recLeaveLen = recvLen;
            while (1)
            {
                // 首先拼完一个数据包先发送
                if (recLeaveLen > mTotalLen && mIsMerge == false)
                {
                    memcpy(mCurrPBuffer, pbuffer + mCurrPkgLen, mTotalLen);
                }
                else
                {
                    memcpy(mCurrPBuffer + mCurrPkgLen, pbuffer, mTotalLen - mCurrPkgLen);
                }


                // 拼接好数据包的后续处理
                ret = parsePackage(mCurrPBuffer);
                if (ret != PARSE_PACKAGE_SUCESS)
                {
                    return PARSE_SOCKET_ERROR;
                }


                if (mCurrPBuffer != nullptr)
                {
                    free(mCurrPBuffer);
                    mCurrPBuffer = nullptr;
                }
                mIsMerge = false;


                // 接下来计算 本次接收数据剩下部分大小
                if (recLeaveLen > mTotalLen)
                {
                    recLeaveLen = recLeaveLen - mTotalLen;
                    mCurrPkgLen += mTotalLen;
                }
                else
                {
                    recLeaveLen = recLeaveLen - (mTotalLen - mCurrPkgLen);
                    mCurrPkgLen = 0; // 为再次进入此循环准备，说明 recLeaveLen > totalLen， currPBuffer 还是空，所以 currPkgLen = 0
                }


                const S_SP_MSG_HDR *const msgHead = reinterpret_cast<const S_SP_MSG_HDR *>((pbuffer + (recvLen - recLeaveLen)));
                mTotalLen = msgHead->u4HeaderSize + msgHead->u4DataSize;
                mCurrPBuffer = (char *)malloc(mTotalLen);
                if (mCurrPBuffer == nullptr)
                {
                    return PARSE_SOCKET_ERROR;
                }
                else
                {
                    memset(mCurrPBuffer, 0, mTotalLen);
                }

               
                if (recLeaveLen < mTotalLen)
                {
                    // currPBuffer指向 本次接收数据剩下部分
                    memcpy(mCurrPBuffer, pbuffer + (recvLen - recLeaveLen), recLeaveLen);
                    mCurrPkgLen = recLeaveLen;
                    break;
                }
                else if (recLeaveLen == mTotalLen) // 本次接收数据剩下部分 正好是一个包大小，发送数据 ， 解析部分每次只解析一个包
                {
                    memcpy(mCurrPBuffer, pbuffer + (recvLen - recLeaveLen), recLeaveLen);

                    // 拼接好数据包的后续处理
                    ret = parsePackage(mCurrPBuffer);
                    if (ret != PARSE_PACKAGE_SUCESS)
                    {
                        return PARSE_SOCKET_ERROR;
                    }


                    if (mCurrPBuffer != nullptr)
                    {
                        free(mCurrPBuffer);
                        mCurrPBuffer = nullptr;
                    }
                    mCurrPkgLen = 0;
                    mTotalLen = 0;

                    break;
                }
            }
        }


        return PARSE_SOCKET_SUCESS;
    }

    int RosSimproAD::parsePackage(char *pkgBuff)
    {
        std::cout << "RosSimproAD::parsePackage start" << std::endl;

        if (nullptr == pkgBuff)
        {
            return PARSE_PACKAGE_ERROR;
        }

        // 解析数据
        S_SP_MSG_HDR *msgHead = (S_SP_MSG_HDR *)pkgBuff; // Msg的头部指针

        // 打包到rosSimproToAD中
        message.head.u8SimTime = msgHead->u8SimTime;
        message.head.u4HeaderSize = msgHead->u4HeaderSize;
        message.head.u4DataSize = msgHead->u4DataSize;
        message.head.u4FrameNo = msgHead->u4FrameNo;

        char *currentPkg = pkgBuff + msgHead->u4HeaderSize; // 当前Pkg的头部指针

        // 第一帧为ASIM_PKG_ID_START_OF_FRAME
        S_SP_MSG_ENTRY_HDR *startPkgHead = (S_SP_MSG_ENTRY_HDR *)currentPkg;
        if (startPkgHead->u2PkgId != D_SP_PKG_ID_START_FRAME)
        {
            return PARSE_PACKAGE_ERROR;
        }

        currentPkg += startPkgHead->u4HeaderSize + startPkgHead->u4DataSize; // 指向下一个pkg

        while (1)
        {
            S_SP_MSG_ENTRY_HDR *pkgHead = (S_SP_MSG_ENTRY_HDR *)currentPkg; // Pkg的头部指针

            if (pkgHead->u2PkgId == D_SP_PKG_ID_LANE_INFO)
            {
                printf("receive ASIM_PKG_ID_ROAD_POS\n");
                S_SP_LANE_INFO *pkgData = (S_SP_LANE_INFO *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mLaneInfo, pkgData, sizeof(S_SP_LANE_INFO));
                    packToRos(D_SP_PKG_ID_LANE_INFO);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_CONTACT_POINT)
            {
                S_SP_CONTACT_POINT *pkgData = (S_SP_CONTACT_POINT *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mContactPoint, pkgData, sizeof(S_SP_CONTACT_POINT));
                    packToRos(D_SP_PKG_ID_CONTACT_POINT);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_ROAD_QUERY)
            {
                S_SP_ROAD_QUERY *pkgData = (S_SP_ROAD_QUERY *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mRoadQuery, pkgData, sizeof(S_SP_ROAD_QUERY));
                    packToRos(D_SP_PKG_ID_ROAD_QUERY);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_SENSOR_INFO)
            {
                S_SP_SENSOR_INFO *pkgData = (S_SP_SENSOR_INFO *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mSensorInfo, pkgData, sizeof(S_SP_SENSOR_INFO));
                    packToRos(D_SP_PKG_ID_SENSOR_INFO);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_SENSOR_DETECTION_INFO)
            {
                S_SP_SENSOR_DETECTION_INFO *pkgData = (S_SP_SENSOR_DETECTION_INFO *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mSensorDetectionInfo, pkgData, sizeof(S_SP_SENSOR_DETECTION_INFO));
                    packToRos(D_SP_PKG_ID_SENSOR_DETECTION_INFO);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_TRAFFIC_SIGN)
            {
                S_SP_TRAFFIC_SIGN *pkgData = (S_SP_TRAFFIC_SIGN *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mTrafficSign, pkgData, sizeof(S_SP_TRAFFIC_SIGN));
                    packToRos(D_SP_PKG_ID_TRAFFIC_SIGN);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_INIT_PARAM)
            {
                S_SP_INIT_PARAM *pkgData = (S_SP_INIT_PARAM *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mInitParam, pkgData, sizeof(S_SP_INIT_PARAM));
                    packToRos(D_SP_PKG_ID_INIT_PARAM);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_ENVIRONMENT)
            {
                S_SP_ENVIRONMENT *pkgData = (S_SP_ENVIRONMENT *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mEnvironment, pkgData, sizeof(S_SP_ENVIRONMENT));
                    packToRos(D_SP_PKG_ID_ENVIRONMENT);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_TRAFFIC_LIGHT)
            {
                char *pkgData = (char *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mTrafficLight, pkgData, sizeof(S_SP_TRAFFIC_LIGHT));
                    packToRos(D_SP_PKG_ID_TRAFFIC_LIGHT, pkgData);
                    pkgData += sizeof(S_SP_TRAFFIC_LIGHT) + mTrafficLight.u4NoPhases * sizeof(S_SP_TRAFFIC_LIGHT_PHASE);
                }
            }
            else if (pkgHead->u2PkgId == D_SP_MIL_PKG_ID_EGO_DATA)
            {
                S_SP_MIL_EGO_STATE *pkgData = (S_SP_MIL_EGO_STATE *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mEgoState, pkgData, sizeof(S_SP_MIL_EGO_STATE));
                    packToRos(D_SP_MIL_PKG_ID_EGO_DATA);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_MIL_PKG_ID_OBJECT_DATA)
            {
                S_SP_MIL_OBJECT_STATE *pkgData = (S_SP_MIL_OBJECT_STATE *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mMilObjState, pkgData, sizeof(S_SP_MIL_OBJECT_STATE));
                    packToRos(D_SP_MIL_PKG_ID_OBJECT_DATA);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_MIL_PKG_ID_ROADMARK)
            {
                S_SP_MIL_ROADMARK *pkgData = (S_SP_MIL_ROADMARK *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mMilRoadMark, pkgData, sizeof(S_SP_MIL_ROADMARK));
                    packToRos(D_SP_MIL_PKG_ID_ROADMARK);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_MIL_PKG_ID_AMESIM)
            {
                S_SP_MIL_AMESIM_SIGNAL *pkgData = (S_SP_MIL_AMESIM_SIGNAL *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mMilAmesimSignal, pkgData, sizeof(S_SP_MIL_AMESIM_SIGNAL));
                    packToRos(D_SP_MIL_PKG_ID_AMESIM);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_ACTIVATE_CONTROLLER)
            {
                S_SP_ACTIVATE_CONTROLLER *pkgData = (S_SP_ACTIVATE_CONTROLLER *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mActivateController, pkgData, sizeof(S_SP_ACTIVATE_CONTROLLER));
                    packToRos(D_SP_PKG_ID_ACTIVATE_CONTROLLER);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_ASSIGN_CONTROLLER)
            {
                // S_SP_ASSIGN_CONTROLLER *pkgData = (S_SP_ASSIGN_CONTROLLER *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针
                char *pkgData = currentPkg + pkgHead->u4HeaderSize; // 数据部分指针
                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mAssignController, pkgData, sizeof(S_SP_ASSIGN_CONTROLLER));
                    packToRos(D_SP_PKG_ID_ASSIGN_CONTROLLER, pkgData);
                    pkgData += sizeof(S_SP_ASSIGN_CONTROLLER) + sizeof(S_SP_ASSIGN_CONTROLLER_PROPERTY) * mAssignController.u4PropertyNum;
                    //pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_OVERRIDE_CONTROLLER)
            {
                S_SP_OVERRIDE_CONTROLLER *pkgData = (S_SP_OVERRIDE_CONTROLLER *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mOverrideController, pkgData, sizeof(S_SP_OVERRIDE_CONTROLLER));
                    packToRos(D_SP_PKG_ID_OVERRIDE_CONTROLLER);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_CUSTOM_COMMAND)
            {
                S_SP_CUSTOM_COMMAND *pkgData = (S_SP_CUSTOM_COMMAND *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mCustomCommand, pkgData, sizeof(S_SP_CUSTOM_COMMAND));
                    packToRos(D_SP_PKG_ID_CUSTOM_COMMAND);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_DRIVER_CTRL)
            {
                S_SP_DRIVER_CTRL *pkgData = (S_SP_DRIVER_CTRL *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mDriverCtrl, pkgData, sizeof(S_SP_DRIVER_CTRL));
                    packToRos(D_SP_PKG_ID_DRIVER_CTRL);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_PARKINGSPACE)
            {
                S_SP_PARKINGSPACE *pkgData = (S_SP_PARKINGSPACE *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mParkingSpace, pkgData, sizeof(S_SP_PARKINGSPACE));
                    packToRos(D_SP_PKG_ID_PARKINGSPACE);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_ROAD_STATE)
            {
                S_SP_ROAD_STATE *pkgData = (S_SP_ROAD_STATE *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mRoadState, pkgData, sizeof(S_SP_ROAD_STATE));
                    packToRos(D_SP_PKG_ID_ROAD_STATE);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_IMU_DATA)
            {
                S_SP_IMU_DATA *pkgData = (S_SP_IMU_DATA *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mImuData, pkgData, sizeof(S_SP_IMU_DATA));
                    packToRos(D_SP_PKG_ID_IMU_DATA);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_UWB_DATA)
            {
                S_SP_UWB_DATA *pkgData = (S_SP_UWB_DATA *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mUwbData, pkgData, sizeof(S_SP_UWB_DATA));
                    packToRos(D_SP_PKG_ID_UWB_DATA);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_GNSS_DATA)
            {
                S_SP_GNSS_GGA *pkgData = (S_SP_GNSS_GGA *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mGnssGga, pkgData, sizeof(S_SP_GNSS_GGA));
                    packToRos(D_SP_PKG_ID_GNSS_DATA);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_MODEL_OUTLINE)
            {
                S_SP_MODEL_OUTLINE *pkgData = (S_SP_MODEL_OUTLINE *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mModelOutline, pkgData, sizeof(S_SP_MODEL_OUTLINE));
                    packToRos(D_SP_PKG_ID_MODEL_OUTLINE);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_RSU_VNFP_INFO)
            {
                S_SP_RSU_VNFP_INFO *pkgData = (S_SP_RSU_VNFP_INFO *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mRsuVnfpInfo, pkgData, sizeof(S_SP_RSU_VNFP_INFO));
                    packToRos(D_SP_PKG_ID_RSU_VNFP_INFO);
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_SYNC)
            {
                S_SP_SYNC *pkgData = (S_SP_SYNC *)(currentPkg + pkgHead->u4HeaderSize); // 数据部分指针

                // 1.解析数据
                int elementNum = pkgHead->u4DataSize / pkgHead->u4ElementSize; // 元素数量
                for (int i = 0; i < elementNum; i++)                           // 解析每个元素
                {
                    memcpy(&mSync, pkgData, sizeof(S_SP_SYNC));
                    packToRos(D_SP_PKG_ID_SYNC);
                    std::cout << "pkgData->cmdMask " << pkgData->u4CmdMask << std::endl;

                    if (pkgData->u4CmdMask & 0x01)
                    {
                        std::cout << "next scenario trigger start" << std::endl;
                        // recvDataFromAD();
                        std::string ADToSimproTriggerTopic;
                        nh_.getParam("ADToSimproTriggerTopic", ADToSimproTriggerTopic); // 获取launch文件中字段为ADToSimproTriggerTopic的值（订阅trigger的topic）
                        
                        // wzs
                        trigger_ = nh_.subscribe(ADToSimproTriggerTopic, 1000, &RosSimproAD::sendTriggerToSimpro, this);
                        // sendTriggerToSimpro();
                    }
                    pkgData += 1;
                }
            }
            else if (pkgHead->u2PkgId == D_SP_PKG_ID_END_FRAME) // 如果是最后一个Pkg
            {
                std::cout << "parsePackage   while(1)   start publish" << std::dec << __LINE__ << std::endl;

                SimproToAD_.publish(message);
                
                clearMessage();
                break;
            }
            currentPkg += pkgHead->u4HeaderSize + pkgHead->u4DataSize; // 指向下一个pkg
        }
        std::cout << "RosSimproAD::parsePackage end" << std::endl;

        return PARSE_PACKAGE_SUCESS;
    }

    /*
        将package类型数据转换成ros的message数据
        type：package的ID号

    */
    void RosSimproAD::packToRos(uint16_t type, char *pdata)
    {
        std::cout << "RosSimproAD::packToRos start type = " << type << std::endl;
        if (type == D_SP_PKG_ID_LANE_INFO)
        {
            lane_info laneInfo;

            laneInfo.u1Id = mLaneInfo.u1Id;
            laneInfo.u1LeftLaneId = mLaneInfo.u1LeftLaneId;
            laneInfo.u1NeighborMask = mLaneInfo.u1NeighborMask;
            laneInfo.u1RightLaneId = mLaneInfo.u1RightLaneId;
            laneInfo.u2Type = mLaneInfo.u2Type;
            laneInfo.u4ObjectId = mLaneInfo.u4ObjectId;
            laneInfo.u4Width = mLaneInfo.u4Width;
            laneInfo.u8RoadId = mLaneInfo.u8RoadId;

            message.laneInfos.push_back(laneInfo);
        }
        else if (type == D_SP_PKG_ID_ROAD_QUERY)
        {
            road_query roadQuery;

            roadQuery.u2Id = mRoadQuery.u2Id;
            roadQuery.u8X = mRoadQuery.u8X;
            roadQuery.u8Y = mRoadQuery.u8Y;

            message.roadQueries.push_back(roadQuery);
        }
        else if (type == D_SP_PKG_ID_CONTACT_POINT) // object_state
        {
            contact_point contactPoint;

            contactPoint.u2Id = mContactPoint.u2Id;
            contactPoint.sRoadDataIn.u1Type = mContactPoint.sRoadDataIn.u1Type;
            contactPoint.sRoadDataIn.u4H = mContactPoint.sRoadDataIn.u4H;
            contactPoint.sRoadDataIn.u4P = mContactPoint.sRoadDataIn.u4P;
            contactPoint.sRoadDataIn.u4R = mContactPoint.sRoadDataIn.u4R;
            contactPoint.sRoadDataIn.u8X = mContactPoint.sRoadDataIn.u8X;
            contactPoint.sRoadDataIn.u8Y = mContactPoint.sRoadDataIn.u8Y;
            contactPoint.sRoadDataIn.u8Z = mContactPoint.sRoadDataIn.u8Z;

            message.contactPoints.push_back(contactPoint);
        }
        else if (type == D_SP_PKG_ID_INIT_PARAM)
        {
            init_param initParam;

            initParam.au1OpenScenario = mInitParam.au1OpenScenario;
            initParam.au1OpenDrive = mInitParam.au1OpenDrive;
            initParam.u8StartRoadId = mInitParam.u8StartRoadId;
            initParam.u8EndRoadId = mInitParam.u8EndRoadId;
            initParam.u4StartRoadS = mInitParam.u4StartRoadS;
            initParam.u4EndRoadS = mInitParam.u4EndRoadS;
            initParam.u4Speed = mInitParam.u4Speed;
            initParam.u2ScenarioId = mInitParam.u2ScenarioId;
            initParam.u1StartLaneId = mInitParam.u1StartLaneId;
            initParam.u1EndLaneId = mInitParam.u1EndLaneId;

            message.initParams.push_back(initParam);
        }
        else if (type == D_SP_PKG_ID_SENSOR_INFO)
        {
            sensor_info sensorState;

            for (auto &clip : mSensorInfo.au4ClipNF)
            {
                sensorState.au4ClipNF.push_back(clip);
            }

            for (auto &fovHv : mSensorInfo.au4FovHV)
            {
                sensorState.au4FovHV.push_back(fovHv);
            }

            for (auto &fovOffHv : mSensorInfo.au4FovOffHV)
            {
                sensorState.au4FovOffHV.push_back(fovOffHv);
            }

            sensorState.sOriginCoordSys.u1Type = mSensorInfo.sOriginCoordSys.u1Type;
            sensorState.sOriginCoordSys.u4H = mSensorInfo.sOriginCoordSys.u4H;
            sensorState.sOriginCoordSys.u4P = mSensorInfo.sOriginCoordSys.u4P;
            sensorState.sOriginCoordSys.u4R = mSensorInfo.sOriginCoordSys.u4R;
            sensorState.sOriginCoordSys.u8X = mSensorInfo.sOriginCoordSys.u8X;
            sensorState.sOriginCoordSys.u8Y = mSensorInfo.sOriginCoordSys.u8Y;
            sensorState.sOriginCoordSys.u8Z = mSensorInfo.sOriginCoordSys.u8Z;
            sensorState.sPos.u1Type = mSensorInfo.sPos.u1Type;
            sensorState.sPos.u4H = mSensorInfo.sPos.u4H;
            sensorState.sPos.u4P = mSensorInfo.sPos.u4P;
            sensorState.sPos.u4R = mSensorInfo.sPos.u4R;
            sensorState.sPos.u8X = mSensorInfo.sPos.u8X;
            sensorState.sPos.u8Y = mSensorInfo.sPos.u8Y;
            sensorState.sPos.u8Z = mSensorInfo.sPos.u8Z;
            sensorState.u1Type = mSensorInfo.u1Type;
            sensorState.u8HostId = mSensorInfo.u8HostId;
            sensorState.u8Id = mSensorInfo.u8Id;
            // strcpy(sensorState.au1Name.c_str(), mSensorInfo.au1Name);
            sensorState.au1Name = mSensorInfo.au1Name;
            sensorState.u1ModelType = mSensorInfo.u1ModelType;
            sensorState.u4IdealFreq = mSensorInfo.u4IdealFreq;
            sensorState.u4ResL = mSensorInfo.u4ResL;
            sensorState.u4ResV = mSensorInfo.u4ResV;
            sensorState.u4SenSizeL = mSensorInfo.u4SenSizeL;
            sensorState.u4SenSizeW = mSensorInfo.u4SenSizeW;
            sensorState.u4LenFd = mSensorInfo.u4LenFd;
            sensorState.u4DistCenL = mSensorInfo.u4DistCenL;
            sensorState.u4DistCenW = mSensorInfo.u4DistCenW;
            sensorState.u4DistParK1 = mSensorInfo.u4DistParK1;
            sensorState.u4DistParK2 = mSensorInfo.u4DistParK2;

            message.sensorStates.push_back(sensorState);
        }
        else if (type == D_SP_PKG_ID_SENSOR_DETECTION_INFO)
        {
            sensor_detection_info sensorObj;

            sensorObj.u1DeltaLanePos = mSensorDetectionInfo.u1DeltaLanePos;
            sensorObj.u8ExistProb = mSensorDetectionInfo.u8ExistProb;
            sensorObj.u1Type = mSensorDetectionInfo.u1Type;
            sensorObj.u2Flags = mSensorDetectionInfo.u2Flags;
            sensorObj.u1Occlusion = mSensorDetectionInfo.u1Occlusion;
            sensorObj.u4Id = mSensorDetectionInfo.u4Id;
            sensorObj.u4SensorId = mSensorDetectionInfo.u4SensorId;
            sensorObj.u8TypeIdProb = mSensorDetectionInfo.u8TypeIdProb;
            sensorObj.u1ValidFlag = mSensorDetectionInfo.u1ValidFlag;

            if (sensorObj.u1Type == D_SP_OBJECT_TYPE_LANE)
            {
                for (auto &coffL : mSensorDetectionInfo.sExtraInfo.sMarkObj.au8RoadMarkCoeffL)
                {
                    sensorObj.sExtraInfo.sMarkObj.au8RoadMarkCoeffL.push_back(coffL);
                }

                for (auto &coffR : mSensorDetectionInfo.sExtraInfo.sMarkObj.au8RoadMarkCoeffR)
                {
                    sensorObj.sExtraInfo.sMarkObj.au8RoadMarkCoeffR.push_back(coffR);
                }
            }
            else if(sensorObj.u1Type == D_SP_OBJECT_TYPE_TRAFFIC_SIGN || sensorObj.u1Type == D_SP_OBJECT_TYPE_TRAFFIC_LIGHT)
            {
                sensorObj.sExtraInfo.sSignObj.u8Dist = mSensorDetectionInfo.sExtraInfo.sSignObj.u8Dist;
                sensorObj.sExtraInfo.sSignObj.u8NearestDist = mSensorDetectionInfo.sExtraInfo.sSignObj.u8NearestDist;
                sensorObj.sExtraInfo.sSignObj.u8TrafficSignDistX = mSensorDetectionInfo.sExtraInfo.sSignObj.u8TrafficSignDistX;
                sensorObj.sExtraInfo.sSignObj.u8TrafficSignDistY = mSensorDetectionInfo.sExtraInfo.sSignObj.u8TrafficSignDistY;
                sensorObj.sExtraInfo.sSignObj.sSensorPos.u8X = mSensorDetectionInfo.sExtraInfo.sSignObj.sSensorPos.u8X;
                sensorObj.sExtraInfo.sSignObj.sSensorPos.u8Y = mSensorDetectionInfo.sExtraInfo.sSignObj.sSensorPos.u8Y;
                sensorObj.sExtraInfo.sSignObj.sSensorPos.u8Z = mSensorDetectionInfo.sExtraInfo.sSignObj.sSensorPos.u8Z;
                sensorObj.sExtraInfo.sSignObj.sSensorPos.u4H = mSensorDetectionInfo.sExtraInfo.sSignObj.sSensorPos.u4H;
                sensorObj.sExtraInfo.sSignObj.sSensorPos.u4P = mSensorDetectionInfo.sExtraInfo.sSignObj.sSensorPos.u4P;
                sensorObj.sExtraInfo.sSignObj.sSensorPos.u4R = mSensorDetectionInfo.sExtraInfo.sSignObj.sSensorPos.u4R;
                sensorObj.sExtraInfo.sSignObj.sSensorPos.u1Type = mSensorDetectionInfo.sExtraInfo.sSignObj.sSensorPos.u1Type;

                sensorObj.sExtraInfo.sSignObj.sNearestSensorPos.u8X = mSensorDetectionInfo.sExtraInfo.sSignObj.sNearestSensorPos.u8X;
                sensorObj.sExtraInfo.sSignObj.sNearestSensorPos.u8Y = mSensorDetectionInfo.sExtraInfo.sSignObj.sNearestSensorPos.u8Y;
                sensorObj.sExtraInfo.sSignObj.sNearestSensorPos.u8Z = mSensorDetectionInfo.sExtraInfo.sSignObj.sNearestSensorPos.u8Z;
                sensorObj.sExtraInfo.sSignObj.sNearestSensorPos.u4H = mSensorDetectionInfo.sExtraInfo.sSignObj.sNearestSensorPos.u4H;
                sensorObj.sExtraInfo.sSignObj.sNearestSensorPos.u4P = mSensorDetectionInfo.sExtraInfo.sSignObj.sNearestSensorPos.u4P;
                sensorObj.sExtraInfo.sSignObj.sNearestSensorPos.u4R = mSensorDetectionInfo.sExtraInfo.sSignObj.sNearestSensorPos.u4R;
                sensorObj.sExtraInfo.sSignObj.sNearestSensorPos.u1Type = mSensorDetectionInfo.sExtraInfo.sSignObj.sNearestSensorPos.u1Type;

                sensorObj.sExtraInfo.sSignObj.u1TrafficSignType = mSensorDetectionInfo.sExtraInfo.sSignObj.u1TrafficSignType;
            }
            else
            {
                sensorObj.sExtraInfo.sDynamicObj.u8Dist = mSensorDetectionInfo.sExtraInfo.sDynamicObj.u8Dist;
                sensorObj.sExtraInfo.sDynamicObj.u8NearestDist = mSensorDetectionInfo.sExtraInfo.sDynamicObj.u8NearestDist;
                sensorObj.sExtraInfo.sDynamicObj.u8RelativeVelx = mSensorDetectionInfo.sExtraInfo.sDynamicObj.u8RelativeVelx;
                sensorObj.sExtraInfo.sDynamicObj.u8RelativeVely = mSensorDetectionInfo.sExtraInfo.sDynamicObj.u8RelativeVely;
                sensorObj.sExtraInfo.sDynamicObj.u8RelativeAccx = mSensorDetectionInfo.sExtraInfo.sDynamicObj.u8RelativeAccx;
                sensorObj.sExtraInfo.sDynamicObj.u8RelativeAccy = mSensorDetectionInfo.sExtraInfo.sDynamicObj.u8RelativeAccy;
                sensorObj.sExtraInfo.sDynamicObj.u8HeadingAngle = mSensorDetectionInfo.sExtraInfo.sDynamicObj.u8HeadingAngle;
                
                sensorObj.sExtraInfo.sDynamicObj.sSensorPos.u8X = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSensorPos.u8X;
                sensorObj.sExtraInfo.sDynamicObj.sSensorPos.u8Y = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSensorPos.u8Y;
                sensorObj.sExtraInfo.sDynamicObj.sSensorPos.u8Z = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSensorPos.u8Z;
                sensorObj.sExtraInfo.sDynamicObj.sSensorPos.u4H = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSensorPos.u4H;
                sensorObj.sExtraInfo.sDynamicObj.sSensorPos.u4P = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSensorPos.u4P;
                sensorObj.sExtraInfo.sDynamicObj.sSensorPos.u4R = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSensorPos.u4R;
                sensorObj.sExtraInfo.sDynamicObj.sSensorPos.u1Type = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSensorPos.u1Type;

                sensorObj.sExtraInfo.sDynamicObj.sNearestSensorPos.u8X = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sNearestSensorPos.u8X;
                sensorObj.sExtraInfo.sDynamicObj.sNearestSensorPos.u8Y = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sNearestSensorPos.u8Y;
                sensorObj.sExtraInfo.sDynamicObj.sNearestSensorPos.u8Z = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sNearestSensorPos.u8Z;
                sensorObj.sExtraInfo.sDynamicObj.sNearestSensorPos.u4H = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sNearestSensorPos.u4H;
                sensorObj.sExtraInfo.sDynamicObj.sNearestSensorPos.u4P = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sNearestSensorPos.u4P;
                sensorObj.sExtraInfo.sDynamicObj.sNearestSensorPos.u4R = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sNearestSensorPos.u4R;
                sensorObj.sExtraInfo.sDynamicObj.sNearestSensorPos.u1Type = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sNearestSensorPos.u1Type;
                for (const auto &mPoint : mSensorDetectionInfo.sExtraInfo.sDynamicObj.sBoundingBox)
                {
                    // S_SP_POINT3D mPoint = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sBoundingBox[i];
                    point3d point;
                    point.u8x = mPoint.u8x;
                    point.u8y = mPoint.u8y;
                    point.u8z = mPoint.u8z;

                    sensorObj.sExtraInfo.sDynamicObj.sBoundingBox.push_back(point);
                }

                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXL.u8X = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXL.u8X;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXL.u8Y = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXL.u8Y;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXL.u8Z = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXL.u8Z;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXL.u4H = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXL.u4H;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXL.u4P = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXL.u4P;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXL.u4R = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXL.u4R;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXL.u1Type = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXL.u1Type;

                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXR.u8X = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXR.u8X;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXR.u8Y = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXR.u8Y;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXR.u8Z = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXR.u8Z;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXR.u4H = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXR.u4H;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXR.u4P = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXR.u4P;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXR.u4R = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXR.u4R;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosXR.u1Type = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosXR.u1Type;

                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYL.u8X = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYL.u8X;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYL.u8Y = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYL.u8Y;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYL.u8Z = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYL.u8Z;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYL.u4H = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYL.u4H;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYL.u4P = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYL.u4P;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYL.u4R = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYL.u4R;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYL.u1Type = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYL.u1Type;

                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYR.u8X = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYR.u8X;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYR.u8Y = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYR.u8Y;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYR.u8Z = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYR.u8Z;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYR.u4H = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYR.u4H;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYR.u4P = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYR.u4P;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYR.u4R = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYR.u4R;
                sensorObj.sExtraInfo.sDynamicObj.sSenNearestPosYR.u1Type = mSensorDetectionInfo.sExtraInfo.sDynamicObj.sSenNearestPosYR.u1Type;

                sensorObj.sExtraInfo.sDynamicObj.u1MovingSt = mSensorDetectionInfo.sExtraInfo.sDynamicObj.u1MovingSt;
            }
            

                       

            message.sensorObjects.push_back(sensorObj);
        }
        else if (type == D_SP_PKG_ID_TRAFFIC_SIGN)
        {
            traffic_sign trafficSign;

            trafficSign.au1Type = mTrafficSign.au1Type;
            trafficSign.sPos.u1Type = mTrafficSign.sPos.u1Type;
            trafficSign.sPos.u4H = mTrafficSign.sPos.u4H;
            trafficSign.sPos.u4P = mTrafficSign.sPos.u4P;
            trafficSign.sPos.u4R = mTrafficSign.sPos.u4R;
            trafficSign.sPos.u8X = mTrafficSign.sPos.u8X;
            trafficSign.sPos.u8Y = mTrafficSign.sPos.u8Y;
            trafficSign.sPos.u8Z = mTrafficSign.sPos.u8Z;
            trafficSign.u1MaxLane = mTrafficSign.u1MaxLane;
            trafficSign.u1MinLane = mTrafficSign.u1MinLane;
            trafficSign.u4ObjectId = mTrafficSign.u4ObjectId;
            trafficSign.u4RoadDist = mTrafficSign.u4RoadDist;
            trafficSign.au1SubType = mTrafficSign.au1SubType;
            trafficSign.u4TrafficSignId = mTrafficSign.u4TrafficSignId;
            trafficSign.u4Value = mTrafficSign.u4Value;

            message.trafficSigns.push_back(trafficSign);
        }
        else if (type == D_SP_PKG_ID_PARKINGSPACE)
        {
            parkingSpace parking;
            parking.sPos.u1Type = mParkingSpace.sPos.u1Type;
            parking.sPos.u4H = mParkingSpace.sPos.u4H;
            parking.sPos.u4P = mParkingSpace.sPos.u4P;
            parking.sPos.u4R = mParkingSpace.sPos.u4R;
            parking.sPos.u8X = mParkingSpace.sPos.u8X;
            parking.sPos.u8Y = mParkingSpace.sPos.u8Y;
            parking.sPos.u8Z = mParkingSpace.sPos.u8Z;
            parking.sGeo.u4DimX = mParkingSpace.sGeo.u4DimX;
            parking.sGeo.u4DimY = mParkingSpace.sGeo.u4DimY;
            parking.sGeo.u4DimZ = mParkingSpace.sGeo.u4DimZ;
            parking.sGeo.u4OffX = mParkingSpace.sGeo.u4OffX;
            parking.sGeo.u4OffY = mParkingSpace.sGeo.u4OffY;
            parking.sGeo.u4OffZ = mParkingSpace.sGeo.u4OffZ;
            parking.u4RoadS = mParkingSpace.u4RoadS;
            parking.u4RoadT = mParkingSpace.u4RoadT;
            parking.u8SlotId = mParkingSpace.u8SlotId;

            message.parkingSpaces.push_back(parking);
        }
        else if (type == D_SP_PKG_ID_ROAD_STATE)
        {
            road_state roadState;
            roadState.u4DefaultSpeed = mRoadState.u4DefaultSpeed;
            roadState.u4DistToJunc = mRoadState.u4DistToJunc;
            roadState.u4ObjectId = mRoadState.u4ObjectId;
            roadState.u4WaterLevel = mRoadState.u4WaterLevel;
            roadState.u8RoadId = mRoadState.u8RoadId;

            message.roadStates.push_back(roadState);
        }
        else if (type == D_SP_PKG_ID_ENVIRONMENT)
        {
            environment envir;

            envir.u1CloudState = mEnvironment.u1CloudState;
            envir.u1Day = mEnvironment.u1Day;
            envir.u1Month = mEnvironment.u1Month;
            envir.u8RainIntensity = mEnvironment.u8RainIntensity;
            envir.u8SnowIntensity = mEnvironment.u8SnowIntensity;
            envir.u8FogIntensity = mEnvironment.u8FogIntensity;
            envir.u8FogVisualRange = mEnvironment.u8FogVisualRange;
            envir.u2TimeZoneMinutesWest = mEnvironment.u2TimeZoneMinutesWest;
            envir.u2Year = mEnvironment.u2Year;
            envir.u4TimeOfDay = mEnvironment.u4TimeOfDay;

            message.environments.push_back(envir);
        }
        else if (type == D_SP_PKG_ID_TRAFFIC_LIGHT)
        {
            traffic_light trafficLight;

            trafficLight.u4CtrlId = mTrafficLight.u4CtrlId;
            trafficLight.u4CycleTime = mTrafficLight.u4CycleTime;
            trafficLight.u4DataSize = mTrafficLight.u4DataSize;
            trafficLight.u4Id = mTrafficLight.u4Id;
            trafficLight.u4NoPhases = mTrafficLight.u4NoPhases;
            trafficLight.u4State = mTrafficLight.u4State;
            

            S_SP_TRAFFIC_LIGHT_PHASE* phasePtr = (S_SP_TRAFFIC_LIGHT_PHASE *) (pdata + sizeof(S_SP_TRAFFIC_LIGHT));
            for ( unsigned int j = 0; j < mTrafficLight.u4NoPhases; j++ )
            {
                traffic_light_phase phase;
                phase.u1Status = phasePtr->u1Status;
                phase.u4Duration = phasePtr->u4Duration;
                trafficLight.phases.push_back(phase);
                phasePtr++;
            }

            message.trafficLights.push_back(trafficLight);
        }
        else if (type == D_SP_MIL_PKG_ID_EGO_DATA)
        {
            mil_ego_state egoState;

            egoState.sObjectState.au1Name = mEgoState.sObjectState.au1Name;
            egoState.sObjectState.au1ModelFileName = mEgoState.sObjectState.au1ModelFileName;
            egoState.sObjectState.au1ModelName = mEgoState.sObjectState.au1ModelName;
            for (int i = 0; i < 3; i++)
            {
                egoState.sObjectState.au8ParamScale.push_back(mEgoState.sObjectState.au8ParamScale[i]);
            }
            egoState.sObjectState.sAccel.u1Type = mEgoState.sObjectState.sAccel.u1Type;
            egoState.sObjectState.sAccel.u4H = mEgoState.sObjectState.sAccel.u4H;
            egoState.sObjectState.sAccel.u4P = mEgoState.sObjectState.sAccel.u4P;
            egoState.sObjectState.sAccel.u4R = mEgoState.sObjectState.sAccel.u4R;
            egoState.sObjectState.sAccel.u8X = mEgoState.sObjectState.sAccel.u8X;
            egoState.sObjectState.sAccel.u8Y = mEgoState.sObjectState.sAccel.u8Y;
            egoState.sObjectState.sAccel.u8Z = mEgoState.sObjectState.sAccel.u8Z;
            egoState.sObjectState.sGeo.u4DimX = mEgoState.sObjectState.sGeo.u4DimX;
            egoState.sObjectState.sGeo.u4DimY = mEgoState.sObjectState.sGeo.u4DimY;
            egoState.sObjectState.sGeo.u4DimZ = mEgoState.sObjectState.sGeo.u4DimZ;
            egoState.sObjectState.sGeo.u4OffX = mEgoState.sObjectState.sGeo.u4OffX;
            egoState.sObjectState.sGeo.u4OffY = mEgoState.sObjectState.sGeo.u4OffY;
            egoState.sObjectState.sGeo.u4OffZ = mEgoState.sObjectState.sGeo.u4OffZ;
            egoState.sObjectState.sPos.u1Type = mEgoState.sObjectState.sPos.u1Type;
            egoState.sObjectState.sPos.u4H = mEgoState.sObjectState.sPos.u4H;
            egoState.sObjectState.sPos.u4P = mEgoState.sObjectState.sPos.u4P;
            egoState.sObjectState.sPos.u4R = mEgoState.sObjectState.sPos.u4R;
            egoState.sObjectState.sPos.u8X = mEgoState.sObjectState.sPos.u8X;
            egoState.sObjectState.sPos.u8Y = mEgoState.sObjectState.sPos.u8Y;
            egoState.sObjectState.sPos.u8Z = mEgoState.sObjectState.sPos.u8Z;
            egoState.sObjectState.sSpeed.u1Type = mEgoState.sObjectState.sSpeed.u1Type;
            egoState.sObjectState.sSpeed.u4H = mEgoState.sObjectState.sSpeed.u4H;
            egoState.sObjectState.sSpeed.u4P = mEgoState.sObjectState.sSpeed.u4P;
            egoState.sObjectState.sSpeed.u4R = mEgoState.sObjectState.sSpeed.u4R;
            egoState.sObjectState.sSpeed.u8X = mEgoState.sObjectState.sSpeed.u8X;
            egoState.sObjectState.sSpeed.u8Y = mEgoState.sObjectState.sSpeed.u8Y;
            egoState.sObjectState.sSpeed.u8Z = mEgoState.sObjectState.sSpeed.u8Z;
            egoState.sObjectState.u1Dir = mEgoState.sObjectState.u1Dir;
            egoState.sObjectState.u1LaneId = mEgoState.sObjectState.u1LaneId;
            egoState.sObjectState.u1Type = mEgoState.sObjectState.u1Type;
            egoState.sObjectState.u4HdgRel = mEgoState.sObjectState.u4HdgRel;
            egoState.sObjectState.u4Id = mEgoState.sObjectState.u4Id;
            egoState.sObjectState.u4LaneOffset = mEgoState.sObjectState.u4LaneOffset;
            egoState.sObjectState.u4RoadS = mEgoState.sObjectState.u4RoadS;
            egoState.sObjectState.u4RoadT = mEgoState.sObjectState.u4RoadT;
            egoState.sObjectState.u4TraveledDist = mEgoState.sObjectState.u4TraveledDist;
            egoState.sObjectState.u8RoadId = mEgoState.sObjectState.u8RoadId;
            egoState.sObjectState.u1IsOnRoad = mEgoState.sObjectState.u1IsOnRoad;
            egoState.sObjectState.u8SpeedLimit = mEgoState.sObjectState.u8SpeedLimit;
            egoState.sObjectState.u2visMask = mEgoState.sObjectState.u2visMask;
            egoState.sObjectState.u1category = mEgoState.sObjectState.u1category;
            egoState.u4initSpeed = mEgoState.u4initSpeed;
            egoState.u8DistRoadEnd = mEgoState.u8DistRoadEnd;
            egoState.u4LightMask = mEgoState.u4LightMask;
            egoState.u4MasterCylinderPressure = mEgoState.u4MasterCylinderPressure;
            egoState.u4WheelSpeedFL = mEgoState.u4WheelSpeedFL;
            egoState.u4WheelSpeedFR = mEgoState.u4WheelSpeedFR;
            egoState.u4WheelSpeedRL = mEgoState.u4WheelSpeedRL;
            egoState.u4WheelSpeedRR = mEgoState.u4WheelSpeedRR;
            egoState.u4WheelHeightLF = mEgoState.u4WheelHeightLF;
            egoState.u4WheelHeightLR = mEgoState.u4WheelHeightLR;
            egoState.u4WheelHeightRF = mEgoState.u4WheelHeightRF;
            egoState.u4WheelHeightRR = mEgoState.u4WheelHeightRR;
            egoState.u4SteerAngle = mEgoState.u4SteerAngle;
            egoState.u1objQuantity = mEgoState.u1objQuantity;
            egoState.u1irc_id = mEgoState.u1irc_id;
            egoState.u1irc_left_id = mEgoState.u1irc_left_id;
            egoState.u1irc_right_id = mEgoState.u1irc_right_id;
            egoState.u1cipv_id = mEgoState.u1cipv_id;
            egoState.u1lmc_id = mEgoState.u1lmc_id;
            egoState.u1rmc_id = mEgoState.u1rmc_id;
            egoState.u1isReachInitSpeed = mEgoState.u1isReachInitSpeed;

            message.egoStates.push_back(egoState);
        }
        else if (type == D_SP_MIL_PKG_ID_OBJECT_DATA)
        {
            mil_object_state milObjState;

            milObjState.sObjectState.au1Name = mMilObjState.sObjectState.au1Name;
            milObjState.sObjectState.au1ModelFileName = mMilObjState.sObjectState.au1ModelFileName;
            milObjState.sObjectState.au1ModelName = mMilObjState.sObjectState.au1ModelName;
            for (int i = 0; i < 3; i++)
            {
                milObjState.sObjectState.au8ParamScale.push_back(mMilObjState.sObjectState.au8ParamScale[i]);
            }
            milObjState.sObjectState.sAccel.u1Type = mMilObjState.sObjectState.sAccel.u1Type;
            milObjState.sObjectState.sAccel.u4H = mMilObjState.sObjectState.sAccel.u4H;
            milObjState.sObjectState.sAccel.u4P = mMilObjState.sObjectState.sAccel.u4P;
            milObjState.sObjectState.sAccel.u4R = mMilObjState.sObjectState.sAccel.u4R;
            milObjState.sObjectState.sAccel.u8X = mMilObjState.sObjectState.sAccel.u8X;
            milObjState.sObjectState.sAccel.u8Y = mMilObjState.sObjectState.sAccel.u8Y;
            milObjState.sObjectState.sAccel.u8Z = mMilObjState.sObjectState.sAccel.u8Z;
            milObjState.sObjectState.sGeo.u4DimX = mMilObjState.sObjectState.sGeo.u4DimX;
            milObjState.sObjectState.sGeo.u4DimY = mMilObjState.sObjectState.sGeo.u4DimY;
            milObjState.sObjectState.sGeo.u4DimZ = mMilObjState.sObjectState.sGeo.u4DimZ;
            milObjState.sObjectState.sGeo.u4OffX = mMilObjState.sObjectState.sGeo.u4OffX;
            milObjState.sObjectState.sGeo.u4OffY = mMilObjState.sObjectState.sGeo.u4OffY;
            milObjState.sObjectState.sGeo.u4OffZ = mMilObjState.sObjectState.sGeo.u4OffZ;
            milObjState.sObjectState.sPos.u1Type = mMilObjState.sObjectState.sPos.u1Type;
            milObjState.sObjectState.sPos.u4H = mMilObjState.sObjectState.sPos.u4H;
            milObjState.sObjectState.sPos.u4P = mMilObjState.sObjectState.sPos.u4P;
            milObjState.sObjectState.sPos.u4R = mMilObjState.sObjectState.sPos.u4R;
            milObjState.sObjectState.sPos.u8X = mMilObjState.sObjectState.sPos.u8X;
            milObjState.sObjectState.sPos.u8Y = mMilObjState.sObjectState.sPos.u8Y;
            milObjState.sObjectState.sPos.u8Z = mMilObjState.sObjectState.sPos.u8Z;
            milObjState.sObjectState.sSpeed.u1Type = mMilObjState.sObjectState.sSpeed.u1Type;
            milObjState.sObjectState.sSpeed.u4H = mMilObjState.sObjectState.sSpeed.u4H;
            milObjState.sObjectState.sSpeed.u4P = mMilObjState.sObjectState.sSpeed.u4P;
            milObjState.sObjectState.sSpeed.u4R = mMilObjState.sObjectState.sSpeed.u4R;
            milObjState.sObjectState.sSpeed.u8X = mMilObjState.sObjectState.sSpeed.u8X;
            milObjState.sObjectState.sSpeed.u8Y = mMilObjState.sObjectState.sSpeed.u8Y;
            milObjState.sObjectState.sSpeed.u8Z = mMilObjState.sObjectState.sSpeed.u8Z;
            milObjState.sObjectState.u1Dir = mMilObjState.sObjectState.u1Dir;
            milObjState.sObjectState.u1LaneId = mMilObjState.sObjectState.u1LaneId;
            milObjState.sObjectState.u1Type = mMilObjState.sObjectState.u1Type;
            milObjState.sObjectState.u4HdgRel = mMilObjState.sObjectState.u4HdgRel;
            milObjState.sObjectState.u4Id = mMilObjState.sObjectState.u4Id;
            milObjState.sObjectState.u4LaneOffset = mMilObjState.sObjectState.u4LaneOffset;
            milObjState.sObjectState.u4RoadS = mMilObjState.sObjectState.u4RoadS;
            milObjState.sObjectState.u4RoadT = mMilObjState.sObjectState.u4RoadT;
            milObjState.sObjectState.u4TraveledDist = mMilObjState.sObjectState.u4TraveledDist;
            milObjState.sObjectState.u8RoadId = mMilObjState.sObjectState.u8RoadId;
            milObjState.sObjectState.u1IsOnRoad = mMilObjState.sObjectState.u1IsOnRoad;
            milObjState.sObjectState.u8SpeedLimit = mMilObjState.sObjectState.u8SpeedLimit;
            milObjState.sObjectState.u2visMask = mMilObjState.sObjectState.u2visMask;
            milObjState.sObjectState.u1category = mMilObjState.sObjectState.u1category;
            milObjState.sMilBase.u1ObjClass = milObjState.sMilBase.u1ObjClass;
            milObjState.sMilBase.u4AccelerationX = milObjState.sMilBase.u4AccelerationX;
            milObjState.sMilBase.u4AccelerationY = milObjState.sMilBase.u4AccelerationY;
            milObjState.sMilBase.u4Angle = milObjState.sMilBase.u4Angle;
            milObjState.sMilBase.u4Dist = milObjState.sMilBase.u4Dist;
            milObjState.sMilBase.u4DistanceX = milObjState.sMilBase.u4DistanceX;
            milObjState.sMilBase.u4DistanceY = milObjState.sMilBase.u4DistanceY;
            milObjState.sMilBase.u4LightMask = milObjState.sMilBase.u4LightMask;
            milObjState.sMilBase.u4VelocityX = milObjState.sMilBase.u4VelocityX;
            milObjState.sMilBase.u4VelocityY = milObjState.sMilBase.u4VelocityY;
            milObjState.sMilBase.u4YawRate = milObjState.sMilBase.u4YawRate;
            milObjState.sMilBase.u1Flag_detected = milObjState.sMilBase.u1Flag_detected;
            milObjState.sMilBase.u1Movable = milObjState.sMilBase.u1Movable;
            milObjState.sMilBase.u1Moving = milObjState.sMilBase.u1Moving;
            milObjState.sMilBase.u1Obj_Age = milObjState.sMilBase.u1Obj_Age;

            message.milObjStates.push_back(milObjState);
        }
        else if (type == D_SP_MIL_PKG_ID_ROADMARK)
        {
            mil_roadmark milRoadMark;

            milRoadMark.u1Color = mMilRoadMark.u1Color;
            milRoadMark.u1LaneId = mMilRoadMark.u1LaneId;
            milRoadMark.u1LeftCrossing = mMilRoadMark.u1LeftCrossing;
            milRoadMark.u1Quality = mMilRoadMark.u1Quality;
            milRoadMark.u1RightCrossing = mMilRoadMark.u1RightCrossing;
            milRoadMark.u1Type = mMilRoadMark.u1Type;
            milRoadMark.u2LaneChange = mMilRoadMark.u2LaneChange;
            milRoadMark.u4C0 = mMilRoadMark.u4C0;
            milRoadMark.u4C1 = mMilRoadMark.u4C1;
            milRoadMark.u4C2 = mMilRoadMark.u4C2;
            milRoadMark.u4C3 = mMilRoadMark.u4C3;
            milRoadMark.u4MeasuredVREnd = mMilRoadMark.u4MeasuredVREnd;
            milRoadMark.u4StartDx = mMilRoadMark.u4StartDx;
            milRoadMark.u4ViewRangeEnd = mMilRoadMark.u4ViewRangeEnd;
            milRoadMark.u4ViewRangeStart = mMilRoadMark.u4ViewRangeStart;
            milRoadMark.u4Width = mMilRoadMark.u4Width;
            milRoadMark.u8RoadId = mMilRoadMark.u8RoadId;
            milRoadMark.curvVert = mMilRoadMark.curvVert;

            message.milRoadMarks.push_back(milRoadMark);
        }
        else if (type == D_SP_MIL_PKG_ID_AMESIM)
        {
            mil_amesim_signal amesimSignal;
            amesimSignal.u4LeftLen = mMilAmesimSignal.u4LeftLen;
            amesimSignal.u4NextLen = mMilAmesimSignal.u4NextLen;
            amesimSignal.u4NextAgeSpeed = mMilAmesimSignal.u4NextAgeSpeed;
            amesimSignal.u4NextMinSpeed = mMilAmesimSignal.u4NextMinSpeed;
            amesimSignal.u4NextMaxSpeed = mMilAmesimSignal.u4NextMaxSpeed;
            amesimSignal.u4NextGradient = mMilAmesimSignal.u4NextGradient;
            amesimSignal.u4NextCongest = mMilAmesimSignal.u4NextCongest;
            amesimSignal.u1RoadType = mMilAmesimSignal.u1RoadType;
            amesimSignal.u4DisLimit = mMilAmesimSignal.u4DisLimit;
            amesimSignal.u1IsFarAwayLimit = mMilAmesimSignal.u1IsFarAwayLimit;
            amesimSignal.u4LimitSpeed = mMilAmesimSignal.u4LimitSpeed;
            amesimSignal.ulIsJunction = mMilAmesimSignal.ulIsJunction;
            amesimSignal.u4DisJunction = mMilAmesimSignal.u4DisJunction;
            amesimSignal.ulIsFarAwayJunc = mMilAmesimSignal.ulIsFarAwayJunc;
            amesimSignal.ultrafficLightStat = mMilAmesimSignal.ultrafficLightStat;
            amesimSignal.u4Curvity = mMilAmesimSignal.u4Curvity;
            amesimSignal.u4RelativeVel = mMilAmesimSignal.u4RelativeVel;
            amesimSignal.u4RelativeDis = mMilAmesimSignal.u4RelativeDis;

            message.milAmesimSignals.push_back(amesimSignal);
        }
        else if (type == D_SP_PKG_ID_ACTIVATE_CONTROLLER)
        {
            activate_controller activateController;

            activateController.u1Lateral = mActivateController.u1Lateral;
            activateController.u4ObjectId = mActivateController.u4ObjectId;
            activateController.u1Longitudinal = mActivateController.u1Longitudinal;

            message.activateControllers.push_back(activateController);
        }
        else if (type == D_SP_PKG_ID_ASSIGN_CONTROLLER)
        {
            assign_controller assignController;

            assignController.au1ControllerName = mAssignController.au1ControllerName;
            assignController.u4ObjectId = mAssignController.u4ObjectId;
            assignController.u4PropertyNum = mAssignController.u4PropertyNum;

            S_SP_ASSIGN_CONTROLLER_PROPERTY *property = (S_SP_ASSIGN_CONTROLLER_PROPERTY *)(pdata + sizeof(S_SP_ASSIGN_CONTROLLER));
            for (int i = 0; i < assignController.u4PropertyNum; i++)
            {
                assign_controller_property pro;
                pro.au1Name  = property->au1Name;
                pro.au1Value = property->au1Value;
                assignController.properties.push_back(pro);
                property++;
            }

            message.assignControllers.push_back(assignController);
        }
        else if (type == D_SP_PKG_ID_OVERRIDE_CONTROLLER)
        {
            override_controller overrideController;

            overrideController.u8ThrottleValue = mOverrideController.u8ThrottleValue;
            overrideController.u8BrakeValue = mOverrideController.u8BrakeValue;
            overrideController.u8SteeringWheelValue = mOverrideController.u8SteeringWheelValue;
            overrideController.u8ParkingBrakeValue = mOverrideController.u8ParkingBrakeValue;
            overrideController.u8ClutchValue = mOverrideController.u8ClutchValue;
            overrideController.u8GearValue = mOverrideController.u8GearValue;
            overrideController.u4ObjectId = mOverrideController.u4ObjectId;

            overrideController.u1ThrottleActive = mOverrideController.u1ThrottleActive;
            overrideController.u1BrakeActive = mOverrideController.u1BrakeActive;
            overrideController.u1SteeringWheelActive = mOverrideController.u1SteeringWheelActive;
            overrideController.u1ParkingBrakeActive = mOverrideController.u1ParkingBrakeActive;
            overrideController.u1ClutchActive = mOverrideController.u1ClutchActive;
            overrideController.u1GearActive = mOverrideController.u1GearActive;

            message.overrideControllers.push_back(overrideController);
        }
        else if (type == D_SP_PKG_ID_CUSTOM_COMMAND)
        {
            custom_command customCommand;

            customCommand.au1Type = mCustomCommand.au1Type;
            customCommand.au1Command = mCustomCommand.au1Command;
            customCommand.u4ObjectId = mCustomCommand.u4ObjectId;

            message.customCommands.push_back(customCommand);
        }
        else if (type == D_SP_PKG_ID_DRIVER_CTRL)
        {
            driver_ctrl driverCtrl;
            driverCtrl.u4ObjectId = mDriverCtrl.u4ObjectId;
            driverCtrl.u4MtWheel = mDriverCtrl.u4MtWheel;
            driverCtrl.u8MasterCylinderPressure = mDriverCtrl.u8MasterCylinderPressure;
            driverCtrl.u8SteeringWheel = mDriverCtrl.u8SteeringWheel;
            driverCtrl.u8ThrottlePedal = mDriverCtrl.u8ThrottlePedal;
            driverCtrl.u8BrakePedal = mDriverCtrl.u8BrakePedal;
            driverCtrl.u8AccelTgt = mDriverCtrl.u8AccelTgt;
            driverCtrl.u8SteeringTorque = mDriverCtrl.u8SteeringTorque;
            driverCtrl.u8StopDistance = mDriverCtrl.u8StopDistance;
            driverCtrl.u8TargetSpeed = mDriverCtrl.u8TargetSpeed;
            driverCtrl.u8Vx = mDriverCtrl.u8Vx;
            driverCtrl.u8Wr = mDriverCtrl.u8Wr;
            driverCtrl.u8VLFWheelSpd = mDriverCtrl.u8VLFWheelSpd;
            driverCtrl.u8VRFWheelSpd = mDriverCtrl.u8VRFWheelSpd;
            driverCtrl.u8VLRWheelSpd = mDriverCtrl.u8VLRWheelSpd;
            driverCtrl.u8VRRWheelSpd = mDriverCtrl.u8VRRWheelSpd;
            driverCtrl.u8Ax = mDriverCtrl.u8Ax;
            driverCtrl.u8Ay = mDriverCtrl.u8Ay;
            driverCtrl.u8SteeringWheelAngularRate = mDriverCtrl.u8SteeringWheelAngularRate;
            driverCtrl.u8DrvTorqAct = mDriverCtrl.u8DrvTorqAct;
            driverCtrl.u8Xmc = mDriverCtrl.u8Xmc;
            driverCtrl.u8Ymc = mDriverCtrl.u8Ymc;
            driverCtrl.u8YawThetaVehicle = mDriverCtrl.u8YawThetaVehicle;
            driverCtrl.u8PitchThetaVehicle = mDriverCtrl.u8PitchThetaVehicle;
            driverCtrl.u8RollThetaVehicle = mDriverCtrl.u8RollThetaVehicle;
            driverCtrl.u8PitchRateVehicle = mDriverCtrl.u8PitchRateVehicle;
            driverCtrl.u8RollRateVehicle = mDriverCtrl.u8RollRateVehicle;
            driverCtrl.u8SinSlopeout = mDriverCtrl.u8SinSlopeout;
            driverCtrl.u8VehicleCurv = mDriverCtrl.u8VehicleCurv;
            driverCtrl.u8TmotorCmd = mDriverCtrl.u8TmotorCmd;
            driverCtrl.u8Tmotor = mDriverCtrl.u8Tmotor;
            driverCtrl.u8EnergySourceLevel = mDriverCtrl.u8EnergySourceLevel;
            driverCtrl.u8WLFWheelSpd = mDriverCtrl.u8WLFWheelSpd;
            driverCtrl.u8WRFWheelSpd = mDriverCtrl.u8WRFWheelSpd;
            driverCtrl.u8WLRWheelSpd = mDriverCtrl.u8WLRWheelSpd;
            driverCtrl.u8WRRWheelSpd = mDriverCtrl.u8WRRWheelSpd;
            driverCtrl.u8WGearSpd = mDriverCtrl.u8WGearSpd;
            driverCtrl.u1LFWheelRotatedDir = mDriverCtrl.u1LFWheelRotatedDir;
            driverCtrl.u1LRWheelRotatedDir = mDriverCtrl.u1LRWheelRotatedDir;
            driverCtrl.u1RFWheelRotatedDir = mDriverCtrl.u1RFWheelRotatedDir;
            driverCtrl.u1RRWheelRotatedDir = mDriverCtrl.u1RRWheelRotatedDir;
            driverCtrl.u1BrakePedalStatus = mDriverCtrl.u1BrakePedalStatus;
            driverCtrl.u1VehicleDir = mDriverCtrl.u1VehicleDir;
            driverCtrl.u1BrkType = mDriverCtrl.u1BrkType;
            driverCtrl.u1Gear = mDriverCtrl.u1Gear;
            message.driverCtrls.push_back(driverCtrl);
            
        }
        else if (type == D_SP_PKG_ID_IMU_DATA)
        {
            imu_data imuData;
            imuData.msgcnt = mImuData.msgcnt;
            imuData.u8X = mImuData.u8X;
            imuData.u8Y = mImuData.u8Y;
            imuData.u8Z = mImuData.u8Z;
            imuData.yaw = mImuData.yaw;
            imuData.pitch = mImuData.pitch;
            imuData.roll = mImuData.roll;
            message.imuDatas.push_back(imuData);
        }
        else if (type == D_SP_PKG_ID_UWB_DATA)
        {
            uwb_data uwbData;
            uwbData.msgcnt = mUwbData.msgcnt;
            uwbData.u8x = mUwbData.u8x;
            uwbData.u8y = mUwbData.u8y;
            uwbData.u8z = mUwbData.u8z;

            message.uwbDatas.push_back(uwbData);            
        }
        else if (type == D_SP_PKG_ID_GNSS_DATA)
        {
            gnss_gga gnssGga;
            gnssGga.startChar = mGnssGga.startChar;
            for (const auto &mCmd : mGnssGga.cmd)
            {
                gnssGga.cmd.push_back(mCmd);
            }

            for (const auto &mT : mGnssGga._time)
            {
                gnssGga.mTime.push_back(mT);
            }
            gnssGga.lat = mGnssGga.lat;
            gnssGga.NorS = mGnssGga.NorS;
            gnssGga.lon = mGnssGga.lon;
            gnssGga.EorW = mGnssGga.EorW;

            for (const auto &mMode : mGnssGga.mode)
            {
                gnssGga.mode.push_back(mMode);
            }

            gnssGga.count = mGnssGga.count;
            gnssGga.horizonprecious = mGnssGga.horizonprecious;
            gnssGga.geoidalheight = mGnssGga.geoidalheight;
            gnssGga.meter1 = mGnssGga.meter1;
            gnssGga.height = mGnssGga.height;
            gnssGga.meter2 = mGnssGga.meter2;
            gnssGga.dataage = mGnssGga.dataage;
            gnssGga.basestationflag = mGnssGga.basestationflag;
            gnssGga.sperator = mGnssGga.sperator;

            for (const auto &mChecksum : mGnssGga.checksum)
            {
                gnssGga.checksum.push_back(mChecksum);
            }

            message.gnssGgaS.push_back(gnssGga);

        }
        else if (type == D_SP_PKG_ID_MODEL_OUTLINE)
        {
            model_outline modelOutLine;

            modelOutLine.au1ModelName = mModelOutline.au1ModelName;
            for (const auto &mPoint : mModelOutline.au8OutlinePoints)
            {
                double_array dArray;
                for(const auto &p : mPoint)
                {
                    dArray.data.push_back(p);
                }
                modelOutLine.au8OutlinePoints.push_back(dArray);
            }

            message.modelOutlines.push_back(modelOutLine);
        }
        else if (type == D_SP_PKG_ID_RSU_VNFP_INFO)
        {
            message.rsuVnfpInfo.type = mRsuVnfpInfo.type;
        }
        else if (type == D_SP_PKG_ID_SYNC)
        {
            sync sync1;
            sync1.u4CmdMask = mSync.u4CmdMask;
            sync1.u4UserData = mSync.u4UserData;
            message.syncs.push_back(sync1);
        }

        std::cout << "RosSimproAD::packToRos end" << std::endl;
    }

    // 初始化订阅从AD端发布的数据
    void RosSimproAD::recvDataFromAD()
    {
        std::cout << "RosSimproAD::recvDataFromAD start" << std::endl;
        int ControlInLoopValue;
        int ControlInLoopType;
        nh_.getParam("ControlInLoopValue", ControlInLoopValue);
        nh_.getParam("ControlInLoopType", ControlInLoopType);
        int AdCtrlEgo;
        nh_.getParam("AdCtrlEgo", AdCtrlEgo);

        std::string recvMessageFromAD;
        nh_.getParam("recvMessageFromAD", recvMessageFromAD);
        std::cout << "ControlInLoopValue = " << ControlInLoopValue << ", ControlInLoopType = " << ControlInLoopType << ", AdCtrlEgo=" << AdCtrlEgo << std::endl;
        std::cout << "recvMessageFromAD = " << recvMessageFromAD << std::endl;

        if (AdCtrlEgo == 1)
        {
            // 控制在还打开，动力学模型挂载内部
            if (ControlInLoopType == 1 && ControlInLoopValue == 1)
            {
                std::cout << " driverCtrl_" << std::endl;
                driverCtrl_ = nh_.subscribe(recvMessageFromAD, 1000, &RosSimproAD::sendDriverCtrlToSimpro, this);
            }

            // 控制在还关闭/控制在还打开且动力学模型挂载外部
            if (ControlInLoopValue == 0 || (ControlInLoopValue == 1 && ControlInLoopType == 2))
            {
                std::cout << " objState_" << std::endl;
                objState_ = nh_.subscribe(recvMessageFromAD, 1000, &RosSimproAD::sendObjToSimpro, this);
            }
        }

        std::cout << "RosSimproAD::recvDataFromAD end" << std::endl;
    }

    // 发送rosADToSimproObjState数据给Simpro
    void RosSimproAD::sendObjToSimpro(const rosADToSimproEgoState::ConstPtr &objMessage)
    {
        gettimeofday(&timeSub, NULL);
        double runTime = (timeSub.tv_sec - timeEnd.tv_sec) + (double)(timeSub.tv_usec - timeEnd.tv_usec) / 1000000;

        std::cout << "publish to subscribe objState time total  = " << runTime << ", tv_sec = " << timeSub.tv_sec << ", tv_usec = " << timeSub.tv_usec << std::endl;
        std::cout << "RosSimproAD::sendObjToSimpro start" << std::endl;
        int sendLen;
        // std::cout << "sendObjToSimpro data = " << objMessage << std::endl;
        generateHeadMsg(objMessage->head);
        // generateHeadMsg();

        generateEgoState(objMessage->egoState);
        generateCsvData(objMessage->csvData);
        generateV2xWarningInformation(objMessage->v2xWarning);
        generateEndMsg();
        if (connType == 1)
        {
            // std::cout << "send data" << std::endl;
            if ((sendLen = sendto(client_sockfd, msgBuffer, msgBufferUsedSize, 0, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr))) < 0) // 返回发送的数据长度，出错返回-1
            {
                perror("send error!");
                return;
            }
        }

        if (connType == 0)
        {
            /*向服务器发送数据包*/
            if ((sendLen = send(client_sockfd, msgBuffer, msgBufferUsedSize, 0)) < 0) // 返回发送的数据长度，出错返回-1
            {
                perror("send error!");
                return;
            }
        }

        gettimeofday(&timeSend, NULL);

        auto time = (timeSend.tv_sec - timeSub.tv_sec) + (double)(timeSend.tv_usec - timeSub.tv_usec) / 1000000;
        std::cout << "sub and send objState total time = " << time << std::endl;

        // objState_.shutdown();
        std::cout << "RosSimproAD::sendObjToSimpro end" << std::endl;
    }

    // 发送rosADToSimproDriverCtrl数据给Simpro
    void RosSimproAD::sendDriverCtrlToSimpro(const rosADToSimproDriverCtrl::ConstPtr &driverCtrlMessage)
    {
        std::cout << "RosSimproAD::sendDriverCtrlToSimpro start" << std::endl;
        int sendLen;

        generateHeadMsg(driverCtrlMessage->head);
        // generateHeadMsg();

        generateDriverCtrl(driverCtrlMessage->driverCtrl);
        generateEgoState(driverCtrlMessage->egoState);
        generateCsvData(driverCtrlMessage->csvData);
        generateV2xWarningInformation(driverCtrlMessage->v2xWarning);
        generateEndMsg();

        // 发送数据
        if (connType == 1)
        {
            if ((sendLen = sendto(client_sockfd, msgBuffer, msgBufferUsedSize, 0, (struct sockaddr *)&remote_addr, sizeof(struct sockaddr))) < 0) // 返回发送的数据长度，出错返回-1
            {
                perror("send error!");
                return;
            }
        }

        if (connType == 0)
        {
            /*向服务器发送数据包*/
            if ((sendLen = send(client_sockfd, msgBuffer, msgBufferUsedSize, 0)) < 0) // 返回发送的数据长度，出错返回-1
            {
                perror("send error!");
                return;
            }
        }

        std::cout << "RosSimproAD::sendDriverCtrlToSimpro end" << std::endl;
    }


    // 生成package的头部
    void RosSimproAD::generateHeadMsg(const header &head)
    {
        std::cout << "RosSimproAD::generateHeadMsg start" << std::endl;
        // 清空msgBuffer
        memset(msgBuffer, 0, msgBufferAllocSize);
        msgBufferUsedSize = 0; // 更新msgBuffer的已使用空间

        // 生成Msg头部
        msgHead1 = (S_SP_MSG_HDR *)msgBuffer;

        // 填充Msg头部
        msgHead1->u4FrameNo = head.u4FrameNo + 1;
        msgHead1->u4HeaderSize = sizeof(S_SP_MSG_HDR); // Msg头部大小
        msgHead1->u4DataSize = head.u4DataSize;        // 帧号
        msgHead1->u8SimTime = head.u8SimTime;          // 仿真时间

        msgBufferUsedSize += sizeof(S_SP_MSG_HDR); // 更新msgBuffer的已使用空间

        // 生成D_SP_PKG_ID_START_FRAME
        S_SP_MSG_ENTRY_HDR *pkgHead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

        // 填充PKG头部
        pkgHead->u4HeaderSize = sizeof(S_SP_MSG_ENTRY_HDR);
        pkgHead->u2PkgId = D_SP_PKG_ID_START_FRAME;
        pkgHead->u4DataSize = 0;
        pkgHead->u4ElementSize = 0;

        msgBufferUsedSize += pkgHead->u4HeaderSize + pkgHead->u4DataSize; // 更新msgBuffer的已使用空间

        // std::cout << "RosSimproAD::generateHeadMsg end" << std::endl;
    }

    // 生成objectState包
    void RosSimproAD::generateEgoState(const mil_ego_state &objMessage)
    {
        std::cout << "RosSimproAD::generateObjState start" << std::endl;
        // 生成D_SP_MIL_PKG_ID_EGO_DATA
        S_SP_MSG_ENTRY_HDR *pkghead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

        // 填充PKG头部
        pkghead->u4HeaderSize = sizeof(S_SP_MSG_ENTRY_HDR);
        pkghead->u4DataSize = sizeof(S_SP_MIL_EGO_STATE);
        pkghead->u4ElementSize = sizeof(S_SP_MIL_EGO_STATE);
        pkghead->u2PkgId = D_SP_MIL_PKG_ID_EGO_DATA;

        // 填充PKG body
        S_SP_MIL_EGO_STATE *pkgBody = (S_SP_MIL_EGO_STATE *)(pkghead + 1);

        pkgBody->sObjectState.u4Id = objMessage.sObjectState.u4Id; // 主车Id为1
        strcpy(pkgBody->sObjectState.au1Name, objMessage.sObjectState.au1Name.c_str());
        strcpy(pkgBody->sObjectState.au1ModelFileName, objMessage.sObjectState.au1ModelFileName.c_str());
        strcpy(pkgBody->sObjectState.au1ModelName, objMessage.sObjectState.au1ModelName.c_str());
        for (int i = 0; i < objMessage.sObjectState.au8ParamScale.size(); i++)
        {
            pkgBody->sObjectState.au8ParamScale[i] = objMessage.sObjectState.au8ParamScale[i];
        }
        pkgBody->sObjectState.sAccel.u1Type = objMessage.sObjectState.sAccel.u1Type;
        pkgBody->sObjectState.sAccel.u4H = objMessage.sObjectState.sAccel.u4H;
        pkgBody->sObjectState.sAccel.u4P = objMessage.sObjectState.sAccel.u4P;
        pkgBody->sObjectState.sAccel.u4R = objMessage.sObjectState.sAccel.u4R;
        pkgBody->sObjectState.sAccel.u8X = objMessage.sObjectState.sAccel.u8X;
        pkgBody->sObjectState.sAccel.u8Y = objMessage.sObjectState.sAccel.u8Y;
        pkgBody->sObjectState.sAccel.u8Z = objMessage.sObjectState.sAccel.u8Z;
        pkgBody->sObjectState.sGeo.u4DimX = objMessage.sObjectState.sGeo.u4DimX;
        pkgBody->sObjectState.sGeo.u4DimY = objMessage.sObjectState.sGeo.u4DimY;
        pkgBody->sObjectState.sGeo.u4DimZ = objMessage.sObjectState.sGeo.u4DimZ;
        pkgBody->sObjectState.sGeo.u4OffX = objMessage.sObjectState.sGeo.u4OffX;
        pkgBody->sObjectState.sGeo.u4OffY = objMessage.sObjectState.sGeo.u4OffY;
        pkgBody->sObjectState.sGeo.u4OffZ = objMessage.sObjectState.sGeo.u4OffZ;
        pkgBody->sObjectState.sPos.u1Type = objMessage.sObjectState.sPos.u1Type;
        pkgBody->sObjectState.sPos.u4H = objMessage.sObjectState.sPos.u4H;
        pkgBody->sObjectState.sPos.u4P = objMessage.sObjectState.sPos.u4P;
        pkgBody->sObjectState.sPos.u4R = objMessage.sObjectState.sPos.u4R;
        pkgBody->sObjectState.sPos.u8X = objMessage.sObjectState.sPos.u8X;
        pkgBody->sObjectState.sPos.u8Y = objMessage.sObjectState.sPos.u8Y;
        pkgBody->sObjectState.sPos.u8Z = objMessage.sObjectState.sPos.u8Z;
        pkgBody->sObjectState.sSpeed.u1Type = objMessage.sObjectState.sPos.u1Type;
        pkgBody->sObjectState.sSpeed.u4H = objMessage.sObjectState.sSpeed.u4H;
        pkgBody->sObjectState.sSpeed.u4P = objMessage.sObjectState.sSpeed.u4P;
        pkgBody->sObjectState.sSpeed.u4R = objMessage.sObjectState.sSpeed.u4R;
        pkgBody->sObjectState.sSpeed.u8X = objMessage.sObjectState.sSpeed.u8X;
        pkgBody->sObjectState.sSpeed.u8Y = objMessage.sObjectState.sSpeed.u8Y;
        pkgBody->sObjectState.sSpeed.u8Z = objMessage.sObjectState.sSpeed.u8Z;
        pkgBody->sObjectState.u1Dir = objMessage.sObjectState.u1Dir;
        pkgBody->sObjectState.u1LaneId = objMessage.sObjectState.u1LaneId;
        pkgBody->sObjectState.u1Type = objMessage.sObjectState.u1Type;
        pkgBody->sObjectState.u4HdgRel = objMessage.sObjectState.u4HdgRel;
        pkgBody->sObjectState.u4Id = objMessage.sObjectState.u4Id;
        pkgBody->sObjectState.u4LaneOffset = objMessage.sObjectState.u4LaneOffset;
        pkgBody->sObjectState.u4RoadS = objMessage.sObjectState.u4RoadS;
        pkgBody->sObjectState.u4RoadT = objMessage.sObjectState.u4RoadT;
        pkgBody->sObjectState.u4TraveledDist = objMessage.sObjectState.u4TraveledDist;
        pkgBody->sObjectState.u2visMask = objMessage.sObjectState.u2visMask;
        pkgBody->sObjectState.u8RoadId = objMessage.sObjectState.u8RoadId;
        pkgBody->sObjectState.u1IsOnRoad = objMessage.sObjectState.u1IsOnRoad;
        pkgBody->sObjectState.u1category = objMessage.sObjectState.u1category;
        pkgBody->sObjectState.u8SpeedLimit = objMessage.sObjectState.u8SpeedLimit;

        pkgBody->u4initSpeed = objMessage.u4initSpeed;
        pkgBody->u8DistRoadEnd = objMessage.u8DistRoadEnd;
        pkgBody->u4LightMask = objMessage.u4LightMask;
        pkgBody->u4MasterCylinderPressure = objMessage.u4MasterCylinderPressure;
        pkgBody->u4WheelSpeedFL = objMessage.u4WheelSpeedFL;
        pkgBody->u4WheelSpeedFR = objMessage.u4WheelSpeedFR;
        pkgBody->u4WheelSpeedRL = objMessage.u4WheelSpeedRL;
        pkgBody->u4WheelSpeedRR = objMessage.u4WheelSpeedRR;
        pkgBody->u4WheelHeightLF = objMessage.u4WheelHeightLF;
        pkgBody->u4WheelHeightLR = objMessage.u4WheelHeightLR;
        pkgBody->u4WheelHeightRF = objMessage.u4WheelHeightRF;
        pkgBody->u4WheelHeightRR = objMessage.u4WheelHeightRR;
        pkgBody->u4SteerAngle = objMessage.u4SteerAngle;
        pkgBody->u1objQuantity = objMessage.u1objQuantity;
        pkgBody->u1irc_id = objMessage.u1irc_id;
        pkgBody->u1irc_left_id = objMessage.u1irc_left_id;
        pkgBody->u1irc_right_id = objMessage.u1irc_right_id;
        pkgBody->u1cipv_id = objMessage.u1cipv_id;
        pkgBody->u1lmc_id = objMessage.u1lmc_id;
        pkgBody->u1rmc_id = objMessage.u1rmc_id;
        pkgBody->u1isReachInitSpeed = objMessage.u1isReachInitSpeed;
        

        msgBufferUsedSize += pkghead->u4HeaderSize + pkghead->u4DataSize;

        std::cout << "RosSimproAD::generateObjState end" << std::endl;
    }

    // 生成DriverCtrl包
    void RosSimproAD::generateDriverCtrl(const driver_ctrl &driverCtrlMessage)
    {
        // std::cout << "RosSimproAD::generateDriverCtrl start" << std::endl;
        // 生成ASIM_PKG_ID_DRIVER_CTRL
        S_SP_MSG_ENTRY_HDR *pkgDriverCtrl = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

        // 填充PKG头部
        pkgDriverCtrl->u4HeaderSize = sizeof(S_SP_MSG_ENTRY_HDR);
        pkgDriverCtrl->u4DataSize = sizeof(S_SP_DRIVER_CTRL);
        pkgDriverCtrl->u4ElementSize = sizeof(S_SP_DRIVER_CTRL);
        pkgDriverCtrl->u2PkgId = D_SP_PKG_ID_DRIVER_CTRL;

        S_SP_DRIVER_CTRL *pkgDriverCtrlBody = (S_SP_DRIVER_CTRL *)(pkgDriverCtrl + 1);

        pkgDriverCtrlBody->u4ObjectId = driverCtrlMessage.u4ObjectId;
        pkgDriverCtrlBody->u4MtWheel = driverCtrlMessage.u4MtWheel;
        pkgDriverCtrlBody->u8SteeringTorque = driverCtrlMessage.u8SteeringTorque;
        pkgDriverCtrlBody->u8StopDistance = driverCtrlMessage.u8StopDistance;
        pkgDriverCtrlBody->u8TargetSpeed = driverCtrlMessage.u8TargetSpeed;
        pkgDriverCtrlBody->u8Vx = driverCtrlMessage.u8Vx;
        pkgDriverCtrlBody->u8Wr = driverCtrlMessage.u8Wr;
        pkgDriverCtrlBody->u1Gear = driverCtrlMessage.u1Gear;
        pkgDriverCtrlBody->u8AccelTgt = driverCtrlMessage.u8AccelTgt;
        pkgDriverCtrlBody->u8BrakePedal = driverCtrlMessage.u8BrakePedal;
        pkgDriverCtrlBody->u4ObjectId = driverCtrlMessage.u4ObjectId;
        pkgDriverCtrlBody->u8SteeringWheel = driverCtrlMessage.u8SteeringWheel;
        pkgDriverCtrlBody->u8ThrottlePedal = driverCtrlMessage.u8ThrottlePedal;
        pkgDriverCtrlBody->u8MasterCylinderPressure = driverCtrlMessage.u8MasterCylinderPressure;
        pkgDriverCtrlBody->u8VLFWheelSpd = driverCtrlMessage.u8VLFWheelSpd;
        pkgDriverCtrlBody->u8VRFWheelSpd = driverCtrlMessage.u8VRFWheelSpd;
        pkgDriverCtrlBody->u8VLRWheelSpd = driverCtrlMessage.u8VLRWheelSpd;
        pkgDriverCtrlBody->u8VRRWheelSpd = driverCtrlMessage.u8VRRWheelSpd;
        pkgDriverCtrlBody->u8Ax = driverCtrlMessage.u8Ax;
        pkgDriverCtrlBody->u8Ay = driverCtrlMessage.u8Ay;
        pkgDriverCtrlBody->u8SteeringWheelAngularRate = driverCtrlMessage.u8SteeringWheelAngularRate;
        pkgDriverCtrlBody->u8DrvTorqAct = driverCtrlMessage.u8DrvTorqAct;
        pkgDriverCtrlBody->u8Xmc = driverCtrlMessage.u8Xmc;
        pkgDriverCtrlBody->u8Ymc = driverCtrlMessage.u8Ymc;
        pkgDriverCtrlBody->u8YawThetaVehicle = driverCtrlMessage.u8YawThetaVehicle;
        pkgDriverCtrlBody->u8PitchThetaVehicle = driverCtrlMessage.u8PitchThetaVehicle;
        pkgDriverCtrlBody->u8RollThetaVehicle = driverCtrlMessage.u8RollThetaVehicle;
        pkgDriverCtrlBody->u8PitchRateVehicle = driverCtrlMessage.u8PitchRateVehicle;
        pkgDriverCtrlBody->u8RollRateVehicle = driverCtrlMessage.u8RollRateVehicle;
        pkgDriverCtrlBody->u8SinSlopeout = driverCtrlMessage.u8SinSlopeout;
        pkgDriverCtrlBody->u8VehicleCurv = driverCtrlMessage.u8VehicleCurv;
        pkgDriverCtrlBody->u8TmotorCmd = driverCtrlMessage.u8TmotorCmd;
        pkgDriverCtrlBody->u8Tmotor = driverCtrlMessage.u8Tmotor;
        pkgDriverCtrlBody->u8EnergySourceLevel = driverCtrlMessage.u8EnergySourceLevel;
        pkgDriverCtrlBody->u8WLFWheelSpd = driverCtrlMessage.u8WLFWheelSpd;
        pkgDriverCtrlBody->u8WRFWheelSpd = driverCtrlMessage.u8WRFWheelSpd;
        pkgDriverCtrlBody->u8WLRWheelSpd = driverCtrlMessage.u8WLRWheelSpd;
        pkgDriverCtrlBody->u8WRRWheelSpd = driverCtrlMessage.u8WRRWheelSpd;
        pkgDriverCtrlBody->u8WGearSpd = driverCtrlMessage.u8WGearSpd;
        pkgDriverCtrlBody->u1LFWheelRotatedDir = driverCtrlMessage.u1LFWheelRotatedDir;
        pkgDriverCtrlBody->u1LRWheelRotatedDir = driverCtrlMessage.u1LRWheelRotatedDir;
        pkgDriverCtrlBody->u1RFWheelRotatedDir = driverCtrlMessage.u1RFWheelRotatedDir;
        pkgDriverCtrlBody->u1RRWheelRotatedDir = driverCtrlMessage.u1RRWheelRotatedDir;
        pkgDriverCtrlBody->u1BrakePedalStatus = driverCtrlMessage.u1BrakePedalStatus;
        pkgDriverCtrlBody->u1VehicleDir = driverCtrlMessage.u1VehicleDir;
        pkgDriverCtrlBody->u1BrkType = driverCtrlMessage.u1BrkType;
        pkgDriverCtrlBody->u1Gear = driverCtrlMessage.u1Gear;

        msgBufferUsedSize += pkgDriverCtrl->u4HeaderSize + pkgDriverCtrl->u4DataSize; // 更新msgBuffer的已使用空间

        std::cout << "RosSimproAD::generateDriverCtrl end" << std::endl;
    }

    void RosSimproAD::generateCsvData(const csv_data &csvData)
    {
        std::cout << "RosSimproAD::generateCsvData start" << std::endl;
        //生成D_SP_PKG_ID_CSV_DATA
        S_SP_MSG_ENTRY_HDR *pkgCsvDatahead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

        //填充PKG头部
        pkgCsvDatahead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
        pkgCsvDatahead->u4DataSize         = sizeof(S_SP_CSV_DATA);
        pkgCsvDatahead->u4ElementSize      = sizeof(S_SP_CSV_DATA);
        pkgCsvDatahead->u2PkgId            = D_SP_PKG_ID_CSV_DATA;

        //填充PKG的body
        S_SP_CSV_DATA *pkgCsvDataBody      = (S_SP_CSV_DATA *)(pkgCsvDatahead + 1);

        pkgCsvDataBody->u4AccelTgt         = csvData.u4AccelTgt;                                                    //期望加速度(m/s²)
        pkgCsvDataBody->u4SteeringWheel    = csvData.u4SteeringWheel;                                                    //期望方向盘转角(rad)
        pkgCsvDataBody->u4ADStatus         = csvData.u4ADStatus;                                                   //AD算法状态

        msgBufferUsedSize += pkgCsvDatahead->u4HeaderSize + pkgCsvDatahead->u4DataSize;                //更新msgBuffer的已使用空间
        std::cout << "RosSimproAD::generateCsvData end" << std::endl;

    }
    void RosSimproAD::generateV2xWarningInformation(const v2x_warninginformation &v2xWarning)
    {
        std::cout << "RosSimproAD::generateV2xWarningInformation start" << std::endl;
        S_SP_MSG_ENTRY_HDR *pkgV2xWarningHead = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

        //填充PKG头部
        pkgV2xWarningHead->u4HeaderSize       = sizeof(S_SP_MSG_ENTRY_HDR);
        pkgV2xWarningHead->u4DataSize         = sizeof(S_SP_V2X_WARNINGINFORMATION);
        pkgV2xWarningHead->u4ElementSize      = sizeof(S_SP_V2X_WARNINGINFORMATION);
        pkgV2xWarningHead->u2PkgId            = D_SP_PKG_ID_V2X_WARNINGINFORMATION;

        //填充PKG body
        S_SP_V2X_WARNINGINFORMATION *pkgV2xWarningBody = (S_SP_V2X_WARNINGINFORMATION *)(pkgV2xWarningHead + 1);
        /*
        0：渲染端不显示
        1：前向碰撞预警（FCW）           2：交叉路口碰撞预警（ICW）
        3：左转辅助（LTA）               4：盲区预警（BSW）
        5：变道预警（LCW）               6：逆向超车预警
        7：紧急制动预警                  8：异常车辆提醒
        9：车辆失控预警                  10：道路危险状况提示
        11：限速预警                     12：闯红灯预警
        13：弱势交通参与者碰撞预警        14：绿波车速引导
        15：车内标牌                     16：前方拥堵提醒
        17：紧急车辆提醒                 18：汽车近场支付
        */
        pkgV2xWarningBody->u4Type = v2xWarning.u4Type;    //告警信息类型
        msgBufferUsedSize += pkgV2xWarningHead->u4HeaderSize + pkgV2xWarningHead->u4DataSize;                //更新msgBuffer的已使用空间

        std::cout << "RosSimproAD::generateV2xWarningInformation end" << std::endl;
    }

    // 生成Trigger数据包的尾部
    void RosSimproAD::generateTrigger()
    {
        std::cout << "RosSimproAD::generateTrigger start" << std::endl;
        // 生成D_SP_PKG_ID_SYNC
        S_SP_MSG_ENTRY_HDR *pkgTrigger = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

        // 填充PKG头部
        pkgTrigger->u4HeaderSize = sizeof(S_SP_MSG_ENTRY_HDR);
        pkgTrigger->u4DataSize = sizeof(S_SP_SYNC);
        pkgTrigger->u4ElementSize = sizeof(S_SP_SYNC);
        pkgTrigger->u2PkgId = D_SP_PKG_ID_SYNC;

        // 填充PKG body
        S_SP_SYNC *syncTrigger = (S_SP_SYNC *)(pkgTrigger + 1);
        syncTrigger->u4CmdMask = D_SP_SYNC_CMD_TRIGGER;
        std::cout << "syncTrigger->u4CmdMask=" << syncTrigger->u4CmdMask << std::endl;


        msgBufferUsedSize += pkgTrigger->u4HeaderSize + pkgTrigger->u4DataSize; // 更新msgBuffer的已使用空间
        std::cout << "RosSimproAD::generateTrigger end" << std::endl;
    }

    // 生成数据包的尾部
    void RosSimproAD::generateEndMsg()
    {
        // std::cout << "RosSimproAD::generateEndMsg start" << std::endl;
        // 生成D_SP_PKG_ID_END_FRAME
        S_SP_MSG_ENTRY_HDR *pkgEnd = (S_SP_MSG_ENTRY_HDR *)(msgBuffer + msgBufferUsedSize);

        // 填充PKG头部
        pkgEnd->u4HeaderSize = sizeof(S_SP_MSG_ENTRY_HDR);
        pkgEnd->u4DataSize = 0;
        pkgEnd->u4ElementSize = 0;
        pkgEnd->u2PkgId = D_SP_PKG_ID_END_FRAME;

        msgBufferUsedSize += pkgEnd->u4HeaderSize + pkgEnd->u4DataSize; // 更新msgBuffer的已使用空间

        msgHead1->u4DataSize = msgBufferUsedSize - msgHead1->u4HeaderSize; // Msg数据部分大小
        //  std::cout << "RosSimproAD::generateEndMsg end" << std::endl;
    }
}
