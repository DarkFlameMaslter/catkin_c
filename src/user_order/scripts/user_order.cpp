#include "ros/ros.h"
#include "user_order/order.h"
#include <iostream>

int main(int argc, char **argv)
{
  ros::init(argc,argv,"order_terminal");
  ros::NodeHandle n;
  ros::Publisher order_board = n.advertise<user_order::order>("order_board",1000);
  ros::Rate loop_rate(1);

  int order_position_x;
  int order_position_y;
  user_order::order target;
  while(ros::ok())
  {
    std::cout<<"type in target corrdinate(x y): ";
    std::cin>>target.target_coordinate_x>>target.target_coordinate_y;
    ROS_INFO("Sending to order board!!");
    order_board.publish(target);
    ros::spinOnce();
  }
  return 0;
}
