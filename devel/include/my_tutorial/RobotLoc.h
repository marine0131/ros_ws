// Generated by gencpp from file my_tutorial/RobotLoc.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_ROBOTLOC_H
#define MY_TUTORIAL_MESSAGE_ROBOTLOC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_tutorial
{
template <class ContainerAllocator>
struct RobotLoc_
{
  typedef RobotLoc_<ContainerAllocator> Type;

  RobotLoc_()
    : loc(0)  {
    }
  RobotLoc_(const ContainerAllocator& _alloc)
    : loc(0)  {
  (void)_alloc;
    }



   typedef uint32_t _loc_type;
  _loc_type loc;




  typedef boost::shared_ptr< ::my_tutorial::RobotLoc_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_tutorial::RobotLoc_<ContainerAllocator> const> ConstPtr;

}; // struct RobotLoc_

typedef ::my_tutorial::RobotLoc_<std::allocator<void> > RobotLoc;

typedef boost::shared_ptr< ::my_tutorial::RobotLoc > RobotLocPtr;
typedef boost::shared_ptr< ::my_tutorial::RobotLoc const> RobotLocConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_tutorial::RobotLoc_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_tutorial::RobotLoc_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_tutorial

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'my_tutorial': ['/home/whj/catkin_ws/src/my_tutorial/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::RobotLoc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::RobotLoc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::RobotLoc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::RobotLoc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::RobotLoc_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::RobotLoc_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_tutorial::RobotLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ecc6566a90fb2860df41853cdb4d1853";
  }

  static const char* value(const ::my_tutorial::RobotLoc_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xecc6566a90fb2860ULL;
  static const uint64_t static_value2 = 0xdf41853cdb4d1853ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_tutorial::RobotLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_tutorial/RobotLoc";
  }

  static const char* value(const ::my_tutorial::RobotLoc_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_tutorial::RobotLoc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32   loc\n\
";
  }

  static const char* value(const ::my_tutorial::RobotLoc_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_tutorial::RobotLoc_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.loc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RobotLoc_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_tutorial::RobotLoc_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_tutorial::RobotLoc_<ContainerAllocator>& v)
  {
    s << indent << "loc: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.loc);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_ROBOTLOC_H