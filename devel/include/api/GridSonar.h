// Generated by gencpp from file api/GridSonar.msg
// DO NOT EDIT!


#ifndef API_MESSAGE_GRIDSONAR_H
#define API_MESSAGE_GRIDSONAR_H

#include <ros/service_traits.h>


#include <api/GridSonarRequest.h>
#include <api/GridSonarResponse.h>


namespace api
{

struct GridSonar
{

typedef GridSonarRequest Request;
typedef GridSonarResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GridSonar
} // namespace api


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api::GridSonar > {
  static const char* value()
  {
    return "669b7318ba1fac1b95da7f086bcce00d";
  }

  static const char* value(const ::api::GridSonar&) { return value(); }
};

template<>
struct DataType< ::api::GridSonar > {
  static const char* value()
  {
    return "api/GridSonar";
  }

  static const char* value(const ::api::GridSonar&) { return value(); }
};


// service_traits::MD5Sum< ::api::GridSonarRequest> should match 
// service_traits::MD5Sum< ::api::GridSonar > 
template<>
struct MD5Sum< ::api::GridSonarRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api::GridSonar >::value();
  }
  static const char* value(const ::api::GridSonarRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api::GridSonarRequest> should match 
// service_traits::DataType< ::api::GridSonar > 
template<>
struct DataType< ::api::GridSonarRequest>
{
  static const char* value()
  {
    return DataType< ::api::GridSonar >::value();
  }
  static const char* value(const ::api::GridSonarRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api::GridSonarResponse> should match 
// service_traits::MD5Sum< ::api::GridSonar > 
template<>
struct MD5Sum< ::api::GridSonarResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api::GridSonar >::value();
  }
  static const char* value(const ::api::GridSonarResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api::GridSonarResponse> should match 
// service_traits::DataType< ::api::GridSonar > 
template<>
struct DataType< ::api::GridSonarResponse>
{
  static const char* value()
  {
    return DataType< ::api::GridSonar >::value();
  }
  static const char* value(const ::api::GridSonarResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MESSAGE_GRIDSONAR_H