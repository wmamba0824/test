/* ======================================================================================================
 *     file:  vtd_trigger.cpp
 * ------------------------------------------------------------------------------------------------------
 *  purpose:  send vtd rdb trigger 
 * ------------------------------------------------------------------------------------------------------
 *      edit: 05.05.2020 by SUN JN       @ CICV
 *            -- release version 1.0
 *               + send vtd rdb trigger 
 *      edit: 06.16.2020 by SUN JN       @ CICV
 *            -- release version 1.1
 *               + add targetIP
 * ======================================================================================================
 */
#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>
#include <limits>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <tf/transform_datatypes.h>
#include <math.h>

#include "RDBHandler.hh"

#define DEFAULT_PORT        48190   /* for image port it should be 48192 */
#define DEFAULT_BUFFER      204800


char  szServer[128];             // Server to connect to
int   iPort     = DEFAULT_PORT;  // Port on server to connect to

static int sClient=-1;


// function prototypes
int connectTCP( std::string targetIP, int iPort);
void sendTrigger( int & sendSocket, const double & simTime, const unsigned int & simFrame, int speed_up );

int main(int argc, char **argv)
{
    /*** VTD communication initialization ***/

    char* szBuffer = new char[DEFAULT_BUFFER];  // allocate on heap
    int           ret;

    static bool sVerbose     = false;
    static bool sSendTrigger = true;

    unsigned int  bytesInBuffer = 0;
    size_t        bufferSize    = sizeof( RDB_MSG_HDR_t );
    unsigned char *pData        = ( unsigned char* ) calloc( 1, bufferSize );
    unsigned int  count         = 0;

    /*** VTD communication initialization finished ***/


    /*** ROS stuff ***/
    ros::init(argc, argv, "vtd_trigger");

    double speed_up = 1;
    std::string targetIP = "127.0.0.1";

    ros::NodeHandle n;
    
    n.getParam("speed_up", speed_up);
    n.getParam("targetIP", targetIP);

    std::cout << "speed_up = " << speed_up << std::endl;
    std::cout << "targetIP = " << targetIP << std::endl;

    ros::Rate loop_rate( 100 );


    sClient = connectTCP( targetIP, iPort );

    // start main loop
    while (ros::ok())
    {        

        bool bMsgComplete = false;

        // read a complete message
        while ( !bMsgComplete )
        {
            if ( sSendTrigger && !( count++ % 1000 ) )
            {
                sendTrigger( sClient, 0, 0, speed_up);
		//std::cout << "count %1000 | " << (count % 1000) << std::endl;
            }


            ret = recv( sClient, szBuffer, DEFAULT_BUFFER, 0 );

            if ( ret == -1 )
            {
                printf( "recv() failed: %s\n", strerror( errno ) );
                break;
            }

            if ( ret != 0 )
            {
                // do we have to grow the buffer??
                if ( ( bytesInBuffer + ret ) > bufferSize )
                {
                    pData      = ( unsigned char* ) realloc( pData, bytesInBuffer + ret );
                    bufferSize = bytesInBuffer + ret;
                }

                memcpy( pData + bytesInBuffer, szBuffer, ret );
                bytesInBuffer += ret;

            if ( sSendTrigger )
            {
                sendTrigger( sClient, ( ( RDB_MSG_t* ) pData )->hdr.simTime, ( ( RDB_MSG_t* ) pData )->hdr.frameNo, speed_up );
		ROS_INFO(" ");
                std::cout << "sendTrigger simTime = " << ( ( RDB_MSG_t* ) pData )->hdr.simTime << " | frameNo = "<< ( ( RDB_MSG_t* ) pData )->hdr.frameNo << std::endl;

            }

                // already complete messagae?
                if ( bytesInBuffer >= sizeof( RDB_MSG_HDR_t ) )
                {
                    RDB_MSG_HDR_t* hdr = ( RDB_MSG_HDR_t* ) pData;

                    // is this message containing the valid magic number?
                    if ( hdr->magicNo != RDB_MAGIC_NO )
                    {
                        printf( "message receiving is out of sync; discarding data" );
                        bytesInBuffer = 0;
                    }

                    while ( bytesInBuffer >= ( hdr->headerSize + hdr->dataSize ) )
                    {
                        unsigned int msgSize = hdr->headerSize + hdr->dataSize;
                        bool         isImage = false;

                        // print the message
                        if ( sVerbose )
                            Framework::RDBHandler::printMessage( ( RDB_MSG_t* ) pData, true );

                        // now parse the message
                        //parseRDBMessage( ( RDB_MSG_t* ) pData, isImage );

                        // remove message from queue
                        memmove( pData, pData + msgSize, bytesInBuffer - msgSize );
                        bytesInBuffer -= msgSize;

                        bMsgComplete = true;
                    }
                }
            }
        }

        // pub message
        
        loop_rate.sleep();

    }
    ::close(sClient);
    return 0;
}

int connectTCP( std::string targetIP, int iPort )
{
    struct sockaddr_in server;
    struct hostent    *host = NULL;
    int    sClient  = -1;

    strcpy( szServer, targetIP.c_str());

    sClient = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

    if ( sClient == -1 )
    {
        ROS_ERROR("socket() failed: %s\n", strerror( errno ) );
        //return 1;
    }

    int opt = 1;
    setsockopt ( sClient, IPPROTO_TCP, TCP_NODELAY, &opt, sizeof( opt ) );

    server.sin_family      = AF_INET;
    server.sin_port        = htons(iPort);
    server.sin_addr.s_addr = inet_addr(szServer);

    //
    // If the supplied server address wasn't in the form
    // "aaa.bbb.ccc.ddd" it's a hostname, so try to resolve it
    //
    if ( server.sin_addr.s_addr == INADDR_NONE )
    {
        host = gethostbyname(szServer);
        if ( host == NULL )
        {
            ROS_ERROR( "Unable to resolve VTD server: %s\n", szServer );
            //return 1;
        }
        memcpy( &server.sin_addr, host->h_addr_list[0], host->h_length );
    }
    // wait for connection
    bool bConnected = false;

    while ( !bConnected ) 
    {
        if (connect( sClient, (struct sockaddr *)&server, sizeof( server ) ) == -1 )
        {
            ROS_ERROR( "VTD connect() failed: %s\n", strerror( errno ) );
            sleep( 1 );
        }
        else
            bConnected = true;
    }  

    std::cout << "VTD connected!" << " | ip = " << targetIP << " | port = " << iPort << " | sClient = " << sClient << std::endl;

    return sClient;
    //ROS_INFO( "VTD connected!\n" );
}


void sendTrigger( int & sendSocket, const double & simTime, const unsigned int & simFrame, int speed_up)
{
  Framework::RDBHandler myHandler;

  myHandler.initMsg();

  RDB_TRIGGER_t *myTrigger = ( RDB_TRIGGER_t* ) myHandler.addPackage( simTime, simFrame, RDB_PKG_ID_TRIGGER );

  if ( !myTrigger )
    return;

  myTrigger->frameNo = simFrame + 1;
  myTrigger->deltaT  = 0.01 * speed_up;

  int retVal = send( sendSocket, ( const char* ) ( myHandler.getMsg() ), myHandler.getMsgTotalSize(), 0 );

  if ( !retVal )
    fprintf( stderr, "sendTrigger: could not send trigger\n" );

}
