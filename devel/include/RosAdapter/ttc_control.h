// Generated by gencpp from file RosAdapter/ttc_control.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_TTC_CONTROL_H
#define ROSADAPTER_MESSAGE_TTC_CONTROL_H


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
struct ttc_control_
{
  typedef ttc_control_<ContainerAllocator> Type;

  ttc_control_()
    : u4Status(0)  {
    }
  ttc_control_(const ContainerAllocator& _alloc)
    : u4Status(0)  {
  (void)_alloc;
    }



   typedef uint32_t _u4Status_type;
  _u4Status_type u4Status;





  typedef boost::shared_ptr< ::RosAdapter::ttc_control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::ttc_control_<ContainerAllocator> const> ConstPtr;

}; // struct ttc_control_

typedef ::RosAdapter::ttc_control_<std::allocator<void> > ttc_control;

typedef boost::shared_ptr< ::RosAdapter::ttc_control > ttc_controlPtr;
typedef boost::shared_ptr< ::RosAdapter::ttc_control const> ttc_controlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::ttc_control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::ttc_control_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::ttc_control_<ContainerAllocator1> & lhs, const ::RosAdapter::ttc_control_<ContainerAllocator2> & rhs)
{
  return lhs.u4Status == rhs.u4Status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::ttc_control_<ContainerAllocator1> & lhs, const ::RosAdapter::ttc_control_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::ttc_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::ttc_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::ttc_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::ttc_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::ttc_control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::ttc_control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::ttc_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a9adebec45df2e6ca13379191df618a";
  }

  static const char* value(const ::RosAdapter::ttc_control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a9adebec45df2e6ULL;
  static const uint64_t static_value2 = 0xca13379191df618aULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::ttc_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/ttc_control";
  }

  static const char* value(const ::RosAdapter::ttc_control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::ttc_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32  u4Status\n"
;
  }

  static const char* value(const ::RosAdapter::ttc_control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::ttc_control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.u4Status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ttc_control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::ttc_control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::ttc_control_<ContainerAllocator>& v)
  {
    s << indent << "u4Status: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4Status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_TTC_CONTROL_H
