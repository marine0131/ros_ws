// Generated by gencpp from file api_msgs/RenameMap.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_RENAMEMAP_H
#define API_MSGS_MESSAGE_RENAMEMAP_H

#include <ros/service_traits.h>


#include <api_msgs/RenameMapRequest.h>
#include <api_msgs/RenameMapResponse.h>


namespace api_msgs
{

struct RenameMap
{

typedef RenameMapRequest Request;
typedef RenameMapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RenameMap
} // namespace api_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api_msgs::RenameMap > {
  static const char* value()
  {
    return "39699d60df49381dbc83b3140a6678fe";
  }

  static const char* value(const ::api_msgs::RenameMap&) { return value(); }
};

template<>
struct DataType< ::api_msgs::RenameMap > {
  static const char* value()
  {
    return "api_msgs/RenameMap";
  }

  static const char* value(const ::api_msgs::RenameMap&) { return value(); }
};


// service_traits::MD5Sum< ::api_msgs::RenameMapRequest> should match 
// service_traits::MD5Sum< ::api_msgs::RenameMap > 
template<>
struct MD5Sum< ::api_msgs::RenameMapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::RenameMap >::value();
  }
  static const char* value(const ::api_msgs::RenameMapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::RenameMapRequest> should match 
// service_traits::DataType< ::api_msgs::RenameMap > 
template<>
struct DataType< ::api_msgs::RenameMapRequest>
{
  static const char* value()
  {
    return DataType< ::api_msgs::RenameMap >::value();
  }
  static const char* value(const ::api_msgs::RenameMapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api_msgs::RenameMapResponse> should match 
// service_traits::MD5Sum< ::api_msgs::RenameMap > 
template<>
struct MD5Sum< ::api_msgs::RenameMapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::RenameMap >::value();
  }
  static const char* value(const ::api_msgs::RenameMapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::RenameMapResponse> should match 
// service_traits::DataType< ::api_msgs::RenameMap > 
template<>
struct DataType< ::api_msgs::RenameMapResponse>
{
  static const char* value()
  {
    return DataType< ::api_msgs::RenameMap >::value();
  }
  static const char* value(const ::api_msgs::RenameMapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MSGS_MESSAGE_RENAMEMAP_H
