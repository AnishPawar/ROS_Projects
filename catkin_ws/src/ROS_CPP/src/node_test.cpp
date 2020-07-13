#include <ros/ros.h>
using namespace ros;

int main(int argc,char **argv)
{
    init(argc,argv,"Test_Node");
    NodeHandle nh;

    ROS_INFO("Node has started");
    // ros::Rate rate(1);
    Duration(1.0).sleep();
    ROS_INFO("Exit");

}