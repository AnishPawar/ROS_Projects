#include <ros/ros.h>

int main(int argc,char **argv)
{
    ros::init(argc,argv,"Test_Node");
    ros::NodeHandle nh;

    ROS_INFO("Node has started");
    // ros::Rate rate(1);
    ros::Duration(1.0).sleep();
    ROS_INFO("Exit");

}