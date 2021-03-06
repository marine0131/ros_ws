// Generated by gencpp from file my_tutorial/DelGoal.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_DELGOAL_H
#define MY_TUTORIAL_MESSAGE_DELGOAL_H

#include <ros/service_traits.h>


#include <my_tutorial/DelGoalRequest.h>
#include <my_tutorial/DelGoalResponse.h>


namespace my_tutorial
{

struct DelGoal
{

typedef DelGoalRequest Request;
typedef DelGoalResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct DelGoal
} // namespace my_tutorial


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_tutorial::DelGoal > {
  static const char* value()
  {
    return "802c28d41326fad853e80597ef4c8c7f";
  }

  static const char* value(const ::my_tutorial::DelGoal&) { return value(); }
};

template<>
struct DataType< ::my_tutorial::DelGoal > {
  static const char* value()
  {
    return "my_tutorial/DelGoal";
  }

  static const char* value(const ::my_tutorial::DelGoal&) { return value(); }
};


// service_traits::MD5Sum< ::my_tutorial::DelGoalRequest> should match 
// service_traits::MD5Sum< ::my_tutorial::DelGoal > 
template<>
struct MD5Sum< ::my_tutorial::DelGoalRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_tutorial::DelGoal >::value();
  }
  static const char* value(const ::my_tutorial::DelGoalRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_tutorial::DelGoalRequest> should match 
// service_traits::DataType< ::my_tutorial::DelGoal > 
template<>
struct DataType< ::my_tutorial::DelGoalRequest>
{
  static const char* value()
  {
    return DataType< ::my_tutorial::DelGoal >::value();
  }
  static const char* value(const ::my_tutorial::DelGoalRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_tutorial::DelGoalResponse> should match 
// service_traits::MD5Sum< ::my_tutorial::DelGoal > 
template<>
struct MD5Sum< ::my_tutorial::DelGoalResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_tutorial::DelGoal >::value();
  }
  static const char* value(const ::my_tutorial::DelGoalResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_tutorial::DelGoalResponse> should match 
// service_traits::DataType< ::my_tutorial::DelGoal > 
template<>
struct DataType< ::my_tutorial::DelGoalResponse>
{
  static const char* value()
  {
    return DataType< ::my_tutorial::DelGoal >::value();
  }
  static const char* value(const ::my_tutorial::DelGoalResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_DELGOAL_H
