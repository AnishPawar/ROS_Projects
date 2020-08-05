// Generated by gencpp from file Robot_Messages/TestSrvRequest.msg
// DO NOT EDIT!


#ifndef ROBOT_MESSAGES_MESSAGE_TESTSRVREQUEST_H
#define ROBOT_MESSAGES_MESSAGE_TESTSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace Robot_Messages
{
template <class ContainerAllocator>
struct TestSrvRequest_
{
  typedef TestSrvRequest_<ContainerAllocator> Type;

  TestSrvRequest_()
    : a()
    , b(0.0)  {
    }
  TestSrvRequest_(const ContainerAllocator& _alloc)
    : a()
    , b(0.0)  {
  (void)_alloc;
    }



   typedef ros::Time _a_type;
  _a_type a;

   typedef double _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TestSrvRequest_

typedef ::Robot_Messages::TestSrvRequest_<std::allocator<void> > TestSrvRequest;

typedef boost::shared_ptr< ::Robot_Messages::TestSrvRequest > TestSrvRequestPtr;
typedef boost::shared_ptr< ::Robot_Messages::TestSrvRequest const> TestSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Robot_Messages::TestSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::Robot_Messages::TestSrvRequest_<ContainerAllocator1> & lhs, const ::Robot_Messages::TestSrvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a &&
    lhs.b == rhs.b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::Robot_Messages::TestSrvRequest_<ContainerAllocator1> & lhs, const ::Robot_Messages::TestSrvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace Robot_Messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6da9e050cbc8fd00a9db6033107d0117";
  }

  static const char* value(const ::Robot_Messages::TestSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6da9e050cbc8fd00ULL;
  static const uint64_t static_value2 = 0xa9db6033107d0117ULL;
};

template<class ContainerAllocator>
struct DataType< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Robot_Messages/TestSrvRequest";
  }

  static const char* value(const ::Robot_Messages::TestSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# set urdf joint effort\n"
"time a           # joint to apply wrench (linear force and torque)\n"
"float64 b              # effort to apply\n"
"\n"
;
  }

  static const char* value(const ::Robot_Messages::TestSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TestSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Robot_Messages::TestSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Robot_Messages::TestSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<double>::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_MESSAGES_MESSAGE_TESTSRVREQUEST_H
