// Generated by gencpp from file RosAdapter/object_uion.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_OBJECT_UION_H
#define ROSADAPTER_MESSAGE_OBJECT_UION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <RosAdapter/dynamic_object.h>
#include <RosAdapter/mark_object.h>
#include <RosAdapter/sign_object.h>

namespace RosAdapter
{
template <class ContainerAllocator>
struct object_uion_
{
  typedef object_uion_<ContainerAllocator> Type;

  object_uion_()
    : sDynamicObj()
    , sMarkObj()
    , sSignObj()  {
    }
  object_uion_(const ContainerAllocator& _alloc)
    : sDynamicObj(_alloc)
    , sMarkObj(_alloc)
    , sSignObj(_alloc)  {
  (void)_alloc;
    }



   typedef  ::RosAdapter::dynamic_object_<ContainerAllocator>  _sDynamicObj_type;
  _sDynamicObj_type sDynamicObj;

   typedef  ::RosAdapter::mark_object_<ContainerAllocator>  _sMarkObj_type;
  _sMarkObj_type sMarkObj;

   typedef  ::RosAdapter::sign_object_<ContainerAllocator>  _sSignObj_type;
  _sSignObj_type sSignObj;





  typedef boost::shared_ptr< ::RosAdapter::object_uion_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::object_uion_<ContainerAllocator> const> ConstPtr;

}; // struct object_uion_

typedef ::RosAdapter::object_uion_<std::allocator<void> > object_uion;

typedef boost::shared_ptr< ::RosAdapter::object_uion > object_uionPtr;
typedef boost::shared_ptr< ::RosAdapter::object_uion const> object_uionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::object_uion_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::object_uion_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::object_uion_<ContainerAllocator1> & lhs, const ::RosAdapter::object_uion_<ContainerAllocator2> & rhs)
{
  return lhs.sDynamicObj == rhs.sDynamicObj &&
    lhs.sMarkObj == rhs.sMarkObj &&
    lhs.sSignObj == rhs.sSignObj;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::object_uion_<ContainerAllocator1> & lhs, const ::RosAdapter::object_uion_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::object_uion_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::object_uion_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::object_uion_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::object_uion_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::object_uion_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::object_uion_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::object_uion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7852172eb40c908fcc049083af8007a0";
  }

  static const char* value(const ::RosAdapter::object_uion_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7852172eb40c908fULL;
  static const uint64_t static_value2 = 0xcc049083af8007a0ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::object_uion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/object_uion";
  }

  static const char* value(const ::RosAdapter::object_uion_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::object_uion_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dynamic_object sDynamicObj\n"
"mark_object    sMarkObj\n"
"sign_object    sSignObj \n"
"================================================================================\n"
"MSG: RosAdapter/dynamic_object\n"
"# /** ------ 传感器探测到的对象信息 ------ */\n"
"\n"
"float64    u8Dist\n"
"float64    u8NearestDist\n"
"float64    u8RelativeVelx\n"
"float64    u8RelativeVely\n"
"float64    u8RelativeAccx\n"
"float64    u8RelativeAccy\n"
"float64    u8HeadingAngle\n"
"coord      sSensorPos\n"
"coord      sNearestSensorPos\n"
"coord      sSenNearestPosXL\n"
"coord      sSenNearestPosXR\n"
"coord      sSenNearestPosYL\n"
"coord      sSenNearestPosYR\n"
"point3d[]  sBoundingBox\n"
"uint8      u1MovingSt\n"
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
"MSG: RosAdapter/point3d\n"
"float64      u8x\n"
"float64      u8y\n"
"float64      u8z\n"
"================================================================================\n"
"MSG: RosAdapter/mark_object\n"
"# 车道线\n"
"\n"
"float64[]	 au8RoadMarkCoeffL\n"
"float64[]	 au8RoadMarkCoeffR\n"
"================================================================================\n"
"MSG: RosAdapter/sign_object\n"
"# 交通标志\n"
"\n"
"float64   u8Dist\n"
"float64   u8NearestDist\n"
"float64   u8TrafficSignDistX\n"
"float64   u8TrafficSignDistY\n"
"coord     sSensorPos\n"
"coord     sNearestSensorPos\n"
"uint8     u1TrafficSignType\n"
;
  }

  static const char* value(const ::RosAdapter::object_uion_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::object_uion_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sDynamicObj);
      stream.next(m.sMarkObj);
      stream.next(m.sSignObj);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct object_uion_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::object_uion_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::object_uion_<ContainerAllocator>& v)
  {
    s << indent << "sDynamicObj: ";
    s << std::endl;
    Printer< ::RosAdapter::dynamic_object_<ContainerAllocator> >::stream(s, indent + "  ", v.sDynamicObj);
    s << indent << "sMarkObj: ";
    s << std::endl;
    Printer< ::RosAdapter::mark_object_<ContainerAllocator> >::stream(s, indent + "  ", v.sMarkObj);
    s << indent << "sSignObj: ";
    s << std::endl;
    Printer< ::RosAdapter::sign_object_<ContainerAllocator> >::stream(s, indent + "  ", v.sSignObj);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_OBJECT_UION_H
