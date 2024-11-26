// Generated by gencpp from file RosAdapter/traffic_sign.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_TRAFFIC_SIGN_H
#define ROSADAPTER_MESSAGE_TRAFFIC_SIGN_H


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
struct traffic_sign_
{
  typedef traffic_sign_<ContainerAllocator> Type;

  traffic_sign_()
    : au1Type()
    , sPos()
    , u4TrafficSignId(0)
    , u4ObjectId(0)
    , au1SubType()
    , u4RoadDist(0.0)
    , u4Value(0.0)
    , u1MinLane(0)
    , u1MaxLane(0)  {
    }
  traffic_sign_(const ContainerAllocator& _alloc)
    : au1Type(_alloc)
    , sPos(_alloc)
    , u4TrafficSignId(0)
    , u4ObjectId(0)
    , au1SubType(_alloc)
    , u4RoadDist(0.0)
    , u4Value(0.0)
    , u1MinLane(0)
    , u1MaxLane(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _au1Type_type;
  _au1Type_type au1Type;

   typedef  ::RosAdapter::coord_<ContainerAllocator>  _sPos_type;
  _sPos_type sPos;

   typedef uint32_t _u4TrafficSignId_type;
  _u4TrafficSignId_type u4TrafficSignId;

   typedef uint32_t _u4ObjectId_type;
  _u4ObjectId_type u4ObjectId;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _au1SubType_type;
  _au1SubType_type au1SubType;

   typedef float _u4RoadDist_type;
  _u4RoadDist_type u4RoadDist;

   typedef float _u4Value_type;
  _u4Value_type u4Value;

   typedef int8_t _u1MinLane_type;
  _u1MinLane_type u1MinLane;

   typedef int8_t _u1MaxLane_type;
  _u1MaxLane_type u1MaxLane;





  typedef boost::shared_ptr< ::RosAdapter::traffic_sign_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::traffic_sign_<ContainerAllocator> const> ConstPtr;

}; // struct traffic_sign_

typedef ::RosAdapter::traffic_sign_<std::allocator<void> > traffic_sign;

typedef boost::shared_ptr< ::RosAdapter::traffic_sign > traffic_signPtr;
typedef boost::shared_ptr< ::RosAdapter::traffic_sign const> traffic_signConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::traffic_sign_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::traffic_sign_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::traffic_sign_<ContainerAllocator1> & lhs, const ::RosAdapter::traffic_sign_<ContainerAllocator2> & rhs)
{
  return lhs.au1Type == rhs.au1Type &&
    lhs.sPos == rhs.sPos &&
    lhs.u4TrafficSignId == rhs.u4TrafficSignId &&
    lhs.u4ObjectId == rhs.u4ObjectId &&
    lhs.au1SubType == rhs.au1SubType &&
    lhs.u4RoadDist == rhs.u4RoadDist &&
    lhs.u4Value == rhs.u4Value &&
    lhs.u1MinLane == rhs.u1MinLane &&
    lhs.u1MaxLane == rhs.u1MaxLane;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::traffic_sign_<ContainerAllocator1> & lhs, const ::RosAdapter::traffic_sign_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::traffic_sign_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::traffic_sign_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::traffic_sign_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::traffic_sign_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::traffic_sign_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::traffic_sign_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::traffic_sign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b667ebe94f436bba109192fd54360970";
  }

  static const char* value(const ::RosAdapter::traffic_sign_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb667ebe94f436bbaULL;
  static const uint64_t static_value2 = 0x109192fd54360970ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::traffic_sign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/traffic_sign";
  }

  static const char* value(const ::RosAdapter::traffic_sign_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::traffic_sign_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# /** ------ 交通标志信息 ------ */\n"
"string  au1Type\n"
"coord   sPos\n"
"uint32  u4TrafficSignId\n"
"uint32  u4ObjectId\n"
"string  au1SubType\n"
"float32 u4RoadDist\n"
"float32 u4Value\n"
"int8    u1MinLane\n"
"int8    u1MaxLane\n"
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

  static const char* value(const ::RosAdapter::traffic_sign_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::traffic_sign_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.au1Type);
      stream.next(m.sPos);
      stream.next(m.u4TrafficSignId);
      stream.next(m.u4ObjectId);
      stream.next(m.au1SubType);
      stream.next(m.u4RoadDist);
      stream.next(m.u4Value);
      stream.next(m.u1MinLane);
      stream.next(m.u1MaxLane);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct traffic_sign_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::traffic_sign_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::traffic_sign_<ContainerAllocator>& v)
  {
    s << indent << "au1Type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.au1Type);
    s << indent << "sPos: ";
    s << std::endl;
    Printer< ::RosAdapter::coord_<ContainerAllocator> >::stream(s, indent + "  ", v.sPos);
    s << indent << "u4TrafficSignId: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4TrafficSignId);
    s << indent << "u4ObjectId: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4ObjectId);
    s << indent << "au1SubType: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.au1SubType);
    s << indent << "u4RoadDist: ";
    Printer<float>::stream(s, indent + "  ", v.u4RoadDist);
    s << indent << "u4Value: ";
    Printer<float>::stream(s, indent + "  ", v.u4Value);
    s << indent << "u1MinLane: ";
    Printer<int8_t>::stream(s, indent + "  ", v.u1MinLane);
    s << indent << "u1MaxLane: ";
    Printer<int8_t>::stream(s, indent + "  ", v.u1MaxLane);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_TRAFFIC_SIGN_H
