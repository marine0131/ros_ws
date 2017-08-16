// Generated by gencpp from file my_tutorial/Encoder.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_ENCODER_H
#define MY_TUTORIAL_MESSAGE_ENCODER_H


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
struct Encoder_
{
  typedef Encoder_<ContainerAllocator> Type;

  Encoder_()
    : leftEncoder(0)
    , rightEncoder(0)
    , vx(0)
    , w(0)  {
    }
  Encoder_(const ContainerAllocator& _alloc)
    : leftEncoder(0)
    , rightEncoder(0)
    , vx(0)
    , w(0)  {
  (void)_alloc;
    }



   typedef int32_t _leftEncoder_type;
  _leftEncoder_type leftEncoder;

   typedef int32_t _rightEncoder_type;
  _rightEncoder_type rightEncoder;

   typedef int32_t _vx_type;
  _vx_type vx;

   typedef int32_t _w_type;
  _w_type w;




  typedef boost::shared_ptr< ::my_tutorial::Encoder_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_tutorial::Encoder_<ContainerAllocator> const> ConstPtr;

}; // struct Encoder_

typedef ::my_tutorial::Encoder_<std::allocator<void> > Encoder;

typedef boost::shared_ptr< ::my_tutorial::Encoder > EncoderPtr;
typedef boost::shared_ptr< ::my_tutorial::Encoder const> EncoderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_tutorial::Encoder_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_tutorial::Encoder_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::my_tutorial::Encoder_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::Encoder_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::Encoder_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::Encoder_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::Encoder_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::Encoder_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_tutorial::Encoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca6d386f80a6fbce4bfe5299ca3c89dd";
  }

  static const char* value(const ::my_tutorial::Encoder_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xca6d386f80a6fbceULL;
  static const uint64_t static_value2 = 0x4bfe5299ca3c89ddULL;
};

template<class ContainerAllocator>
struct DataType< ::my_tutorial::Encoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_tutorial/Encoder";
  }

  static const char* value(const ::my_tutorial::Encoder_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_tutorial::Encoder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32   leftEncoder\n\
int32   rightEncoder\n\
int32   vx\n\
int32   w\n\
";
  }

  static const char* value(const ::my_tutorial::Encoder_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_tutorial::Encoder_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.leftEncoder);
      stream.next(m.rightEncoder);
      stream.next(m.vx);
      stream.next(m.w);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Encoder_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_tutorial::Encoder_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_tutorial::Encoder_<ContainerAllocator>& v)
  {
    s << indent << "leftEncoder: ";
    Printer<int32_t>::stream(s, indent + "  ", v.leftEncoder);
    s << indent << "rightEncoder: ";
    Printer<int32_t>::stream(s, indent + "  ", v.rightEncoder);
    s << indent << "vx: ";
    Printer<int32_t>::stream(s, indent + "  ", v.vx);
    s << indent << "w: ";
    Printer<int32_t>::stream(s, indent + "  ", v.w);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_ENCODER_H
