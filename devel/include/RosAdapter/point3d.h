// Generated by gencpp from file RosAdapter/point3d.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_POINT3D_H
#define ROSADAPTER_MESSAGE_POINT3D_H


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
struct point3d_
{
  typedef point3d_<ContainerAllocator> Type;

  point3d_()
    : u8x(0.0)
    , u8y(0.0)
    , u8z(0.0)  {
    }
  point3d_(const ContainerAllocator& _alloc)
    : u8x(0.0)
    , u8y(0.0)
    , u8z(0.0)  {
  (void)_alloc;
    }



   typedef double _u8x_type;
  _u8x_type u8x;

   typedef double _u8y_type;
  _u8y_type u8y;

   typedef double _u8z_type;
  _u8z_type u8z;





  typedef boost::shared_ptr< ::RosAdapter::point3d_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::point3d_<ContainerAllocator> const> ConstPtr;

}; // struct point3d_

typedef ::RosAdapter::point3d_<std::allocator<void> > point3d;

typedef boost::shared_ptr< ::RosAdapter::point3d > point3dPtr;
typedef boost::shared_ptr< ::RosAdapter::point3d const> point3dConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::point3d_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::point3d_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::point3d_<ContainerAllocator1> & lhs, const ::RosAdapter::point3d_<ContainerAllocator2> & rhs)
{
  return lhs.u8x == rhs.u8x &&
    lhs.u8y == rhs.u8y &&
    lhs.u8z == rhs.u8z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::point3d_<ContainerAllocator1> & lhs, const ::RosAdapter::point3d_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::point3d_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::point3d_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::point3d_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::point3d_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::point3d_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::point3d_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::point3d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ef76082ef9da5b9c3f0694c6fbb0753";
  }

  static const char* value(const ::RosAdapter::point3d_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ef76082ef9da5b9ULL;
  static const uint64_t static_value2 = 0xc3f0694c6fbb0753ULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::point3d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/point3d";
  }

  static const char* value(const ::RosAdapter::point3d_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::point3d_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64      u8x\n"
"float64      u8y\n"
"float64      u8z\n"
;
  }

  static const char* value(const ::RosAdapter::point3d_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::point3d_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.u8x);
      stream.next(m.u8y);
      stream.next(m.u8z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct point3d_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::point3d_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::point3d_<ContainerAllocator>& v)
  {
    s << indent << "u8x: ";
    Printer<double>::stream(s, indent + "  ", v.u8x);
    s << indent << "u8y: ";
    Printer<double>::stream(s, indent + "  ", v.u8y);
    s << indent << "u8z: ";
    Printer<double>::stream(s, indent + "  ", v.u8z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_POINT3D_H