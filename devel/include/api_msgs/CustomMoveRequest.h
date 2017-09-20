// Generated by gencpp from file api_msgs/CustomMoveRequest.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_CUSTOMMOVEREQUEST_H
#define API_MSGS_MESSAGE_CUSTOMMOVEREQUEST_H


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
struct CustomMoveRequest_
{
  typedef CustomMoveRequest_<ContainerAllocator> Type;

  CustomMoveRequest_()
    : linear_or_angluar()
    , vel(0.0)
    , dist(0.0)  {
    }
  CustomMoveRequest_(const ContainerAllocator& _alloc)
    : linear_or_angluar(_alloc)
    , vel(0.0)
    , dist(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _linear_or_angluar_type;
  _linear_or_angluar_type linear_or_angluar;

   typedef float _vel_type;
  _vel_type vel;

   typedef float _dist_type;
  _dist_type dist;




  typedef boost::shared_ptr< ::api_msgs::CustomMoveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::api_msgs::CustomMoveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct CustomMoveRequest_

typedef ::api_msgs::CustomMoveRequest_<std::allocator<void> > CustomMoveRequest;

typedef boost::shared_ptr< ::api_msgs::CustomMoveRequest > CustomMoveRequestPtr;
typedef boost::shared_ptr< ::api_msgs::CustomMoveRequest const> CustomMoveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::api_msgs::CustomMoveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::api_msgs::CustomMoveRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::api_msgs::CustomMoveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::api_msgs::CustomMoveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0d900a16208cfdf40342c105bc0354b9";
  }

  static const char* value(const ::api_msgs::CustomMoveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0d900a16208cfdf4ULL;
  static const uint64_t static_value2 = 0x0342c105bc0354b9ULL;
};

template<class ContainerAllocator>
struct DataType< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "api_msgs/CustomMoveRequest";
  }

  static const char* value(const ::api_msgs::CustomMoveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string linear_or_angluar\n\
float32 vel\n\
float32 dist\n\
";
  }

  static const char* value(const ::api_msgs::CustomMoveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.linear_or_angluar);
      stream.next(m.vel);
      stream.next(m.dist);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CustomMoveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::api_msgs::CustomMoveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::api_msgs::CustomMoveRequest_<ContainerAllocator>& v)
  {
    s << indent << "linear_or_angluar: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.linear_or_angluar);
    s << indent << "vel: ";
    Printer<float>::stream(s, indent + "  ", v.vel);
    s << indent << "dist: ";
    Printer<float>::stream(s, indent + "  ", v.dist);
  }
};

} // namespace message_operations
} // namespace ros

#endif // API_MSGS_MESSAGE_CUSTOMMOVEREQUEST_H
