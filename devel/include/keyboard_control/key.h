// Generated by gencpp from file keyboard_control/key.msg
// DO NOT EDIT!


#ifndef KEYBOARD_CONTROL_MESSAGE_KEY_H
#define KEYBOARD_CONTROL_MESSAGE_KEY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace keyboard_control
{
template <class ContainerAllocator>
struct key_
{
  typedef key_<ContainerAllocator> Type;

  key_()
    : key(0)  {
    }
  key_(const ContainerAllocator& _alloc)
    : key(0)  {
  (void)_alloc;
    }



   typedef int32_t _key_type;
  _key_type key;





  typedef boost::shared_ptr< ::keyboard_control::key_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::keyboard_control::key_<ContainerAllocator> const> ConstPtr;

}; // struct key_

typedef ::keyboard_control::key_<std::allocator<void> > key;

typedef boost::shared_ptr< ::keyboard_control::key > keyPtr;
typedef boost::shared_ptr< ::keyboard_control::key const> keyConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::keyboard_control::key_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::keyboard_control::key_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::keyboard_control::key_<ContainerAllocator1> & lhs, const ::keyboard_control::key_<ContainerAllocator2> & rhs)
{
  return lhs.key == rhs.key;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::keyboard_control::key_<ContainerAllocator1> & lhs, const ::keyboard_control::key_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace keyboard_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::keyboard_control::key_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::keyboard_control::key_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::keyboard_control::key_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::keyboard_control::key_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::keyboard_control::key_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::keyboard_control::key_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::keyboard_control::key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d5f7d6b16cb4e9d7a81b607f04247968";
  }

  static const char* value(const ::keyboard_control::key_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd5f7d6b16cb4e9d7ULL;
  static const uint64_t static_value2 = 0xa81b607f04247968ULL;
};

template<class ContainerAllocator>
struct DataType< ::keyboard_control::key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "keyboard_control/key";
  }

  static const char* value(const ::keyboard_control::key_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::keyboard_control::key_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 key\n"
;
  }

  static const char* value(const ::keyboard_control::key_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::keyboard_control::key_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct key_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::keyboard_control::key_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::keyboard_control::key_<ContainerAllocator>& v)
  {
    s << indent << "key: ";
    Printer<int32_t>::stream(s, indent + "  ", v.key);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KEYBOARD_CONTROL_MESSAGE_KEY_H
