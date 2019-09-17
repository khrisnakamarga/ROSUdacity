// Generated by gencpp from file pulson_ros/RangeArray.msg
// DO NOT EDIT!


#ifndef PULSON_ROS_MESSAGE_RANGEARRAY_H
#define PULSON_ROS_MESSAGE_RANGEARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <pulson_ros/RangeMeasurement.h>

namespace pulson_ros
{
template <class ContainerAllocator>
struct RangeArray_
{
  typedef RangeArray_<ContainerAllocator> Type;

  RangeArray_()
    : header()
    , ranges()  {
    }
  RangeArray_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ranges(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::pulson_ros::RangeMeasurement_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::pulson_ros::RangeMeasurement_<ContainerAllocator> >::other >  _ranges_type;
  _ranges_type ranges;




  typedef boost::shared_ptr< ::pulson_ros::RangeArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pulson_ros::RangeArray_<ContainerAllocator> const> ConstPtr;

}; // struct RangeArray_

typedef ::pulson_ros::RangeArray_<std::allocator<void> > RangeArray;

typedef boost::shared_ptr< ::pulson_ros::RangeArray > RangeArrayPtr;
typedef boost::shared_ptr< ::pulson_ros::RangeArray const> RangeArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pulson_ros::RangeArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pulson_ros::RangeArray_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pulson_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'pulson_ros': ['/home/robond/catkin_ws/src/pulson_ros/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pulson_ros::RangeArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pulson_ros::RangeArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pulson_ros::RangeArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pulson_ros::RangeArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pulson_ros::RangeArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pulson_ros::RangeArray_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pulson_ros::RangeArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "23e3f5e6eddc2c1c710e256861e37d57";
  }

  static const char* value(const ::pulson_ros::RangeArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x23e3f5e6eddc2c1cULL;
  static const uint64_t static_value2 = 0x710e256861e37d57ULL;
};

template<class ContainerAllocator>
struct DataType< ::pulson_ros::RangeArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pulson_ros/RangeArray";
  }

  static const char* value(const ::pulson_ros::RangeArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pulson_ros::RangeArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
pulson_ros/RangeMeasurement[] ranges\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: pulson_ros/RangeMeasurement\n\
Header header\n\
\n\
uint16 message_id\n\
uint32 responder_id\n\
\n\
uint8 range_status\n\
uint8 antenna_mode\n\
\n\
uint16 stopwatch_time\n\
\n\
uint32 precision_range\n\
uint32 coarse_range\n\
uint32 filtered_range\n\
\n\
uint16 precision_range_error\n\
uint16 coarse_range_error\n\
uint16 filtered_range_error\n\
\n\
int16 filtered_velocity\n\
uint16 filtered_velocity_error\n\
\n\
uint32 timestamp\n\
";
  }

  static const char* value(const ::pulson_ros::RangeArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pulson_ros::RangeArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ranges);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RangeArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pulson_ros::RangeArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pulson_ros::RangeArray_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ranges[]" << std::endl;
    for (size_t i = 0; i < v.ranges.size(); ++i)
    {
      s << indent << "  ranges[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pulson_ros::RangeMeasurement_<ContainerAllocator> >::stream(s, indent + "    ", v.ranges[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PULSON_ROS_MESSAGE_RANGEARRAY_H
