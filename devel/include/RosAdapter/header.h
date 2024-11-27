// Generated by gencpp from file RosAdapter/header.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_HEADER_H
#define ROSADAPTER_MESSAGE_HEADER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace RosAdapter
{
template <class ContainerAllocator>
struct header_
{
  typedef header_<ContainerAllocator> Type;

  header_()
    : u8SimTime(0.0)
    , u4HeaderSize(0)
    , u4DataSize(0)
    , u4FrameNo(0)  {
    }
  header_(const ContainerAllocator& _alloc)
    : u8SimTime(0.0)
    , u4HeaderSize(0)
    , u4DataSize(0)
    , u4FrameNo(0)  {
  (void)_alloc;
    }



   typedef double _u8SimTime_type;
  _u8SimTime_type u8SimTime;

   typedef uint32_t _u4HeaderSize_type;
  _u4HeaderSize_type u4HeaderSize;

   typedef uint32_t _u4DataSize_type;
  _u4DataSize_type u4DataSize;

   typedef uint32_t _u4FrameNo_type;
  _u4FrameNo_type u4FrameNo;





  typedef boost::shared_ptr< ::RosAdapter::header_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::header_<ContainerAllocator> const> ConstPtr;

}; // struct header_

typedef ::RosAdapter::header_<std::allocator<void> > header;

typedef boost::shared_ptr< ::RosAdapter::header > headerPtr;
typedef boost::shared_ptr< ::RosAdapter::header const> headerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::header_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::header_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::header_<ContainerAllocator1> & lhs, const ::RosAdapter::header_<ContainerAllocator2> & rhs)
{
  return lhs.u8SimTime == rhs.u8SimTime &&
    lhs.u4HeaderSize == rhs.u4HeaderSize &&
    lhs.u4DataSize == rhs.u4DataSize &&
    lhs.u4FrameNo == rhs.u4FrameNo;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::header_<ContainerAllocator1> & lhs, const ::RosAdapter::header_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::header_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::header_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::header_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::header_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::header_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::header_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::header_<ContainerAllocator> >
{
  static const char* value()
  {
    return "029ca86f5dd4b29bcf12cb8af905ab90";
  }

  static const char* value(const ::RosAdapter::header_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x029ca86f5dd4b29bULL;
  static const uint64_t static_value2 = 0xcf12cb8af905ab90ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::header_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/header";
  }

  static const char* value(const ::RosAdapter::header_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::header_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# /** ------ Msg header ------ */\n"
"float64 u8SimTime\n"
"uint32  u4HeaderSize\n"
"uint32  u4DataSize\n"
"uint32  u4FrameNo\n"
;
  }

  static const char* value(const ::RosAdapter::header_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::header_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.u8SimTime);
      stream.next(m.u4HeaderSize);
      stream.next(m.u4DataSize);
      stream.next(m.u4FrameNo);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct header_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::header_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::header_<ContainerAllocator>& v)
  {
    s << indent << "u8SimTime: ";
    Printer<double>::stream(s, indent + "  ", v.u8SimTime);
    s << indent << "u4HeaderSize: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4HeaderSize);
    s << indent << "u4DataSize: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4DataSize);
    s << indent << "u4FrameNo: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4FrameNo);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_HEADER_H