// Generated by gencpp from file api_msgs/SetGoal.msg
// DO NOT EDIT!


#ifndef API_MSGS_MESSAGE_SETGOAL_H
#define API_MSGS_MESSAGE_SETGOAL_H

#include <ros/service_traits.h>


#include <api_msgs/SetGoalRequest.h>
#include <api_msgs/SetGoalResponse.h>


namespace api_msgs
{

struct SetGoal
{

typedef SetGoalRequest Request;
typedef SetGoalResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetGoal
} // namespace api_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::api_msgs::SetGoal > {
  static const char* value()
  {
    return "444061e7bc06ee0199b2220d81ce3a4a";
  }

  static const char* value(const ::api_msgs::SetGoal&) { return value(); }
};

template<>
struct DataType< ::api_msgs::SetGoal > {
  static const char* value()
  {
    return "api_msgs/SetGoal";
  }

  static const char* value(const ::api_msgs::SetGoal&) { return value(); }
};


// service_traits::MD5Sum< ::api_msgs::SetGoalRequest> should match 
// service_traits::MD5Sum< ::api_msgs::SetGoal > 
template<>
struct MD5Sum< ::api_msgs::SetGoalRequest>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::SetGoal >::value();
  }
  static const char* value(const ::api_msgs::SetGoalRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::SetGoalRequest> should match 
// service_traits::DataType< ::api_msgs::SetGoal > 
template<>
struct DataType< ::api_msgs::SetGoalRequest>
{
  static const char* value()
  {
    return DataType< ::api_msgs::SetGoal >::value();
  }
  static const char* value(const ::api_msgs::SetGoalRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::api_msgs::SetGoalResponse> should match 
// service_traits::MD5Sum< ::api_msgs::SetGoal > 
template<>
struct MD5Sum< ::api_msgs::SetGoalResponse>
{
  static const char* value()
  {
    return MD5Sum< ::api_msgs::SetGoal >::value();
  }
  static const char* value(const ::api_msgs::SetGoalResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::api_msgs::SetGoalResponse> should match 
// service_traits::DataType< ::api_msgs::SetGoal > 
template<>
struct DataType< ::api_msgs::SetGoalResponse>
{
  static const char* value()
  {
    return DataType< ::api_msgs::SetGoal >::value();
  }
  static const char* value(const ::api_msgs::SetGoalResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // API_MSGS_MESSAGE_SETGOAL_H
