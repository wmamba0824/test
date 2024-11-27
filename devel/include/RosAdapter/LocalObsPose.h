// Generated by gencpp from file RosAdapter/LocalObsPose.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_LOCALOBSPOSE_H
#define ROSADAPTER_MESSAGE_LOCALOBSPOSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <RosAdapter/mil_object_state.h>

namespace RosAdapter
{
template <class ContainerAllocator>
struct LocalObsPose_
{
  typedef LocalObsPose_<ContainerAllocator> Type;

  LocalObsPose_()
    : local_pose()
    , milObjStates()  {
    }
  LocalObsPose_(const ContainerAllocator& _alloc)
    : local_pose(_alloc)
    , milObjStates(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _local_pose_type;
  _local_pose_type local_pose;

   typedef std::vector< ::RosAdapter::mil_object_state_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::RosAdapter::mil_object_state_<ContainerAllocator> >> _milObjStates_type;
  _milObjStates_type milObjStates;





  typedef boost::shared_ptr< ::RosAdapter::LocalObsPose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::LocalObsPose_<ContainerAllocator> const> ConstPtr;

}; // struct LocalObsPose_

typedef ::RosAdapter::LocalObsPose_<std::allocator<void> > LocalObsPose;

typedef boost::shared_ptr< ::RosAdapter::LocalObsPose > LocalObsPosePtr;
typedef boost::shared_ptr< ::RosAdapter::LocalObsPose const> LocalObsPoseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::LocalObsPose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::LocalObsPose_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::LocalObsPose_<ContainerAllocator1> & lhs, const ::RosAdapter::LocalObsPose_<ContainerAllocator2> & rhs)
{
  return lhs.local_pose == rhs.local_pose &&
    lhs.milObjStates == rhs.milObjStates;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::LocalObsPose_<ContainerAllocator1> & lhs, const ::RosAdapter::LocalObsPose_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::LocalObsPose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::LocalObsPose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::LocalObsPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::LocalObsPose_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::LocalObsPose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::LocalObsPose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::LocalObsPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fffebcc9c1d1377772720009d7127435";
  }

  static const char* value(const ::RosAdapter::LocalObsPose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfffebcc9c1d13777ULL;
  static const uint64_t static_value2 = 0x72720009d7127435ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::LocalObsPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/LocalObsPose";
  }

  static const char* value(const ::RosAdapter::LocalObsPose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::LocalObsPose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# 自定义信息 主车位姿和传感器监测物体所有信息\n"
"\n"
"geometry_msgs/PoseStamped       local_pose      #主车位置姿态\n"
"mil_object_state[]              milObjStates    #障碍物位置姿态, simpro接口提供 \n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: RosAdapter/mil_object_state\n"
"# /** ------ MIL测试环境车、行人、障碍物信息 ------ */\n"
"object_state           sObjectState\n"
"mil_object_state_base  sMilBase\n"
"================================================================================\n"
"MSG: RosAdapter/object_state\n"
"# /** ------ 对象信息 ------ */\n"
"coord           sSpeed\n"
"coord           sAccel\n"
"geometry        sGeo\n"
"coord           sPos\n"
"string          au1Name\n"
"string          au1ModelFileName\n"
"string          au1ModelName\n"
"float64[]       au8ParamScale\n"
"uint64          u8RoadId\n"
"float64         u8SpeedLimit\n"
"uint32          u4Id\n"
"float32         u4RoadS\n"
"float32         u4RoadT\n"
"float32         u4HdgRel\n"
"float32         u4LaneOffset\n"
"float32         u4TraveledDist\n"
"uint16          u2visMask\n"
"uint8           u1Type\n"
"int8            u1LaneId\n"
"uint8           u1Dir\n"
"bool            u1IsOnRoad\n"
"uint8           u1category\n"
"================================================================================\n"
"MSG: RosAdapter/coord\n"
"# /** ------ 坐标 ------ */\n"
"float64   u8X\n"
"float64   u8Y\n"
"float64   u8Z\n"
"float32   u4H\n"
"float32   u4P\n"
"float32   u4R\n"
"uint8     u1Type\n"
"================================================================================\n"
"MSG: RosAdapter/geometry\n"
"# /** ------ 几何信息 ------ */\n"
"float32 u4DimX\n"
"float32 u4DimY\n"
"float32 u4DimZ\n"
"float32 u4OffX\n"
"float32 u4OffY\n"
"float32 u4OffZ\n"
"================================================================================\n"
"MSG: RosAdapter/mil_object_state_base\n"
"#/** ------ MIL测试环境车、行人、障碍物信息描述包 ------ */\n"
"\n"
"uint32     u4LightMask\n"
"float32    u4DistanceX\n"
"float32    u4DistanceY\n"
"float32    u4VelocityX\n"
"float32    u4VelocityY\n"
"float32    u4AccelerationX\n"
"float32    u4AccelerationY\n"
"float32    u4YawRate\n"
"float32    u4Dist\n"
"float32    u4Angle\n"
"uint8      u1ObjClass\n"
"uint8      u1Flag_detected\n"
"uint8      u1Movable\n"
"uint8      u1Moving\n"
"uint8      u1Obj_Age\n"
;
  }

  static const char* value(const ::RosAdapter::LocalObsPose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::LocalObsPose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.local_pose);
      stream.next(m.milObjStates);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LocalObsPose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::LocalObsPose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::LocalObsPose_<ContainerAllocator>& v)
  {
    s << indent << "local_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.local_pose);
    s << indent << "milObjStates[]" << std::endl;
    for (size_t i = 0; i < v.milObjStates.size(); ++i)
    {
      s << indent << "  milObjStates[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::RosAdapter::mil_object_state_<ContainerAllocator> >::stream(s, indent + "    ", v.milObjStates[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_LOCALOBSPOSE_H