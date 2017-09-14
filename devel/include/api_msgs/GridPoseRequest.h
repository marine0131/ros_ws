// Generated by gencpp from file api_msgs/GridPoseRequest.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_GRIDPOSEREQUEST_H
#define API_MSGS_MESSAGE_GRIDPOSEREQUEST_H


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
struct GridPoseRequest_
{
  typedef GridPoseRequest_<ContainerAllocator> Type;

  GridPoseRequest_()
    : request()  {
    }
  GridPoseRequest_(const ContainerAllocator& _alloc)
    : request(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _request_type;
  _request_type request;




  typedef boost::shared_ptr< ::api_msgs::GridPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::api_msgs::GridPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GridPoseRequest_

typedef ::api_msgs::GridPoseRequest_<std::allocator<void> > GridPoseRequest;

typedef boost::shared_ptr< ::api_msgs::GridPoseRequest > GridPoseRequestPtr;
typedef boost::shared_ptr< ::api_msgs::GridPoseRequest const> GridPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::api_msgs::GridPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::api_msgs::GridPoseRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::api_msgs::GridPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::api_msgs::GridPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::api_msgs::GridPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::api_msgs::GridPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::api_msgs::GridPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::api_msgs::GridPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::api_msgs::GridPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9b13f31f7a0a36901919f7ec0d9f40d4";
  }

  static const char* value(const ::api_msgs::GridPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9b13f31f7a0a3690ULL;
  static const uint64_t static_value2 = 0x1919f7ec0d9f40d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::api_msgs::GridPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "api_msgs/GridPoseRequest";
  }

  static const char* value(const ::api_msgs::GridPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::api_msgs::GridPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string request\n\
";
  }

  static const char* value(const ::api_msgs::GridPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::api_msgs::GridPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.request);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GridPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::api_msgs::GridPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::api_msgs::GridPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "request: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.request);
  }
};

} // namespace message_operations
} // namespace ros

#endif // API_MSGS_MESSAGE_GRIDPOSEREQUEST_H