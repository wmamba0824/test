// Generated by gencpp from file RosAdapter/contact_point.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_CONTACT_POINT_H
#define ROSADAPTER_MESSAGE_CONTACT_POINT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <RosAdapter/coord.h>

namespace RosAdapter
{
template <class ContainerAllocator>
struct contact_point_
{
  typedef contact_point_<ContainerAllocator> Type;

  contact_point_()
    : sRoadDataIn()
    , u2Id(0)  {
    }
  contact_point_(const ContainerAllocator& _alloc)
    : sRoadDataIn(_alloc)
    , u2Id(0)  {
  (void)_alloc;
    }



   typedef  ::RosAdapter::coord_<ContainerAllocator>  _sRoadDataIn_type;
  _sRoadDataIn_type sRoadDataIn;

   typedef uint16_t _u2Id_type;
  _u2Id_type u2Id;





  typedef boost::shared_ptr< ::RosAdapter::contact_point_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::contact_point_<ContainerAllocator> const> ConstPtr;

}; // struct contact_point_

typedef ::RosAdapter::contact_point_<std::allocator<void> > contact_point;

typedef boost::shared_ptr< ::RosAdapter::contact_point > contact_pointPtr;
typedef boost::shared_ptr< ::RosAdapter::contact_point const> contact_pointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::contact_point_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::contact_point_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::contact_point_<ContainerAllocator1> & lhs, const ::RosAdapter::contact_point_<ContainerAllocator2> & rhs)
{
  return lhs.sRoadDataIn == rhs.sRoadDataIn &&
    lhs.u2Id == rhs.u2Id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::contact_point_<ContainerAllocator1> & lhs, const ::RosAdapter::contact_point_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::contact_point_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::contact_point_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::contact_point_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::contact_point_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::contact_point_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::contact_point_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::contact_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "41a840108b4df99218eaa97f9aa87ec5";
  }

  static const char* value(const ::RosAdapter::contact_point_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x41a840108b4df992ULL;
  static const uint64_t static_value2 = 0x18eaa97f9aa87ec5ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::contact_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/contact_point";
  }

  static const char* value(const ::RosAdapter::contact_point_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::contact_point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# /** ------ 接触点信息 ------ */\n"
"coord  sRoadDataIn\n"
"uint16 u2Id\n"
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
;
  }

  static const char* value(const ::RosAdapter::contact_point_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::contact_point_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sRoadDataIn);
      stream.next(m.u2Id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct contact_point_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::contact_point_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::contact_point_<ContainerAllocator>& v)
  {
    s << indent << "sRoadDataIn: ";
    s << std::endl;
    Printer< ::RosAdapter::coord_<ContainerAllocator> >::stream(s, indent + "  ", v.sRoadDataIn);
    s << indent << "u2Id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.u2Id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_CONTACT_POINT_H