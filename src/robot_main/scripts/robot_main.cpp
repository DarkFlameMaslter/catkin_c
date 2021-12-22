#include "ros/ros.h"
#include "robot_main/order.h"
#include "robot_main/sensor_flag.h"
#include "robot_main/key.h"
#include <stdlib.h>
#include <iostream>

class Robot{

private:
  ros::Subscriber order_board;
  ros::Subscriber sensor_flag;
  ros::Subscriber keyboard_control_atena;
  // int counter;

public:
  int current_position_x;
  int current_position_y;
  int flag;
  int keyboard_control_flag;
  Robot(ros::NodeHandle *n)
  {
    //setup
    this->current_position_x=0;
    this->current_position_y=0;

    while (ros::ok()){
      order_board = n->subscribe("order_board",1000,&Robot::goto_order_target,this);
      ROS_INFO("1");
      sensor_flag = n->subscribe("sensor_flag",1000,&Robot::get_sensors_flag,this);
      ROS_INFO("2");
      keyboard_control_atena = n->subscribe("keyboard_control_atena",1000, &Robot::keyboard_control,this);
      // ROS_INFO("the keyboard_control_flag: %d", this->keyboard_control_flag);
      // if (this->keyboard_control_flag == 1)
      // {
      //   ROS_INFO("checkin~");
      //   keyboard_robot_control();
      // }
      ros::spin();
    }
  }

  // void keyboard_robot_control()
  // {
  //   ros::NodeHandle n_;
  //   for(;;)
  //   {
  //     ROS_INFO("check!");
  //     keyboard_control_atena = n_.subscribe("keyboard_control_atena",1000, &Robot::keyboard_control,this);
  //     if (this->keyboard_control_flag == -1) break;
  //   }
  //   ROS_INFO("User stoped control!");
  // }

  // void checkForUser(const robot_main::key::ConstPtr& msg)
  // {
  //   if (msg->key == 1) this->keyboard_control_flag = 1;
  //   // else this->keyboard_control_flag = 0;
  // }

  void goto_order_target(const robot_main::order::ConstPtr& msg)
  {
    int target_x = msg->target_coordinate_x;
    int target_y = msg->target_coordinate_y;
    int move_right = target_x - this->current_position_x;
    int move_up = target_y - this->current_position_y;

    for(int i =0; i<abs(move_right); i++)
    {
      if(move_right<0)
      {
        this->current_position_x--;
        ROS_INFO("Moving left: %d,%d", this->current_position_x, this->current_position_y);
      }
      else
      {
        this->current_position_x++;
        ROS_INFO("Moving right: %d,%d", this->current_position_x, this->current_position_y);
      }
    }
    for(int i=0; i<abs(move_up); i++)
    {
      if(move_up<0)
      {
        this->current_position_y--;
        ROS_INFO("Moving down: %d,%d", this->current_position_x, this->current_position_y);
      }
      else
      {
        this->current_position_y++;
        ROS_INFO("Moving up: %d,%d", this->current_position_x, this->current_position_y);
      }
    }
    ROS_INFO("Reach target! current position: (%d,%d)", this->current_position_x, this->current_position_y);
  }

  void get_sensors_flag(const robot_main::sensor_flag::ConstPtr& msg)
  {
    this->flag = msg->flag;
    if (flag!=0){
      ROS_INFO("Error! Object detected!");
      //loop
    }
  }

  void keyboard_control(const robot_main::key::ConstPtr& msg)
  {
    int key = msg->key;
    if (key == 2)
    {
      this->current_position_y--;
      ROS_INFO("Moving down! position(%d,%d)", this->current_position_x,this->current_position_y);
    }
    if (key == 8)
    {
      this->current_position_y++;
      ROS_INFO("Moving up! position(%d,%d)", this->current_position_x,this->current_position_y);
    }
    if (key == 4)
    {
      this->current_position_x--;
      ROS_INFO("Moving left! position(%d,%d)", this->current_position_x,this->current_position_y);
    }
    if (key == 6)
    {
      this->current_position_x++;
      ROS_INFO("Moving right! position(%d,%d)", this->current_position_x,this->current_position_y);
    }
  }
};


int main(int argc, char **argv)
{
  ros::init(argc,argv,"the_robot");
  ros::NodeHandle n;
  while(ros::ok())
  {
    Robot rb = Robot(&n);
  }
  return 0;
}
