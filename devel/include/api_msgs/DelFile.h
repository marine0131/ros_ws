// Generated by gencpp from file api_msgs/DelFile.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_DELFILE_H
#define API_MSGS_MESSAGE_DELFILE_H

#include <ros/service_traits.h>


#include <api_msgs/DelFileRequest.h>
#include <api_msgs/DelFileResponse.h>


namespace api_msgs
{

struct DelFile
{

typedef DelFileRequest Request;
typedef DelFileResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DelFile
} // namespace api_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api_msgs::DelFile > {
  static const char* value()
  {
    return "7b3aa23b78bbc0f6e1b22875add7822c";
  }

  static const char* value(const ::api_msgs::DelFile&) { return value(); }
};

template<>
struct DataType< ::api_msgs::DelFile > {
  static const char* value()
  {
    return "api_msgs/DelFile";
  }

  static const char* value(const ::api_msgs::DelFile&) { return value(); }
};


// service_traits::MD5Sum< ::api_msgs::DelFileRequest> should match 
// service_traits::MD5Sum< ::api_msgs::DelFile > 
template<>
struct MD5Sum< ::api_msgs::DelFileRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::DelFile >::value();
  }
  static const char* value(const ::api_msgs::DelFileRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::DelFileRequest> should match 
// service_traits::DataType< ::api_msgs::DelFile > 
template<>
struct DataType< ::api_msgs::DelFileRequest>
{
  static const char* value()
  {
    return DataType< ::api_msgs::DelFile >::value();
  }
  static const char* value(const ::api_msgs::DelFileRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api_msgs::DelFileResponse> should match 
// service_traits::MD5Sum< ::api_msgs::DelFile > 
template<>
struct MD5Sum< ::api_msgs::DelFileResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::DelFile >::value();
  }
  static const char* value(const ::api_msgs::DelFileResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::DelFileResponse> should match 
// service_traits::DataType< ::api_msgs::DelFile > 
template<>
struct DataType< ::api_msgs::DelFileResponse>
{
  static const char* value()
  {
    return DataType< ::api_msgs::DelFile >::value();
  }
  static const char* value(const ::api_msgs::DelFileResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MSGS_MESSAGE_DELFILE_H