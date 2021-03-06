// Generated by gencpp from file my_tutorial/MapList.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_MAPLIST_H
#define MY_TUTORIAL_MESSAGE_MAPLIST_H

#include <ros/service_traits.h>


#include <my_tutorial/MapListRequest.h>
#include <my_tutorial/MapListResponse.h>


namespace my_tutorial
{

struct MapList
{

typedef MapListRequest Request;
typedef MapListResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MapList
} // namespace my_tutorial


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_tutorial::MapList > {
  static const char* value()
  {
    return "68d5e7574159c309cadccc1b40fe9cc1";
  }

  static const char* value(const ::my_tutorial::MapList&) { return value(); }
};

template<>
struct DataType< ::my_tutorial::MapList > {
  static const char* value()
  {
    return "my_tutorial/MapList";
  }

  static const char* value(const ::my_tutorial::MapList&) { return value(); }
};


// service_traits::MD5Sum< ::my_tutorial::MapListRequest> should match 
// service_traits::MD5Sum< ::my_tutorial::MapList > 
template<>
struct MD5Sum< ::my_tutorial::MapListRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_tutorial::MapList >::value();
  }
  static const char* value(const ::my_tutorial::MapListRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_tutorial::MapListRequest> should match 
// service_traits::DataType< ::my_tutorial::MapList > 
template<>
struct DataType< ::my_tutorial::MapListRequest>
{
  static const char* value()
  {
    return DataType< ::my_tutorial::MapList >::value();
  }
  static const char* value(const ::my_tutorial::MapListRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_tutorial::MapListResponse> should match 
// service_traits::MD5Sum< ::my_tutorial::MapList > 
template<>
struct MD5Sum< ::my_tutorial::MapListResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_tutorial::MapList >::value();
  }
  static const char* value(const ::my_tutorial::MapListResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_tutorial::MapListResponse> should match 
// service_traits::DataType< ::my_tutorial::MapList > 
template<>
struct DataType< ::my_tutorial::MapListResponse>
{
  static const char* value()
  {
    return DataType< ::my_tutorial::MapList >::value();
  }
  static const char* value(const ::my_tutorial::MapListResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_MAPLIST_H
