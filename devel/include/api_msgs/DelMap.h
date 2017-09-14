// Generated by gencpp from file api_msgs/DelMap.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_DELMAP_H
#define API_MSGS_MESSAGE_DELMAP_H

#include <ros/service_traits.h>


#include <api_msgs/DelMapRequest.h>
#include <api_msgs/DelMapResponse.h>


namespace api_msgs
{

struct DelMap
{

typedef DelMapRequest Request;
typedef DelMapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DelMap
} // namespace api_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api_msgs::DelMap > {
  static const char* value()
  {
    return "19a881bfc28e41e035c63a4f09440860";
  }

  static const char* value(const ::api_msgs::DelMap&) { return value(); }
};

template<>
struct DataType< ::api_msgs::DelMap > {
  static const char* value()
  {
    return "api_msgs/DelMap";
  }

  static const char* value(const ::api_msgs::DelMap&) { return value(); }
};


// service_traits::MD5Sum< ::api_msgs::DelMapRequest> should match 
// service_traits::MD5Sum< ::api_msgs::DelMap > 
template<>
struct MD5Sum< ::api_msgs::DelMapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::DelMap >::value();
  }
  static const char* value(const ::api_msgs::DelMapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::DelMapRequest> should match 
// service_traits::DataType< ::api_msgs::DelMap > 
template<>
struct DataType< ::api_msgs::DelMapRequest>
{
  static const char* value()
  {
    return DataType< ::api_msgs::DelMap >::value();
  }
  static const char* value(const ::api_msgs::DelMapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api_msgs::DelMapResponse> should match 
// service_traits::MD5Sum< ::api_msgs::DelMap > 
template<>
struct MD5Sum< ::api_msgs::DelMapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::DelMap >::value();
  }
  static const char* value(const ::api_msgs::DelMapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::DelMapResponse> should match 
// service_traits::DataType< ::api_msgs::DelMap > 
template<>
struct DataType< ::api_msgs::DelMapResponse>
{
  static const char* value()
  {
    return DataType< ::api_msgs::DelMap >::value();
  }
  static const char* value(const ::api_msgs::DelMapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MSGS_MESSAGE_DELMAP_H