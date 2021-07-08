// Generated by gencpp from file pal_device_msgs/LedFixedColorParams.msg
// DO NOT EDIT!


#ifndef PAL_DEVICE_MSGS_MESSAGE_LEDFIXEDCOLORPARAMS_H
#define PAL_DEVICE_MSGS_MESSAGE_LEDFIXEDCOLORPARAMS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/ColorRGBA.h>

namespace pal_device_msgs
{
template <class ContainerAllocator>
struct LedFixedColorParams_
{
  typedef LedFixedColorParams_<ContainerAllocator> Type;

  LedFixedColorParams_()
    : color()  {
    }
  LedFixedColorParams_(const ContainerAllocator& _alloc)
    : color(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::ColorRGBA_<ContainerAllocator>  _color_type;
  _color_type color;





  typedef boost::shared_ptr< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> const> ConstPtr;

}; // struct LedFixedColorParams_

typedef ::pal_device_msgs::LedFixedColorParams_<std::allocator<void> > LedFixedColorParams;

typedef boost::shared_ptr< ::pal_device_msgs::LedFixedColorParams > LedFixedColorParamsPtr;
typedef boost::shared_ptr< ::pal_device_msgs::LedFixedColorParams const> LedFixedColorParamsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator1> & lhs, const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator2> & rhs)
{
  return lhs.color == rhs.color;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator1> & lhs, const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pal_device_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3e04b62b1b39cd97e873789f0bb130e7";
  }

  static const char* value(const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3e04b62b1b39cd97ULL;
  static const uint64_t static_value2 = 0xe873789f0bb130e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_device_msgs/LedFixedColorParams";
  }

  static const char* value(const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# RGBA of color, alpha will be used as intensity if supported by the led\n"
"std_msgs/ColorRGBA color\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/ColorRGBA\n"
"float32 r\n"
"float32 g\n"
"float32 b\n"
"float32 a\n"
;
  }

  static const char* value(const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.color);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LedFixedColorParams_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_device_msgs::LedFixedColorParams_<ContainerAllocator>& v)
  {
    s << indent << "color: ";
    s << std::endl;
    Printer< ::std_msgs::ColorRGBA_<ContainerAllocator> >::stream(s, indent + "  ", v.color);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_DEVICE_MSGS_MESSAGE_LEDFIXEDCOLORPARAMS_H
