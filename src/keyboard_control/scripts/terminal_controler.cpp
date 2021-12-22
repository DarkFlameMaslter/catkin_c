#include "ros/ros.h"
#include "keyboard_control/key.h"
#include <signal.h>
#include <termios.h>
#include <stdio.h>

#define KEYCODE_R 0x43
#define KEYCODE_L 0x44
#define KEYCODE_U 0x41
#define KEYCODE_D 0x42
#define KEYCODE_Q 0x71
#define KEYCODE_1 0x31

class KeyControl
{
public:
  KeyControl();
  void keyLoop();

private:
  ros::NodeHandle n;
  int key;
  ros::Publisher key_pub;

};

KeyControl::KeyControl():
key(0)
{
  key_pub = n.advertise<keyboard_control::key>("keyboard_control_atena",1000);
}


int kfd = 0;
struct termios cooked, raw;

void quit(int sig)
{
  tcsetattr(kfd, TCSANOW, &cooked);
  ros::shutdown();
  exit(0);
}

int main(int argc, char**argv)
{
  ros::init(argc,argv,"keyboard_control_terminal");
  KeyControl keycontroler;
  signal(SIGINT, quit);
  keycontroler.keyLoop();
  return 0;
}

void KeyControl::keyLoop()
  {
    char c;
    bool dirty = false;

    tcgetattr(kfd,&cooked);
    memcpy(&raw, &cooked, sizeof(struct termios));
    raw.c_lflag &=~(ICANON | ECHO);
    raw.c_cc[VEOL] = 1;
    raw.c_cc[VEOF] = 2;
    tcsetattr(kfd,TCSANOW,&raw);
    puts("Reading from keyboard");
    puts("------------------------");
    puts("Use arrow keys to move the robot!");
    keyboard_control::key msg;
    msg.key=1;
    key_pub.publish(msg);
    for(;;)
    {
      if(read(kfd, &c, 1)<0)
      {
        perror("read(): ");
        exit(-1);
      }
      key = 0;
      ROS_DEBUG("value: 0x%02X\n",c);
      ROS_INFO("get value %c", c);
      switch (c)
      {
        case KEYCODE_1:
          key = 1;
          dirty = true;
          break;
        case KEYCODE_L:
          key = 4;
          dirty = true;
          break;
        case KEYCODE_R:
          key = 6;
          dirty = true;
          break;
        case KEYCODE_U:
          key = 8;
          dirty = true;
          break;
        case KEYCODE_D:
          key = 2;
          dirty = true;
          break;
        case KEYCODE_Q:
          key = -1;
          dirty = true;
          break;
      }
      msg.key = key;
      if (dirty ==true)
      {
        key_pub.publish(msg);
        dirty = false;
        if (key == -1)
        {
          ros::shutdown();
          exit(0);
        }
      }
  }
}
