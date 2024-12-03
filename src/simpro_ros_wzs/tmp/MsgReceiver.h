#ifndef ADADAPTER_MSGRECEIVER_H
#define ADADAPTER_MSGRECEIVER_H

#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <sys/epoll.h>

#define USE_UDP_OR_TCP true                                                           // true:使用UDP false:使用TCP

#define USE_CM    false                                                               // true:使用CM端口 false:使用不使用

#define RECV_BUF_SIZE 1024 * 1024 * 2

class MsgReceiver {
public:
    MsgReceiver();
#if USE_CM
    bool initSocket(unsigned short int simulatorPort, unsigned short int componentManagerPort); //socket初始化，返回是否成功
#else
    bool initSocket(unsigned short int simulatorPort); //socket初始化，返回是否成功
#endif

    static void recvData(); //接收数据线程
    bool sendMsg(char *buffer, unsigned long int size); //发送消息
    // void join(); // TODO: recv_thread.join()
    void setCallback(void(*_parseMsgFunc)(char *msgBuff, unsigned long int size)); //注册解析消息的回调函数
    static void addRecvMsg(char *msgBuff, int msgSize); //将接收到的数据添加到recvMsgBuf

private:
    static void checkMsgComplete(char *buffer, int bufferSize, bool &isComplete, int &msgSize); //检查buffer中是否包含完整的一帧数据
    void sendIdentity2ComponentManager(); //在UDP模式下给CM模块发送数据告知身份

};


#endif //ADADAPTER_MSGRECEIVER_H
