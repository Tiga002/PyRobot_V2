// Generated by gencpp from file locobot_control/JointCommand.msg
// DO NOT EDIT!


#ifndef LOCOBOT_CONTROL_MESSAGE_JOINTCOMMAND_H
#define LOCOBOT_CONTROL_MESSAGE_JOINTCOMMAND_H

#include <ros/service_traits.h>


#include <locobot_control/JointCommandRequest.h>
#include <locobot_control/JointCommandResponse.h>


namespace locobot_control
{

struct JointCommand
{

typedef JointCommandRequest Request;
typedef JointCommandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct JointCommand
} // namespace locobot_control


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::locobot_control::JointCommand > {
  static const char* value()
  {
    return "c48a66fe1d63d2829312fe3b7418380e";
  }

  static const char* value(const ::locobot_control::JointCommand&) { return value(); }
};

template<>
struct DataType< ::locobot_control::JointCommand > {
  static const char* value()
  {
    return "locobot_control/JointCommand";
  }

  static const char* value(const ::locobot_control::JointCommand&) { return value(); }
};


// service_traits::MD5Sum< ::locobot_control::JointCommandRequest> should match 
// service_traits::MD5Sum< ::locobot_control::JointCommand > 
template<>
struct MD5Sum< ::locobot_control::JointCommandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::locobot_control::JointCommand >::value();
  }
  static const char* value(const ::locobot_control::JointCommandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::locobot_control::JointCommandRequest> should match 
// service_traits::DataType< ::locobot_control::JointCommand > 
template<>
struct DataType< ::locobot_control::JointCommandRequest>
{
  static const char* value()
  {
    return DataType< ::locobot_control::JointCommand >::value();
  }
  static const char* value(const ::locobot_control::JointCommandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::locobot_control::JointCommandResponse> should match 
// service_traits::MD5Sum< ::locobot_control::JointCommand > 
template<>
struct MD5Sum< ::locobot_control::JointCommandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::locobot_control::JointCommand >::value();
  }
  static const char* value(const ::locobot_control::JointCommandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::locobot_control::JointCommandResponse> should match 
// service_traits::DataType< ::locobot_control::JointCommand > 
template<>
struct DataType< ::locobot_control::JointCommandResponse>
{
  static const char* value()
  {
    return DataType< ::locobot_control::JointCommand >::value();
  }
  static const char* value(const ::locobot_control::JointCommandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LOCOBOT_CONTROL_MESSAGE_JOINTCOMMAND_H
