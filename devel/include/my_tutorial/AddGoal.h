// Generated by gencpp from file my_tutorial/AddGoal.msg
// DO NOT EDIT!


#ifndef MY_TUTORIAL_MESSAGE_ADDGOAL_H
#define MY_TUTORIAL_MESSAGE_ADDGOAL_H

#include <ros/service_traits.h>


#include <my_tutorial/AddGoalRequest.h>
#include <my_tutorial/AddGoalResponse.h>


namespace my_tutorial
{

struct AddGoal
{

typedef AddGoalRequest Request;
typedef AddGoalResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddGoal
} // namespace my_tutorial


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_tutorial::AddGoal > {
  static const char* value()
  {
    return "802c28d41326fad853e80597ef4c8c7f";
  }

  static const char* value(const ::my_tutorial::AddGoal&) { return value(); }
};

template<>
struct DataType< ::my_tutorial::AddGoal > {
  static const char* value()
  {
    return "my_tutorial/AddGoal";
  }

  static const char* value(const ::my_tutorial::AddGoal&) { return value(); }
};


// service_traits::MD5Sum< ::my_tutorial::AddGoalRequest> should match 
// service_traits::MD5Sum< ::my_tutorial::AddGoal > 
template<>
struct MD5Sum< ::my_tutorial::AddGoalRequest>
{
  static const char* value()
  {
    return MD5Sum< ::my_tutorial::AddGoal >::value();
  }
  static const char* value(const ::my_tutorial::AddGoalRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_tutorial::AddGoalRequest> should match 
// service_traits::DataType< ::my_tutorial::AddGoal > 
template<>
struct DataType< ::my_tutorial::AddGoalRequest>
{
  static const char* value()
  {
    return DataType< ::my_tutorial::AddGoal >::value();
  }
  static const char* value(const ::my_tutorial::AddGoalRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_tutorial::AddGoalResponse> should match 
// service_traits::MD5Sum< ::my_tutorial::AddGoal > 
template<>
struct MD5Sum< ::my_tutorial::AddGoalResponse>
{
  static const char* value()
  {
    return MD5Sum< ::my_tutorial::AddGoal >::value();
  }
  static const char* value(const ::my_tutorial::AddGoalResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_tutorial::AddGoalResponse> should match 
// service_traits::DataType< ::my_tutorial::AddGoal > 
template<>
struct DataType< ::my_tutorial::AddGoalResponse>
{
  static const char* value()
  {
    return DataType< ::my_tutorial::AddGoal >::value();
  }
  static const char* value(const ::my_tutorial::AddGoalResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_TUTORIAL_MESSAGE_ADDGOAL_H
