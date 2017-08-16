// Generated by gencpp from file my_tutorial/AddGoalRequest.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_ADDGOALREQUEST_H
#define MY_TUTORIAL_MESSAGE_ADDGOALREQUEST_H


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
struct AddGoalRequest_
{
  typedef AddGoalRequest_<ContainerAllocator> Type;

  AddGoalRequest_()
    : mapName()
    , goalName()  {
    }
  AddGoalRequest_(const ContainerAllocator& _alloc)
    : mapName(_alloc)
    , goalName(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mapName_type;
  _mapName_type mapName;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _goalName_type;
  _goalName_type goalName;




  typedef boost::shared_ptr< ::my_tutorial::AddGoalRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_tutorial::AddGoalRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AddGoalRequest_

typedef ::my_tutorial::AddGoalRequest_<std::allocator<void> > AddGoalRequest;

typedef boost::shared_ptr< ::my_tutorial::AddGoalRequest > AddGoalRequestPtr;
typedef boost::shared_ptr< ::my_tutorial::AddGoalRequest const> AddGoalRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_tutorial::AddGoalRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_tutorial

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'my_tutorial': ['/home/whj/catkin_ws/src/my_tutorial/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::AddGoalRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::AddGoalRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::AddGoalRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f2b7bd197c8eeb3abbefa402ec01e6fe";
  }

  static const char* value(const ::my_tutorial::AddGoalRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf2b7bd197c8eeb3aULL;
  static const uint64_t static_value2 = 0xbbefa402ec01e6feULL;
};

template<class ContainerAllocator>
struct DataType< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_tutorial/AddGoalRequest";
  }

  static const char* value(const ::my_tutorial::AddGoalRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string mapName\n\
string goalName\n\
";
  }

  static const char* value(const ::my_tutorial::AddGoalRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mapName);
      stream.next(m.goalName);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AddGoalRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_tutorial::AddGoalRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_tutorial::AddGoalRequest_<ContainerAllocator>& v)
  {
    s << indent << "mapName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mapName);
    s << indent << "goalName: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.goalName);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_ADDGOALREQUEST_H
