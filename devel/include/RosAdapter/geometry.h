// Generated by gencpp from file RosAdapter/geometry.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_GEOMETRY_H
#define ROSADAPTER_MESSAGE_GEOMETRY_H


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
struct geometry_
{
  typedef geometry_<ContainerAllocator> Type;

  geometry_()
    : u4DimX(0.0)
    , u4DimY(0.0)
    , u4DimZ(0.0)
    , u4OffX(0.0)
    , u4OffY(0.0)
    , u4OffZ(0.0)  {
    }
  geometry_(const ContainerAllocator& _alloc)
    : u4DimX(0.0)
    , u4DimY(0.0)
    , u4DimZ(0.0)
    , u4OffX(0.0)
    , u4OffY(0.0)
    , u4OffZ(0.0)  {
  (void)_alloc;
    }



   typedef float _u4DimX_type;
  _u4DimX_type u4DimX;

   typedef float _u4DimY_type;
  _u4DimY_type u4DimY;

   typedef float _u4DimZ_type;
  _u4DimZ_type u4DimZ;

   typedef float _u4OffX_type;
  _u4OffX_type u4OffX;

   typedef float _u4OffY_type;
  _u4OffY_type u4OffY;

   typedef float _u4OffZ_type;
  _u4OffZ_type u4OffZ;





  typedef boost::shared_ptr< ::RosAdapter::geometry_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::geometry_<ContainerAllocator> const> ConstPtr;

}; // struct geometry_

typedef ::RosAdapter::geometry_<std::allocator<void> > geometry;

typedef boost::shared_ptr< ::RosAdapter::geometry > geometryPtr;
typedef boost::shared_ptr< ::RosAdapter::geometry const> geometryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::geometry_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::geometry_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::geometry_<ContainerAllocator1> & lhs, const ::RosAdapter::geometry_<ContainerAllocator2> & rhs)
{
  return lhs.u4DimX == rhs.u4DimX &&
    lhs.u4DimY == rhs.u4DimY &&
    lhs.u4DimZ == rhs.u4DimZ &&
    lhs.u4OffX == rhs.u4OffX &&
    lhs.u4OffY == rhs.u4OffY &&
    lhs.u4OffZ == rhs.u4OffZ;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::geometry_<ContainerAllocator1> & lhs, const ::RosAdapter::geometry_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::geometry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::geometry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::geometry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::geometry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::geometry_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::geometry_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::geometry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd5e9e63f2d15bb3fd1e5ec306048461";
  }

  static const char* value(const ::RosAdapter::geometry_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd5e9e63f2d15bb3ULL;
  static const uint64_t static_value2 = 0xfd1e5ec306048461ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::geometry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/geometry";
  }

  static const char* value(const ::RosAdapter::geometry_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::geometry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# /** ------ 几何信息 ------ */\n"
"float32 u4DimX\n"
"float32 u4DimY\n"
"float32 u4DimZ\n"
"float32 u4OffX\n"
"float32 u4OffY\n"
"float32 u4OffZ\n"
;
  }

  static const char* value(const ::RosAdapter::geometry_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::geometry_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.u4DimX);
      stream.next(m.u4DimY);
      stream.next(m.u4DimZ);
      stream.next(m.u4OffX);
      stream.next(m.u4OffY);
      stream.next(m.u4OffZ);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct geometry_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::geometry_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::geometry_<ContainerAllocator>& v)
  {
    s << indent << "u4DimX: ";
    Printer<float>::stream(s, indent + "  ", v.u4DimX);
    s << indent << "u4DimY: ";
    Printer<float>::stream(s, indent + "  ", v.u4DimY);
    s << indent << "u4DimZ: ";
    Printer<float>::stream(s, indent + "  ", v.u4DimZ);
    s << indent << "u4OffX: ";
    Printer<float>::stream(s, indent + "  ", v.u4OffX);
    s << indent << "u4OffY: ";
    Printer<float>::stream(s, indent + "  ", v.u4OffY);
    s << indent << "u4OffZ: ";
    Printer<float>::stream(s, indent + "  ", v.u4OffZ);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_GEOMETRY_H
