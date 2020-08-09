// Generated by gencpp from file Robot_Messages/BatterySrv.msg
// DO NOT EDIT!


#ifndef ROBOT_MESSAGES_MESSAGE_BATTERYSRV_H
#define ROBOT_MESSAGES_MESSAGE_BATTERYSRV_H

#include <ros/service_traits.h>


#include <Robot_Messages/BatterySrvRequest.h>
#include <Robot_Messages/BatterySrvResponse.h>


namespace Robot_Messages
{

struct BatterySrv
{

typedef BatterySrvRequest Request;
typedef BatterySrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct BatterySrv
} // namespace Robot_Messages


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::Robot_Messages::BatterySrv > {
  static const char* value()
  {
    return "ff61be9533183da287c1479b1594d5c3";
  }

  static const char* value(const ::Robot_Messages::BatterySrv&) { return value(); }
};

template<>
struct DataType< ::Robot_Messages::BatterySrv > {
  static const char* value()
  {
    return "Robot_Messages/BatterySrv";
  }

  static const char* value(const ::Robot_Messages::BatterySrv&) { return value(); }
};


// service_traits::MD5Sum< ::Robot_Messages::BatterySrvRequest> should match
// service_traits::MD5Sum< ::Robot_Messages::BatterySrv >
template<>
struct MD5Sum< ::Robot_Messages::BatterySrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::Robot_Messages::BatterySrv >::value();
  }
  static const char* value(const ::Robot_Messages::BatterySrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::Robot_Messages::BatterySrvRequest> should match
// service_traits::DataType< ::Robot_Messages::BatterySrv >
template<>
struct DataType< ::Robot_Messages::BatterySrvRequest>
{
  static const char* value()
  {
    return DataType< ::Robot_Messages::BatterySrv >::value();
  }
  static const char* value(const ::Robot_Messages::BatterySrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::Robot_Messages::BatterySrvResponse> should match
// service_traits::MD5Sum< ::Robot_Messages::BatterySrv >
template<>
struct MD5Sum< ::Robot_Messages::BatterySrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::Robot_Messages::BatterySrv >::value();
  }
  static const char* value(const ::Robot_Messages::BatterySrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::Robot_Messages::BatterySrvResponse> should match
// service_traits::DataType< ::Robot_Messages::BatterySrv >
template<>
struct DataType< ::Robot_Messages::BatterySrvResponse>
{
  static const char* value()
  {
    return DataType< ::Robot_Messages::BatterySrv >::value();
  }
  static const char* value(const ::Robot_Messages::BatterySrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_MESSAGES_MESSAGE_BATTERYSRV_H
