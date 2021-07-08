// Generated by gencpp from file controller_manager_msgs/ListControllers.msg
// DO NOT EDIT!


#ifndef CONTROLLER_MANAGER_MSGS_MESSAGE_LISTCONTROLLERS_H
#define CONTROLLER_MANAGER_MSGS_MESSAGE_LISTCONTROLLERS_H

#include <ros/service_traits.h>


#include <controller_manager_msgs/ListControllersRequest.h>
#include <controller_manager_msgs/ListControllersResponse.h>


namespace controller_manager_msgs
{

struct ListControllers
{

typedef ListControllersRequest Request;
typedef ListControllersResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ListControllers
} // namespace controller_manager_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::controller_manager_msgs::ListControllers > {
  static const char* value()
  {
    return "1341feb2e63fa791f855565d0da950d8";
  }

  static const char* value(const ::controller_manager_msgs::ListControllers&) { return value(); }
};

template<>
struct DataType< ::controller_manager_msgs::ListControllers > {
  static const char* value()
  {
    return "controller_manager_msgs/ListControllers";
  }

  static const char* value(const ::controller_manager_msgs::ListControllers&) { return value(); }
};


// service_traits::MD5Sum< ::controller_manager_msgs::ListControllersRequest> should match
// service_traits::MD5Sum< ::controller_manager_msgs::ListControllers >
template<>
struct MD5Sum< ::controller_manager_msgs::ListControllersRequest>
{
  static const char* value()
  {
    return MD5Sum< ::controller_manager_msgs::ListControllers >::value();
  }
  static const char* value(const ::controller_manager_msgs::ListControllersRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::controller_manager_msgs::ListControllersRequest> should match
// service_traits::DataType< ::controller_manager_msgs::ListControllers >
template<>
struct DataType< ::controller_manager_msgs::ListControllersRequest>
{
  static const char* value()
  {
    return DataType< ::controller_manager_msgs::ListControllers >::value();
  }
  static const char* value(const ::controller_manager_msgs::ListControllersRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::controller_manager_msgs::ListControllersResponse> should match
// service_traits::MD5Sum< ::controller_manager_msgs::ListControllers >
template<>
struct MD5Sum< ::controller_manager_msgs::ListControllersResponse>
{
  static const char* value()
  {
    return MD5Sum< ::controller_manager_msgs::ListControllers >::value();
  }
  static const char* value(const ::controller_manager_msgs::ListControllersResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::controller_manager_msgs::ListControllersResponse> should match
// service_traits::DataType< ::controller_manager_msgs::ListControllers >
template<>
struct DataType< ::controller_manager_msgs::ListControllersResponse>
{
  static const char* value()
  {
    return DataType< ::controller_manager_msgs::ListControllers >::value();
  }
  static const char* value(const ::controller_manager_msgs::ListControllersResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CONTROLLER_MANAGER_MSGS_MESSAGE_LISTCONTROLLERS_H
