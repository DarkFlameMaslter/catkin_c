#include "ros/ros.h"
#include "communication_demo/key.h"

void chatterCallback(const communication_demo::key::ConstPtr& msg)
{
  ROS_INFO("i heard: %d", msg->key);
}

int main(int argc, char **argv)
{
  ros::init(argc,argv,"listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("keyboard_control_atena",1000,chatterCallback);
  ros::spin();
  return 0;
}
