#include "ros/ros.h"
#include "sensors_report/sensor_flag.h"
#include <iostream>

int main(int argc, char **argv)
{
  ros::init(argc,argv,"sensor");
  ros::NodeHandle n;
  ros::Publisher flag_board = n.advertise<sensors_report::sensor_flag>("sensor_flag",1000);
  // int flag =0;
  sensors_report::sensor_flag msg;
  while (ros::ok()){
    std::cout<<"type in flag(0/1): ";
    std::cin>>msg.flag;
    ROS_INFO("sending flag to robot...");
    flag_board.publish(msg);
    ros::spinOnce();
  }
  return 0;
}
