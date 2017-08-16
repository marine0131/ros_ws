// Generated by gencpp from file my_tutorial/GridGoal.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_GRIDGOAL_H
#define MY_TUTORIAL_MESSAGE_GRIDGOAL_H

#include <ros/service_traits.h>


#include <my_tutorial/GridGoalRequest.h>
#include <my_tutorial/GridGoalResponse.h>


namespace my_tutorial
{

struct GridGoal
{

typedef GridGoalRequest Request;
typedef GridGoalResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GridGoal
} // namespace my_tutorial


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_tutorial::GridGoal > {
  static const char* value()
  {
    return "298385bb4cdfb544530aee8b5d0a6943";
  }

  static const char* value(const ::my_tutorial::GridGoal&) { return value(); }
};

template<>
struct DataType< ::my_tutorial::GridGoal > {
  static const char* value()
  {
    return "my_tutorial/GridGoal";
  }

  static const char* value(const ::my_tutorial::GridGoal&) { return value(); }
};


// service_traits::MD5Sum< ::my_tutorial::GridGoalRequest> should match 
// service_traits::MD5Sum< ::my_tutorial::GridGoal > 
template<>
struct MD5Sum< ::my_tutorial::GridGoalRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_tutorial::GridGoal >::value();
  }
  static const char* value(const ::my_tutorial::GridGoalRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_tutorial::GridGoalRequest> should match 
// service_traits::DataType< ::my_tutorial::GridGoal > 
template<>
struct DataType< ::my_tutorial::GridGoalRequest>
{
  static const char* value()
  {
    return DataType< ::my_tutorial::GridGoal >::value();
  }
  static const char* value(const ::my_tutorial::GridGoalRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_tutorial::GridGoalResponse> should match 
// service_traits::MD5Sum< ::my_tutorial::GridGoal > 
template<>
struct MD5Sum< ::my_tutorial::GridGoalResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_tutorial::GridGoal >::value();
  }
  static const char* value(const ::my_tutorial::GridGoalResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_tutorial::GridGoalResponse> should match 
// service_traits::DataType< ::my_tutorial::GridGoal > 
template<>
struct DataType< ::my_tutorial::GridGoalResponse>
{
  static const char* value()
  {
    return DataType< ::my_tutorial::GridGoal >::value();
  }
  static const char* value(const ::my_tutorial::GridGoalResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_GRIDGOAL_H