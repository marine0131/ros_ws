// Generated by gencpp from file my_tutorial/Ultrasound.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_ULTRASOUND_H
#define MY_TUTORIAL_MESSAGE_ULTRASOUND_H


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
struct Ultrasound_
{
  typedef Ultrasound_<ContainerAllocator> Type;

  Ultrasound_()
    : ultra_1(0)
    , ultra_2(0)
    , ultra_3(0)
    , ultra_4(0)
    , ultra_5(0)
    , ultra_6(0)  {
    }
  Ultrasound_(const ContainerAllocator& _alloc)
    : ultra_1(0)
    , ultra_2(0)
    , ultra_3(0)
    , ultra_4(0)
    , ultra_5(0)
    , ultra_6(0)  {
  (void)_alloc;
    }



   typedef uint8_t _ultra_1_type;
  _ultra_1_type ultra_1;

   typedef uint8_t _ultra_2_type;
  _ultra_2_type ultra_2;

   typedef uint8_t _ultra_3_type;
  _ultra_3_type ultra_3;

   typedef uint8_t _ultra_4_type;
  _ultra_4_type ultra_4;

   typedef uint8_t _ultra_5_type;
  _ultra_5_type ultra_5;

   typedef uint8_t _ultra_6_type;
  _ultra_6_type ultra_6;




  typedef boost::shared_ptr< ::my_tutorial::Ultrasound_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_tutorial::Ultrasound_<ContainerAllocator> const> ConstPtr;

}; // struct Ultrasound_

typedef ::my_tutorial::Ultrasound_<std::allocator<void> > Ultrasound;

typedef boost::shared_ptr< ::my_tutorial::Ultrasound > UltrasoundPtr;
typedef boost::shared_ptr< ::my_tutorial::Ultrasound const> UltrasoundConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_tutorial::Ultrasound_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_tutorial::Ultrasound_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::my_tutorial::Ultrasound_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::Ultrasound_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::Ultrasound_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::Ultrasound_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::Ultrasound_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::Ultrasound_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_tutorial::Ultrasound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6a2ee6ada60a58fe4ab82604f9f4f532";
  }

  static const char* value(const ::my_tutorial::Ultrasound_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6a2ee6ada60a58feULL;
  static const uint64_t static_value2 = 0x4ab82604f9f4f532ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_tutorial::Ultrasound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_tutorial/Ultrasound";
  }

  static const char* value(const ::my_tutorial::Ultrasound_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_tutorial::Ultrasound_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 ultra_1\n\
uint8 ultra_2\n\
uint8 ultra_3\n\
uint8 ultra_4\n\
uint8 ultra_5\n\
uint8 ultra_6\n\
";
  }

  static const char* value(const ::my_tutorial::Ultrasound_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_tutorial::Ultrasound_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ultra_1);
      stream.next(m.ultra_2);
      stream.next(m.ultra_3);
      stream.next(m.ultra_4);
      stream.next(m.ultra_5);
      stream.next(m.ultra_6);
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
struct Printer< ::my_tutorial::Ultrasound_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_tutorial::Ultrasound_<ContainerAllocator>& v)
  {
    s << indent << "ultra_1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ultra_1);
    s << indent << "ultra_2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ultra_2);
    s << indent << "ultra_3: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ultra_3);
    s << indent << "ultra_4: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ultra_4);
    s << indent << "ultra_5: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ultra_5);
    s << indent << "ultra_6: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ultra_6);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_ULTRASOUND_H