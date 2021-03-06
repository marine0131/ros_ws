// Generated by gencpp from file xunjian_nav/Sonar.msg
// DO NOT EDIT!


#ifndef XUNJIAN_NAV_MESSAGE_SONAR_H
#define XUNJIAN_NAV_MESSAGE_SONAR_H


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
struct Sonar_
{
  typedef Sonar_<ContainerAllocator> Type;

  Sonar_()
    : ranges()  {
    }
  Sonar_(const ContainerAllocator& _alloc)
    : ranges(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _ranges_type;
  _ranges_type ranges;




  typedef boost::shared_ptr< ::xunjian_nav::Sonar_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xunjian_nav::Sonar_<ContainerAllocator> const> ConstPtr;

}; // struct Sonar_

typedef ::xunjian_nav::Sonar_<std::allocator<void> > Sonar;

typedef boost::shared_ptr< ::xunjian_nav::Sonar > SonarPtr;
typedef boost::shared_ptr< ::xunjian_nav::Sonar const> SonarConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xunjian_nav::Sonar_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xunjian_nav::Sonar_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::xunjian_nav::Sonar_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xunjian_nav::Sonar_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xunjian_nav::Sonar_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xunjian_nav::Sonar_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xunjian_nav::Sonar_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xunjian_nav::Sonar_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xunjian_nav::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b3544b1675481715ee9294bffd9d0c87";
  }

  static const char* value(const ::xunjian_nav::Sonar_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb3544b1675481715ULL;
  static const uint64_t static_value2 = 0xee9294bffd9d0c87ULL;
};

template<class ContainerAllocator>
struct DataType< ::xunjian_nav::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xunjian_nav/Sonar";
  }

  static const char* value(const ::xunjian_nav::Sonar_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xunjian_nav::Sonar_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32[] ranges\n\
";
  }

  static const char* value(const ::xunjian_nav::Sonar_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xunjian_nav::Sonar_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ranges);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Sonar_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xunjian_nav::Sonar_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xunjian_nav::Sonar_<ContainerAllocator>& v)
  {
    s << indent << "ranges[]" << std::endl;
    for (size_t i = 0; i < v.ranges.size(); ++i)
    {
      s << indent << "  ranges[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.ranges[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // XUNJIAN_NAV_MESSAGE_SONAR_H
