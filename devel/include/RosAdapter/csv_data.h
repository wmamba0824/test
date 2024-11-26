// Generated by gencpp from file RosAdapter/csv_data.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_CSV_DATA_H
#define ROSADAPTER_MESSAGE_CSV_DATA_H


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
struct csv_data_
{
  typedef csv_data_<ContainerAllocator> Type;

  csv_data_()
    : u4AccelTgt(0.0)
    , u4SteeringWheel(0.0)
    , u4ADStatus(0)  {
    }
  csv_data_(const ContainerAllocator& _alloc)
    : u4AccelTgt(0.0)
    , u4SteeringWheel(0.0)
    , u4ADStatus(0)  {
  (void)_alloc;
    }



   typedef float _u4AccelTgt_type;
  _u4AccelTgt_type u4AccelTgt;

   typedef float _u4SteeringWheel_type;
  _u4SteeringWheel_type u4SteeringWheel;

   typedef uint32_t _u4ADStatus_type;
  _u4ADStatus_type u4ADStatus;





  typedef boost::shared_ptr< ::RosAdapter::csv_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::csv_data_<ContainerAllocator> const> ConstPtr;

}; // struct csv_data_

typedef ::RosAdapter::csv_data_<std::allocator<void> > csv_data;

typedef boost::shared_ptr< ::RosAdapter::csv_data > csv_dataPtr;
typedef boost::shared_ptr< ::RosAdapter::csv_data const> csv_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::csv_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::csv_data_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::csv_data_<ContainerAllocator1> & lhs, const ::RosAdapter::csv_data_<ContainerAllocator2> & rhs)
{
  return lhs.u4AccelTgt == rhs.u4AccelTgt &&
    lhs.u4SteeringWheel == rhs.u4SteeringWheel &&
    lhs.u4ADStatus == rhs.u4ADStatus;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::csv_data_<ContainerAllocator1> & lhs, const ::RosAdapter::csv_data_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::csv_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::csv_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::csv_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::csv_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::csv_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::csv_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::csv_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "83835cec71cad0ec066fba30fc82c5c0";
  }

  static const char* value(const ::RosAdapter::csv_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x83835cec71cad0ecULL;
  static const uint64_t static_value2 = 0x066fba30fc82c5c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::csv_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/csv_data";
  }

  static const char* value(const ::RosAdapter::csv_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::csv_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# /** ------ AD发送给simpro的CSV数据 ------ */\n"
"\n"
"float32  u4AccelTgt\n"
"float32  u4SteeringWheel\n"
"uint32   u4ADStatus\n"
;
  }

  static const char* value(const ::RosAdapter::csv_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::csv_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.u4AccelTgt);
      stream.next(m.u4SteeringWheel);
      stream.next(m.u4ADStatus);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct csv_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::csv_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::csv_data_<ContainerAllocator>& v)
  {
    s << indent << "u4AccelTgt: ";
    Printer<float>::stream(s, indent + "  ", v.u4AccelTgt);
    s << indent << "u4SteeringWheel: ";
    Printer<float>::stream(s, indent + "  ", v.u4SteeringWheel);
    s << indent << "u4ADStatus: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4ADStatus);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_CSV_DATA_H
