// Generated by gencpp from file my_tutorial/GridPose.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_GRIDPOSE_H
#define MY_TUTORIAL_MESSAGE_GRIDPOSE_H


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
struct GridPose_
{
  typedef GridPose_<ContainerAllocator> Type;

  GridPose_()
    : angle(0.0)
    , grid_x(0)
    , grid_y(0)  {
    }
  GridPose_(const ContainerAllocator& _alloc)
    : angle(0.0)
    , grid_x(0)
    , grid_y(0)  {
  (void)_alloc;
    }



   typedef float _angle_type;
  _angle_type angle;

   typedef int32_t _grid_x_type;
  _grid_x_type grid_x;

   typedef int32_t _grid_y_type;
  _grid_y_type grid_y;




  typedef boost::shared_ptr< ::my_tutorial::GridPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_tutorial::GridPose_<ContainerAllocator> const> ConstPtr;

}; // struct GridPose_

typedef ::my_tutorial::GridPose_<std::allocator<void> > GridPose;

typedef boost::shared_ptr< ::my_tutorial::GridPose > GridPosePtr;
typedef boost::shared_ptr< ::my_tutorial::GridPose const> GridPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_tutorial::GridPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_tutorial::GridPose_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::my_tutorial::GridPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::GridPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::GridPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::GridPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::GridPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::GridPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_tutorial::GridPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "80c7a2a3e13a164b1f55abe92db14484";
  }

  static const char* value(const ::my_tutorial::GridPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x80c7a2a3e13a164bULL;
  static const uint64_t static_value2 = 0x1f55abe92db14484ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_tutorial::GridPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_tutorial/GridPose";
  }

  static const char* value(const ::my_tutorial::GridPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_tutorial::GridPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32   angle\n\
int32   grid_x\n\
int32   grid_y\n\
";
  }

  static const char* value(const ::my_tutorial::GridPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_tutorial::GridPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.angle);
      stream.next(m.grid_x);
      stream.next(m.grid_y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GridPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_tutorial::GridPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_tutorial::GridPose_<ContainerAllocator>& v)
  {
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "grid_x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.grid_x);
    s << indent << "grid_y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.grid_y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_GRIDPOSE_H
