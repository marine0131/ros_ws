// Generated by gencpp from file tcp_comm/ByteList.msg
// DO NOT EDIT!


#ifndef TCP_COMM_MESSAGE_BYTELIST_H
#define TCP_COMM_MESSAGE_BYTELIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace tcp_comm
{
template <class ContainerAllocator>
struct ByteList_
{
  typedef ByteList_<ContainerAllocator> Type;

  ByteList_()
    : header()
    , data()  {
    }
  ByteList_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::tcp_comm::ByteList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tcp_comm::ByteList_<ContainerAllocator> const> ConstPtr;

}; // struct ByteList_

typedef ::tcp_comm::ByteList_<std::allocator<void> > ByteList;

typedef boost::shared_ptr< ::tcp_comm::ByteList > ByteListPtr;
typedef boost::shared_ptr< ::tcp_comm::ByteList const> ByteListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tcp_comm::ByteList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tcp_comm::ByteList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tcp_comm

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'tcp_comm': ['/home/whj/catkin_ws/src/tcp_comm/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tcp_comm::ByteList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tcp_comm::ByteList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tcp_comm::ByteList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tcp_comm::ByteList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tcp_comm::ByteList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tcp_comm::ByteList_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tcp_comm::ByteList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6e83e7c744b829fd85f106a20dc3ada2";
  }

  static const char* value(const ::tcp_comm::ByteList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6e83e7c744b829fdULL;
  static const uint64_t static_value2 = 0x85f106a20dc3ada2ULL;
};

template<class ContainerAllocator>
struct DataType< ::tcp_comm::ByteList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tcp_comm/ByteList";
  }

  static const char* value(const ::tcp_comm::ByteList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tcp_comm::ByteList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
char[] data\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::tcp_comm::ByteList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tcp_comm::ByteList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ByteList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tcp_comm::ByteList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tcp_comm::ByteList_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TCP_COMM_MESSAGE_BYTELIST_H