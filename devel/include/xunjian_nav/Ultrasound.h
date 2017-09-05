// Generated by gencpp from file xunjian_nav/Ultrasound.msg
// DO NOT EDIT!


#ifndef XUNJIAN_NAV_MESSAGE_ULTRASOUND_H
#define XUNJIAN_NAV_MESSAGE_ULTRASOUND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xunjian_nav
{
template <class ContainerAllocator>
struct Ultrasound_
{
  typedef Ultrasound_<ContainerAllocator> Type;

  Ultrasound_()
    : data()  {
    }
  Ultrasound_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::xunjian_nav::Ultrasound_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xunjian_nav::Ultrasound_<ContainerAllocator> const> ConstPtr;

}; // struct Ultrasound_

typedef ::xunjian_nav::Ultrasound_<std::allocator<void> > Ultrasound;

typedef boost::shared_ptr< ::xunjian_nav::Ultrasound > UltrasoundPtr;
typedef boost::shared_ptr< ::xunjian_nav::Ultrasound const> UltrasoundConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xunjian_nav::Ultrasound_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xunjian_nav::Ultrasound_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace xunjian_nav

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'xunjian_nav': ['/home/whj/catkin_ws/src/xunjian_nav/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::xunjian_nav::Ultrasound_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xunjian_nav::Ultrasound_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xunjian_nav::Ultrasound_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xunjian_nav::Ultrasound_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xunjian_nav::Ultrasound_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xunjian_nav::Ultrasound_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xunjian_nav::Ultrasound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f43a8e1b362b75baa741461b46adc7e0";
  }

  static const char* value(const ::xunjian_nav::Ultrasound_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf43a8e1b362b75baULL;
  static const uint64_t static_value2 = 0xa741461b46adc7e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::xunjian_nav::Ultrasound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xunjian_nav/Ultrasound";
  }

  static const char* value(const ::xunjian_nav::Ultrasound_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xunjian_nav::Ultrasound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] data\n\
";
  }

  static const char* value(const ::xunjian_nav::Ultrasound_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xunjian_nav::Ultrasound_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ultrasound_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xunjian_nav::Ultrasound_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xunjian_nav::Ultrasound_<ContainerAllocator>& v)
  {
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

#endif // XUNJIAN_NAV_MESSAGE_ULTRASOUND_H