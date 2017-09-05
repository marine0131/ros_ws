// Generated by gencpp from file api/LaunchCmd.msg
// DO NOT EDIT!


#ifndef API_MESSAGE_LAUNCHCMD_H
#define API_MESSAGE_LAUNCHCMD_H

#include <ros/service_traits.h>


#include <api/LaunchCmdRequest.h>
#include <api/LaunchCmdResponse.h>


namespace api
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
} // namespace api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api::LaunchCmd > {
  static const char* value()
  {
    return "18104f58f8d7c5999613f1359599e2b6";
  }

  static const char* value(const ::api::LaunchCmd&) { return value(); }
};

template<>
struct DataType< ::api::LaunchCmd > {
  static const char* value()
  {
    return "api/LaunchCmd";
  }

  static const char* value(const ::api::LaunchCmd&) { return value(); }
};


// service_traits::MD5Sum< ::api::LaunchCmdRequest> should match 
// service_traits::MD5Sum< ::api::LaunchCmd > 
template<>
struct MD5Sum< ::api::LaunchCmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api::LaunchCmd >::value();
  }
  static const char* value(const ::api::LaunchCmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api::LaunchCmdRequest> should match 
// service_traits::DataType< ::api::LaunchCmd > 
template<>
struct DataType< ::api::LaunchCmdRequest>
{
  static const char* value()
  {
    return DataType< ::api::LaunchCmd >::value();
  }
  static const char* value(const ::api::LaunchCmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api::LaunchCmdResponse> should match 
// service_traits::MD5Sum< ::api::LaunchCmd > 
template<>
struct MD5Sum< ::api::LaunchCmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api::LaunchCmd >::value();
  }
  static const char* value(const ::api::LaunchCmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api::LaunchCmdResponse> should match 
// service_traits::DataType< ::api::LaunchCmd > 
template<>
struct DataType< ::api::LaunchCmdResponse>
{
  static const char* value()
  {
    return DataType< ::api::LaunchCmd >::value();
  }
  static const char* value(const ::api::LaunchCmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MESSAGE_LAUNCHCMD_H