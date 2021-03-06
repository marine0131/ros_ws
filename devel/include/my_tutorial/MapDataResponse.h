// Generated by gencpp from file my_tutorial/MapDataResponse.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_MAPDATARESPONSE_H
#define MY_TUTORIAL_MESSAGE_MAPDATARESPONSE_H


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
struct MapDataResponse_
{
  typedef MapDataResponse_<ContainerAllocator> Type;

  MapDataResponse_()
    : mapHeight(0)
    , mapWidth(0)
    , base64Data()  {
    }
  MapDataResponse_(const ContainerAllocator& _alloc)
    : mapHeight(0)
    , mapWidth(0)
    , base64Data(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _mapHeight_type;
  _mapHeight_type mapHeight;

   typedef int32_t _mapWidth_type;
  _mapWidth_type mapWidth;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _base64Data_type;
  _base64Data_type base64Data;




  typedef boost::shared_ptr< ::my_tutorial::MapDataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_tutorial::MapDataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct MapDataResponse_

typedef ::my_tutorial::MapDataResponse_<std::allocator<void> > MapDataResponse;

typedef boost::shared_ptr< ::my_tutorial::MapDataResponse > MapDataResponsePtr;
typedef boost::shared_ptr< ::my_tutorial::MapDataResponse const> MapDataResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_tutorial::MapDataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_tutorial::MapDataResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_tutorial

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'my_tutorial': ['/home/whj/catkin_ws/src/my_tutorial/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::MapDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_tutorial::MapDataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::MapDataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_tutorial::MapDataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::MapDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_tutorial::MapDataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_tutorial::MapDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d847e4977b8c78a04184e18a1ba00dcd";
  }

  static const char* value(const ::my_tutorial::MapDataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd847e4977b8c78a0ULL;
  static const uint64_t static_value2 = 0x4184e18a1ba00dcdULL;
};

template<class ContainerAllocator>
struct DataType< ::my_tutorial::MapDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_tutorial/MapDataResponse";
  }

  static const char* value(const ::my_tutorial::MapDataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_tutorial::MapDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 mapHeight\n\
int32 mapWidth\n\
string base64Data\n\
\n\
";
  }

  static const char* value(const ::my_tutorial::MapDataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_tutorial::MapDataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.mapHeight);
      stream.next(m.mapWidth);
      stream.next(m.base64Data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MapDataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_tutorial::MapDataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_tutorial::MapDataResponse_<ContainerAllocator>& v)
  {
    s << indent << "mapHeight: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mapHeight);
    s << indent << "mapWidth: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mapWidth);
    s << indent << "base64Data: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.base64Data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_MAPDATARESPONSE_H
