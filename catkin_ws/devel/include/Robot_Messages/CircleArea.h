// Generated by gencpp from file Robot_Messages/CircleArea.msg
// DO NOT EDIT!


#ifndef ROBOT_MESSAGES_MESSAGE_CIRCLEAREA_H
#define ROBOT_MESSAGES_MESSAGE_CIRCLEAREA_H

#include <ros/service_traits.h>


#include <Robot_Messages/CircleAreaRequest.h>
#include <Robot_Messages/CircleAreaResponse.h>


namespace Robot_Messages
{

struct CircleArea
{

typedef CircleAreaRequest Request;
typedef CircleAreaResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CircleArea
} // namespace Robot_Messages


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::Robot_Messages::CircleArea > {
  static const char* value()
  {
    return "c314357897f85c5c2498418b07dbcead";
  }

  static const char* value(const ::Robot_Messages::CircleArea&) { return value(); }
};

template<>
struct DataType< ::Robot_Messages::CircleArea > {
  static const char* value()
  {
    return "Robot_Messages/CircleArea";
  }

  static const char* value(const ::Robot_Messages::CircleArea&) { return value(); }
};


// service_traits::MD5Sum< ::Robot_Messages::CircleAreaRequest> should match
// service_traits::MD5Sum< ::Robot_Messages::CircleArea >
template<>
struct MD5Sum< ::Robot_Messages::CircleAreaRequest>
{
  static const char* value()
  {
    return MD5Sum< ::Robot_Messages::CircleArea >::value();
  }
  static const char* value(const ::Robot_Messages::CircleAreaRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::Robot_Messages::CircleAreaRequest> should match
// service_traits::DataType< ::Robot_Messages::CircleArea >
template<>
struct DataType< ::Robot_Messages::CircleAreaRequest>
{
  static const char* value()
  {
    return DataType< ::Robot_Messages::CircleArea >::value();
  }
  static const char* value(const ::Robot_Messages::CircleAreaRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::Robot_Messages::CircleAreaResponse> should match
// service_traits::MD5Sum< ::Robot_Messages::CircleArea >
template<>
struct MD5Sum< ::Robot_Messages::CircleAreaResponse>
{
  static const char* value()
  {
    return MD5Sum< ::Robot_Messages::CircleArea >::value();
  }
  static const char* value(const ::Robot_Messages::CircleAreaResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::Robot_Messages::CircleAreaResponse> should match
// service_traits::DataType< ::Robot_Messages::CircleArea >
template<>
struct DataType< ::Robot_Messages::CircleAreaResponse>
{
  static const char* value()
  {
    return DataType< ::Robot_Messages::CircleArea >::value();
  }
  static const char* value(const ::Robot_Messages::CircleAreaResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROBOT_MESSAGES_MESSAGE_CIRCLEAREA_H