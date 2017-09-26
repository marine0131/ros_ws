// Generated by gencpp from file api_msgs/GetMapFile.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_GETMAPFILE_H
#define API_MSGS_MESSAGE_GETMAPFILE_H

#include <ros/service_traits.h>


#include <api_msgs/GetMapFileRequest.h>
#include <api_msgs/GetMapFileResponse.h>


namespace api_msgs
{

struct GetMapFile
{

typedef GetMapFileRequest Request;
typedef GetMapFileResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetMapFile
} // namespace api_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api_msgs::GetMapFile > {
  static const char* value()
  {
    return "2baa25a9186e1f428009e476983334ce";
  }

  static const char* value(const ::api_msgs::GetMapFile&) { return value(); }
};

template<>
struct DataType< ::api_msgs::GetMapFile > {
  static const char* value()
  {
    return "api_msgs/GetMapFile";
  }

  static const char* value(const ::api_msgs::GetMapFile&) { return value(); }
};


// service_traits::MD5Sum< ::api_msgs::GetMapFileRequest> should match 
// service_traits::MD5Sum< ::api_msgs::GetMapFile > 
template<>
struct MD5Sum< ::api_msgs::GetMapFileRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::GetMapFile >::value();
  }
  static const char* value(const ::api_msgs::GetMapFileRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::GetMapFileRequest> should match 
// service_traits::DataType< ::api_msgs::GetMapFile > 
template<>
struct DataType< ::api_msgs::GetMapFileRequest>
{
  static const char* value()
  {
    return DataType< ::api_msgs::GetMapFile >::value();
  }
  static const char* value(const ::api_msgs::GetMapFileRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api_msgs::GetMapFileResponse> should match 
// service_traits::MD5Sum< ::api_msgs::GetMapFile > 
template<>
struct MD5Sum< ::api_msgs::GetMapFileResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::GetMapFile >::value();
  }
  static const char* value(const ::api_msgs::GetMapFileResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::GetMapFileResponse> should match 
// service_traits::DataType< ::api_msgs::GetMapFile > 
template<>
struct DataType< ::api_msgs::GetMapFileResponse>
{
  static const char* value()
  {
    return DataType< ::api_msgs::GetMapFile >::value();
  }
  static const char* value(const ::api_msgs::GetMapFileResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MSGS_MESSAGE_GETMAPFILE_H