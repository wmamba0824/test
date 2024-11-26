// Generated by gencpp from file RosAdapter/rosADToSimproTrigger.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_ROSADTOSIMPROTRIGGER_H
#define ROSADAPTER_MESSAGE_ROSADTOSIMPROTRIGGER_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <RosAdapter/header.h>
#include <RosAdapter/sync.h>

namespace RosAdapter
{
template <class ContainerAllocator>
struct rosADToSimproTrigger_
{
  typedef rosADToSimproTrigger_<ContainerAllocator> Type;

  rosADToSimproTrigger_()
    : head()
    , adTrigger()  {
    }
  rosADToSimproTrigger_(const ContainerAllocator& _alloc)
    : head(_alloc)
    , adTrigger(_alloc)  {
  (void)_alloc;
    }



   typedef  ::RosAdapter::header_<ContainerAllocator>  _head_type;
  _head_type head;

   typedef  ::RosAdapter::sync_<ContainerAllocator>  _adTrigger_type;
  _adTrigger_type adTrigger;





  typedef boost::shared_ptr< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> const> ConstPtr;

}; // struct rosADToSimproTrigger_

typedef ::RosAdapter::rosADToSimproTrigger_<std::allocator<void> > rosADToSimproTrigger;

typedef boost::shared_ptr< ::RosAdapter::rosADToSimproTrigger > rosADToSimproTriggerPtr;
typedef boost::shared_ptr< ::RosAdapter::rosADToSimproTrigger const> rosADToSimproTriggerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator1> & lhs, const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator2> & rhs)
{
  return lhs.head == rhs.head &&
    lhs.adTrigger == rhs.adTrigger;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator1> & lhs, const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2da15b25b1d5918bbf88a5b655854d59";
  }

  static const char* value(const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2da15b25b1d5918bULL;
  static const uint64_t static_value2 = 0xbf88a5b655854d59ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/rosADToSimproTrigger";
  }

  static const char* value(const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "header head\n"
"sync   adTrigger\n"
"================================================================================\n"
"MSG: RosAdapter/header\n"
"# /** ------ Msg header ------ */\n"
"float64 u8SimTime\n"
"uint32  u4HeaderSize\n"
"uint32  u4DataSize\n"
"uint32  u4FrameNo\n"
"================================================================================\n"
"MSG: RosAdapter/sync\n"
"# /** ------ 同步信号 ------ */\n"
"uint32 u4CmdMask\n"
"uint32 u4UserData\n"
;
  }

  static const char* value(const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.head);
      stream.next(m.adTrigger);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rosADToSimproTrigger_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::rosADToSimproTrigger_<ContainerAllocator>& v)
  {
    s << indent << "head: ";
    s << std::endl;
    Printer< ::RosAdapter::header_<ContainerAllocator> >::stream(s, indent + "  ", v.head);
    s << indent << "adTrigger: ";
    s << std::endl;
    Printer< ::RosAdapter::sync_<ContainerAllocator> >::stream(s, indent + "  ", v.adTrigger);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_ROSADTOSIMPROTRIGGER_H
