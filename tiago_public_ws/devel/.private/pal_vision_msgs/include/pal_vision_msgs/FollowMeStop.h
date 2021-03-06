// Generated by gencpp from file pal_vision_msgs/FollowMeStop.msg
// DO NOT EDIT!


#ifndef PAL_VISION_MSGS_MESSAGE_FOLLOWMESTOP_H
#define PAL_VISION_MSGS_MESSAGE_FOLLOWMESTOP_H

#include <ros/service_traits.h>


#include <pal_vision_msgs/FollowMeStopRequest.h>
#include <pal_vision_msgs/FollowMeStopResponse.h>


namespace pal_vision_msgs
{

struct FollowMeStop
{

typedef FollowMeStopRequest Request;
typedef FollowMeStopResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FollowMeStop
} // namespace pal_vision_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pal_vision_msgs::FollowMeStop > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::pal_vision_msgs::FollowMeStop&) { return value(); }
};

template<>
struct DataType< ::pal_vision_msgs::FollowMeStop > {
  static const char* value()
  {
    return "pal_vision_msgs/FollowMeStop";
  }

  static const char* value(const ::pal_vision_msgs::FollowMeStop&) { return value(); }
};


// service_traits::MD5Sum< ::pal_vision_msgs::FollowMeStopRequest> should match
// service_traits::MD5Sum< ::pal_vision_msgs::FollowMeStop >
template<>
struct MD5Sum< ::pal_vision_msgs::FollowMeStopRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pal_vision_msgs::FollowMeStop >::value();
  }
  static const char* value(const ::pal_vision_msgs::FollowMeStopRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pal_vision_msgs::FollowMeStopRequest> should match
// service_traits::DataType< ::pal_vision_msgs::FollowMeStop >
template<>
struct DataType< ::pal_vision_msgs::FollowMeStopRequest>
{
  static const char* value()
  {
    return DataType< ::pal_vision_msgs::FollowMeStop >::value();
  }
  static const char* value(const ::pal_vision_msgs::FollowMeStopRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pal_vision_msgs::FollowMeStopResponse> should match
// service_traits::MD5Sum< ::pal_vision_msgs::FollowMeStop >
template<>
struct MD5Sum< ::pal_vision_msgs::FollowMeStopResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pal_vision_msgs::FollowMeStop >::value();
  }
  static const char* value(const ::pal_vision_msgs::FollowMeStopResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pal_vision_msgs::FollowMeStopResponse> should match
// service_traits::DataType< ::pal_vision_msgs::FollowMeStop >
template<>
struct DataType< ::pal_vision_msgs::FollowMeStopResponse>
{
  static const char* value()
  {
    return DataType< ::pal_vision_msgs::FollowMeStop >::value();
  }
  static const char* value(const ::pal_vision_msgs::FollowMeStopResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PAL_VISION_MSGS_MESSAGE_FOLLOWMESTOP_H
