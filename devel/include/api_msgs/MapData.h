// Generated by gencpp from file api_msgs/MapData.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_MAPDATA_H
#define API_MSGS_MESSAGE_MAPDATA_H

#include <ros/service_traits.h>


#include <api_msgs/MapDataRequest.h>
#include <api_msgs/MapDataResponse.h>


namespace api_msgs
{

struct MapData
{

typedef MapDataRequest Request;
typedef MapDataResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MapData
} // namespace api_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api_msgs::MapData > {
  static const char* value()
  {
    return "7aab8e6323541cb09b49f080c6bbdaf3";
  }

  static const char* value(const ::api_msgs::MapData&) { return value(); }
};

template<>
struct DataType< ::api_msgs::MapData > {
  static const char* value()
  {
    return "api_msgs/MapData";
  }

  static const char* value(const ::api_msgs::MapData&) { return value(); }
};


// service_traits::MD5Sum< ::api_msgs::MapDataRequest> should match 
// service_traits::MD5Sum< ::api_msgs::MapData > 
template<>
struct MD5Sum< ::api_msgs::MapDataRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::MapData >::value();
  }
  static const char* value(const ::api_msgs::MapDataRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::MapDataRequest> should match 
// service_traits::DataType< ::api_msgs::MapData > 
template<>
struct DataType< ::api_msgs::MapDataRequest>
{
  static const char* value()
  {
    return DataType< ::api_msgs::MapData >::value();
  }
  static const char* value(const ::api_msgs::MapDataRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api_msgs::MapDataResponse> should match 
// service_traits::MD5Sum< ::api_msgs::MapData > 
template<>
struct MD5Sum< ::api_msgs::MapDataResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::MapData >::value();
  }
  static const char* value(const ::api_msgs::MapDataResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::MapDataResponse> should match 
// service_traits::DataType< ::api_msgs::MapData > 
template<>
struct DataType< ::api_msgs::MapDataResponse>
{
  static const char* value()
  {
    return DataType< ::api_msgs::MapData >::value();
  }
  static const char* value(const ::api_msgs::MapDataResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MSGS_MESSAGE_MAPDATA_H
