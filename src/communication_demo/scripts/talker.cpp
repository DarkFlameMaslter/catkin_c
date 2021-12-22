#include "ros/ros.h"
#include "communication_demo/mess.h"

//include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher chatter_pub = n.advertise<communication_demo::mess>("chatter", 1000);
  ros::Rate loop_rate(10);

  int count = 0;
  while(ros::ok())
  {
    communication_demo::mess msg;
    // std::stringstream ss;
    // ss<<"hello worlds "<<count;
    // msg.data = ss.str();
    msg.count = count;
    ROS_INFO("%ld", msg.count);
    chatter_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }
  return 0;

}
