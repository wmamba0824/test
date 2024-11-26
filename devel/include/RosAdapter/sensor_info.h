// Generated by gencpp from file RosAdapter/sensor_info.msg
// DO NOT EDIT!


#ifndef ROSADAPTER_MESSAGE_SENSOR_INFO_H
#define ROSADAPTER_MESSAGE_SENSOR_INFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <RosAdapter/coord.h>
#include <RosAdapter/coord.h>

namespace RosAdapter
{
template <class ContainerAllocator>
struct sensor_info_
{
  typedef sensor_info_<ContainerAllocator> Type;

  sensor_info_()
    : sPos()
    , sOriginCoordSys()
    , au1Name()
    , u8HostId(0)
    , u8Id(0)
    , au4FovHV()
    , au4ClipNF()
    , au4FovOffHV()
    , u1Type(0)
    , u1ModelType(0)
    , u4IdealFreq(0.0)
    , u4ResL(0)
    , u4ResV(0)
    , u4SenSizeL(0.0)
    , u4SenSizeW(0.0)
    , u4LenFd(0.0)
    , u4DistCenL(0.0)
    , u4DistCenW(0.0)
    , u4DistParK1(0.0)
    , u4DistParK2(0.0)  {
    }
  sensor_info_(const ContainerAllocator& _alloc)
    : sPos(_alloc)
    , sOriginCoordSys(_alloc)
    , au1Name(_alloc)
    , u8HostId(0)
    , u8Id(0)
    , au4FovHV(_alloc)
    , au4ClipNF(_alloc)
    , au4FovOffHV(_alloc)
    , u1Type(0)
    , u1ModelType(0)
    , u4IdealFreq(0.0)
    , u4ResL(0)
    , u4ResV(0)
    , u4SenSizeL(0.0)
    , u4SenSizeW(0.0)
    , u4LenFd(0.0)
    , u4DistCenL(0.0)
    , u4DistCenW(0.0)
    , u4DistParK1(0.0)
    , u4DistParK2(0.0)  {
  (void)_alloc;
    }



   typedef  ::RosAdapter::coord_<ContainerAllocator>  _sPos_type;
  _sPos_type sPos;

   typedef  ::RosAdapter::coord_<ContainerAllocator>  _sOriginCoordSys_type;
  _sOriginCoordSys_type sOriginCoordSys;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _au1Name_type;
  _au1Name_type au1Name;

   typedef uint32_t _u8HostId_type;
  _u8HostId_type u8HostId;

   typedef uint32_t _u8Id_type;
  _u8Id_type u8Id;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _au4FovHV_type;
  _au4FovHV_type au4FovHV;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _au4ClipNF_type;
  _au4ClipNF_type au4ClipNF;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _au4FovOffHV_type;
  _au4FovOffHV_type au4FovOffHV;

   typedef uint8_t _u1Type_type;
  _u1Type_type u1Type;

   typedef uint8_t _u1ModelType_type;
  _u1ModelType_type u1ModelType;

   typedef double _u4IdealFreq_type;
  _u4IdealFreq_type u4IdealFreq;

   typedef uint32_t _u4ResL_type;
  _u4ResL_type u4ResL;

   typedef uint32_t _u4ResV_type;
  _u4ResV_type u4ResV;

   typedef double _u4SenSizeL_type;
  _u4SenSizeL_type u4SenSizeL;

   typedef double _u4SenSizeW_type;
  _u4SenSizeW_type u4SenSizeW;

   typedef double _u4LenFd_type;
  _u4LenFd_type u4LenFd;

   typedef double _u4DistCenL_type;
  _u4DistCenL_type u4DistCenL;

   typedef double _u4DistCenW_type;
  _u4DistCenW_type u4DistCenW;

   typedef double _u4DistParK1_type;
  _u4DistParK1_type u4DistParK1;

   typedef double _u4DistParK2_type;
  _u4DistParK2_type u4DistParK2;





  typedef boost::shared_ptr< ::RosAdapter::sensor_info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::RosAdapter::sensor_info_<ContainerAllocator> const> ConstPtr;

}; // struct sensor_info_

typedef ::RosAdapter::sensor_info_<std::allocator<void> > sensor_info;

typedef boost::shared_ptr< ::RosAdapter::sensor_info > sensor_infoPtr;
typedef boost::shared_ptr< ::RosAdapter::sensor_info const> sensor_infoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::RosAdapter::sensor_info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::RosAdapter::sensor_info_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::RosAdapter::sensor_info_<ContainerAllocator1> & lhs, const ::RosAdapter::sensor_info_<ContainerAllocator2> & rhs)
{
  return lhs.sPos == rhs.sPos &&
    lhs.sOriginCoordSys == rhs.sOriginCoordSys &&
    lhs.au1Name == rhs.au1Name &&
    lhs.u8HostId == rhs.u8HostId &&
    lhs.u8Id == rhs.u8Id &&
    lhs.au4FovHV == rhs.au4FovHV &&
    lhs.au4ClipNF == rhs.au4ClipNF &&
    lhs.au4FovOffHV == rhs.au4FovOffHV &&
    lhs.u1Type == rhs.u1Type &&
    lhs.u1ModelType == rhs.u1ModelType &&
    lhs.u4IdealFreq == rhs.u4IdealFreq &&
    lhs.u4ResL == rhs.u4ResL &&
    lhs.u4ResV == rhs.u4ResV &&
    lhs.u4SenSizeL == rhs.u4SenSizeL &&
    lhs.u4SenSizeW == rhs.u4SenSizeW &&
    lhs.u4LenFd == rhs.u4LenFd &&
    lhs.u4DistCenL == rhs.u4DistCenL &&
    lhs.u4DistCenW == rhs.u4DistCenW &&
    lhs.u4DistParK1 == rhs.u4DistParK1 &&
    lhs.u4DistParK2 == rhs.u4DistParK2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::RosAdapter::sensor_info_<ContainerAllocator1> & lhs, const ::RosAdapter::sensor_info_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace RosAdapter

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::sensor_info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::RosAdapter::sensor_info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::sensor_info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::RosAdapter::sensor_info_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::sensor_info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::RosAdapter::sensor_info_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::RosAdapter::sensor_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e18318bc223ad24176de445906b697bb";
  }

  static const char* value(const ::RosAdapter::sensor_info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe18318bc223ad241ULL;
  static const uint64_t static_value2 = 0x76de445906b697bbULL;
};

template<class ContainerAllocator>
struct DataType< ::RosAdapter::sensor_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "RosAdapter/sensor_info";
  }

  static const char* value(const ::RosAdapter::sensor_info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::RosAdapter::sensor_info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# /** ------ 传感器定义和状态 ------ */\n"
"coord      sPos\n"
"coord      sOriginCoordSys\n"
"string     au1Name\n"
"uint32     u8HostId\n"
"uint32     u8Id\n"
"float32[]  au4FovHV\n"
"float32[]  au4ClipNF\n"
"float32[]  au4FovOffHV\n"
"uint8      u1Type                   \n"
"uint8      u1ModelType\n"
"float64	   u4IdealFreq\n"
"uint32	   u4ResL\n"
"uint32     u4ResV\n"
"float64	   u4SenSizeL\n"
"float64	   u4SenSizeW\n"
"float64	   u4LenFd\n"
"float64	   u4DistCenL\n"
"float64	   u4DistCenW\n"
"float64	   u4DistParK1\n"
"float64	   u4DistParK2\n"
"\n"
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

  static const char* value(const ::RosAdapter::sensor_info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::RosAdapter::sensor_info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sPos);
      stream.next(m.sOriginCoordSys);
      stream.next(m.au1Name);
      stream.next(m.u8HostId);
      stream.next(m.u8Id);
      stream.next(m.au4FovHV);
      stream.next(m.au4ClipNF);
      stream.next(m.au4FovOffHV);
      stream.next(m.u1Type);
      stream.next(m.u1ModelType);
      stream.next(m.u4IdealFreq);
      stream.next(m.u4ResL);
      stream.next(m.u4ResV);
      stream.next(m.u4SenSizeL);
      stream.next(m.u4SenSizeW);
      stream.next(m.u4LenFd);
      stream.next(m.u4DistCenL);
      stream.next(m.u4DistCenW);
      stream.next(m.u4DistParK1);
      stream.next(m.u4DistParK2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sensor_info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::RosAdapter::sensor_info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::RosAdapter::sensor_info_<ContainerAllocator>& v)
  {
    s << indent << "sPos: ";
    s << std::endl;
    Printer< ::RosAdapter::coord_<ContainerAllocator> >::stream(s, indent + "  ", v.sPos);
    s << indent << "sOriginCoordSys: ";
    s << std::endl;
    Printer< ::RosAdapter::coord_<ContainerAllocator> >::stream(s, indent + "  ", v.sOriginCoordSys);
    s << indent << "au1Name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.au1Name);
    s << indent << "u8HostId: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u8HostId);
    s << indent << "u8Id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u8Id);
    s << indent << "au4FovHV[]" << std::endl;
    for (size_t i = 0; i < v.au4FovHV.size(); ++i)
    {
      s << indent << "  au4FovHV[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.au4FovHV[i]);
    }
    s << indent << "au4ClipNF[]" << std::endl;
    for (size_t i = 0; i < v.au4ClipNF.size(); ++i)
    {
      s << indent << "  au4ClipNF[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.au4ClipNF[i]);
    }
    s << indent << "au4FovOffHV[]" << std::endl;
    for (size_t i = 0; i < v.au4FovOffHV.size(); ++i)
    {
      s << indent << "  au4FovOffHV[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.au4FovOffHV[i]);
    }
    s << indent << "u1Type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.u1Type);
    s << indent << "u1ModelType: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.u1ModelType);
    s << indent << "u4IdealFreq: ";
    Printer<double>::stream(s, indent + "  ", v.u4IdealFreq);
    s << indent << "u4ResL: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4ResL);
    s << indent << "u4ResV: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.u4ResV);
    s << indent << "u4SenSizeL: ";
    Printer<double>::stream(s, indent + "  ", v.u4SenSizeL);
    s << indent << "u4SenSizeW: ";
    Printer<double>::stream(s, indent + "  ", v.u4SenSizeW);
    s << indent << "u4LenFd: ";
    Printer<double>::stream(s, indent + "  ", v.u4LenFd);
    s << indent << "u4DistCenL: ";
    Printer<double>::stream(s, indent + "  ", v.u4DistCenL);
    s << indent << "u4DistCenW: ";
    Printer<double>::stream(s, indent + "  ", v.u4DistCenW);
    s << indent << "u4DistParK1: ";
    Printer<double>::stream(s, indent + "  ", v.u4DistParK1);
    s << indent << "u4DistParK2: ";
    Printer<double>::stream(s, indent + "  ", v.u4DistParK2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSADAPTER_MESSAGE_SENSOR_INFO_H
