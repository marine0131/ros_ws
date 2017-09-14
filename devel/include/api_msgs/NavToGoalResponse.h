// Generated by gencpp from file api_msgs/NavToGoalResponse.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_NAVTOGOALRESPONSE_H
#define API_MSGS_MESSAGE_NAVTOGOALRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace api_msgs
{
template <class ContainerAllocator>
struct NavToGoalResponse_
{
  typedef NavToGoalResponse_<ContainerAllocator> Type;

  NavToGoalResponse_()
    : msg()  {
    }
  NavToGoalResponse_(const ContainerAllocator& _alloc)
    : msg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msg_type;
  _msg_type msg;




  typedef boost::shared_ptr< ::api_msgs::NavToGoalResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::api_msgs::NavToGoalResponse_<ContainerAllocator> const> ConstPtr;

}; // struct NavToGoalResponse_

typedef ::api_msgs::NavToGoalResponse_<std::allocator<void> > NavToGoalResponse;

typedef boost::shared_ptr< ::api_msgs::NavToGoalResponse > NavToGoalResponsePtr;
typedef boost::shared_ptr< ::api_msgs::NavToGoalResponse const> NavToGoalResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::api_msgs::NavToGoalResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace api_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'api_msgs': ['/home/whj/catkin_ws/src/api/api_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::api_msgs::NavToGoalResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::api_msgs::NavToGoalResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::api_msgs::NavToGoalResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7d96ed730776804754140b85e64c862e";
  }

  static const char* value(const ::api_msgs::NavToGoalResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7d96ed7307768047ULL;
  static const uint64_t static_value2 = 0x54140b85e64c862eULL;
};

template<class ContainerAllocator>
struct DataType< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "api_msgs/NavToGoalResponse";
  }

  static const char* value(const ::api_msgs::NavToGoalResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string msg\n\
\n\
";
  }

  static const char* value(const ::api_msgs::NavToGoalResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NavToGoalResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::api_msgs::NavToGoalResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::api_msgs::NavToGoalResponse_<ContainerAllocator>& v)
  {
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // API_MSGS_MESSAGE_NAVTOGOALRESPONSE_H
