#include <iostream>
#include "ros/ros.h"
#include "RosSimproAD.h"

int main(int argc, char **argv)
{
    std::cout << "main start" << std::endl;

    ros::init(argc, argv, "RosAdapter_node");

    ros::NodeHandle n("RosAdapter_node");
    
    RosAdapter::RosSimproAD rsa;
    rsa.connectSimpro();

    // // wzs
    // rsa.sendTriggerToSimpro(); 

    std::cout << "test start    " << std::endl;

    ros::MultiThreadedSpinner spinner(15); // Use 4 threads

        std::cout << "test s11111111   " << std::endl;

    ros::spin(spinner);

            std::cout << "test 222222222   " << std::endl;
    //ros::spin();
    std::cout << "main end" << std::endl;
    
    return 0;
}