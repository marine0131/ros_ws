// Generated by gencpp from file api/MapData.msg
// DO NOT EDIT!


#ifndef API_MESSAGE_MAPDATA_H
#define API_MESSAGE_MAPDATA_H

#include <ros/service_traits.h>


#include <api/MapDataRequest.h>
#include <api/MapDataResponse.h>


namespace api
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
} // namespace api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api::MapData > {
  static const char* value()
  {
    return "7aab8e6323541cb09b49f080c6bbdaf3";
  }

  static const char* value(const ::api::MapData&) { return value(); }
};

template<>
struct DataType< ::api::MapData > {
  static const char* value()
  {
    return "api/MapData";
  }

  static const char* value(const ::api::MapData&) { return value(); }
};


// service_traits::MD5Sum< ::api::MapDataRequest> should match 
// service_traits::MD5Sum< ::api::MapData > 
template<>
struct MD5Sum< ::api::MapDataRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api::MapData >::value();
  }
  static const char* value(const ::api::MapDataRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api::MapDataRequest> should match 
// service_traits::DataType< ::api::MapData > 
template<>
struct DataType< ::api::MapDataRequest>
{
  static const char* value()
  {
    return DataType< ::api::MapData >::value();
  }
  static const char* value(const ::api::MapDataRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api::MapDataResponse> should match 
// service_traits::MD5Sum< ::api::MapData > 
template<>
struct MD5Sum< ::api::MapDataResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api::MapData >::value();
  }
  static const char* value(const ::api::MapDataResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api::MapDataResponse> should match 
// service_traits::DataType< ::api::MapData > 
template<>
struct DataType< ::api::MapDataResponse>
{
  static const char* value()
  {
    return DataType< ::api::MapData >::value();
  }
  static const char* value(const ::api::MapDataResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MESSAGE_MAPDATA_H