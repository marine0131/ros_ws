// Generated by gencpp from file api_msgs/LaunchCmd.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_LAUNCHCMD_H
#define API_MSGS_MESSAGE_LAUNCHCMD_H

#include <ros/service_traits.h>


#include <api_msgs/LaunchCmdRequest.h>
#include <api_msgs/LaunchCmdResponse.h>


namespace api_msgs
{

struct LaunchCmd
{

typedef LaunchCmdRequest Request;
typedef LaunchCmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LaunchCmd
} // namespace api_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api_msgs::LaunchCmd > {
  static const char* value()
  {
    return "18104f58f8d7c5999613f1359599e2b6";
  }

  static const char* value(const ::api_msgs::LaunchCmd&) { return value(); }
};

template<>
struct DataType< ::api_msgs::LaunchCmd > {
  static const char* value()
  {
    return "api_msgs/LaunchCmd";
  }

  static const char* value(const ::api_msgs::LaunchCmd&) { return value(); }
};


// service_traits::MD5Sum< ::api_msgs::LaunchCmdRequest> should match 
// service_traits::MD5Sum< ::api_msgs::LaunchCmd > 
template<>
struct MD5Sum< ::api_msgs::LaunchCmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::LaunchCmd >::value();
  }
  static const char* value(const ::api_msgs::LaunchCmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::LaunchCmdRequest> should match 
// service_traits::DataType< ::api_msgs::LaunchCmd > 
template<>
struct DataType< ::api_msgs::LaunchCmdRequest>
{
  static const char* value()
  {
    return DataType< ::api_msgs::LaunchCmd >::value();
  }
  static const char* value(const ::api_msgs::LaunchCmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api_msgs::LaunchCmdResponse> should match 
// service_traits::MD5Sum< ::api_msgs::LaunchCmd > 
template<>
struct MD5Sum< ::api_msgs::LaunchCmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::LaunchCmd >::value();
  }
  static const char* value(const ::api_msgs::LaunchCmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::LaunchCmdResponse> should match 
// service_traits::DataType< ::api_msgs::LaunchCmd > 
template<>
struct DataType< ::api_msgs::LaunchCmdResponse>
{
  static const char* value()
  {
    return DataType< ::api_msgs::LaunchCmd >::value();
  }
  static const char* value(const ::api_msgs::LaunchCmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MSGS_MESSAGE_LAUNCHCMD_H
