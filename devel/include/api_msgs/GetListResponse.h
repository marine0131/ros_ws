// Generated by gencpp from file api_msgs/GetListResponse.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_GETLISTRESPONSE_H
#define API_MSGS_MESSAGE_GETLISTRESPONSE_H


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
struct GetListResponse_
{
  typedef GetListResponse_<ContainerAllocator> Type;

  GetListResponse_()
    : list()
    , msg()  {
    }
  GetListResponse_(const ContainerAllocator& _alloc)
    : list(_alloc)
    , msg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _list_type;
  _list_type list;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msg_type;
  _msg_type msg;




  typedef boost::shared_ptr< ::api_msgs::GetListResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::api_msgs::GetListResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetListResponse_

typedef ::api_msgs::GetListResponse_<std::allocator<void> > GetListResponse;

typedef boost::shared_ptr< ::api_msgs::GetListResponse > GetListResponsePtr;
typedef boost::shared_ptr< ::api_msgs::GetListResponse const> GetListResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::api_msgs::GetListResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::api_msgs::GetListResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::api_msgs::GetListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::api_msgs::GetListResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::api_msgs::GetListResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::api_msgs::GetListResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::api_msgs::GetListResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::api_msgs::GetListResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::api_msgs::GetListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a8a9dfc6e6eb932884b5893f306dd1b";
  }

  static const char* value(const ::api_msgs::GetListResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a8a9dfc6e6eb932ULL;
  static const uint64_t static_value2 = 0x884b5893f306dd1bULL;
};

template<class ContainerAllocator>
struct DataType< ::api_msgs::GetListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "api_msgs/GetListResponse";
  }

  static const char* value(const ::api_msgs::GetListResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::api_msgs::GetListResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string list\n\
string msg\n\
\n\
";
  }

  static const char* value(const ::api_msgs::GetListResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::api_msgs::GetListResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.list);
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetListResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::api_msgs::GetListResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::api_msgs::GetListResponse_<ContainerAllocator>& v)
  {
    s << indent << "list: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.list);
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // API_MSGS_MESSAGE_GETLISTRESPONSE_H
