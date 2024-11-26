// Generated by gencpp from file RosAdapter/obu_vnfp_info.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_OBU_VNFP_INFO_H
#define ROSADAPTER_MESSAGE_OBU_VNFP_INFO_H


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
struct obu_vnfp_info_
{
  typedef obu_vnfp_info_<ContainerAllocator> Type;

  obu_vnfp_info_()
    : type(0)  {
    }
  obu_vnfp_info_(const ContainerAllocator& _alloc)
    : type(0)  {
  (void)_alloc;
    }



   typedef uint32_t _type_type;
  _type_type type;





  typedef boost::shared_ptr< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> const> ConstPtr;

}; // struct obu_vnfp_info_

typedef ::RosAdapter::obu_vnfp_info_<std::allocator<void> > obu_vnfp_info;

typedef boost::shared_ptr< ::RosAdapter::obu_vnfp_info > obu_vnfp_infoPtr;
typedef boost::shared_ptr< ::RosAdapter::obu_vnfp_info const> obu_vnfp_infoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::obu_vnfp_info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::obu_vnfp_info_<ContainerAllocator1> & lhs, const ::RosAdapter::obu_vnfp_info_<ContainerAllocator2> & rhs)
{
  return lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::obu_vnfp_info_<ContainerAllocator1> & lhs, const ::RosAdapter::obu_vnfp_info_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fddb7a9f6752fdb043992b8a34032ae9";
  }

  static const char* value(const ::RosAdapter::obu_vnfp_info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfddb7a9f6752fdb0ULL;
  static const uint64_t static_value2 = 0x43992b8a34032ae9ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/obu_vnfp_info";
  }

  static const char* value(const ::RosAdapter::obu_vnfp_info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32   type\n"
;
  }

  static const char* value(const ::RosAdapter::obu_vnfp_info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct obu_vnfp_info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::obu_vnfp_info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::obu_vnfp_info_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_OBU_VNFP_INFO_H
