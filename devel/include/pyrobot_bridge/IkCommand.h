// Generated by gencpp from file pyrobot_bridge/IkCommand.msg
// DO NOT EDIT!


#ifndef PYROBOT_BRIDGE_MESSAGE_IKCOMMAND_H
#define PYROBOT_BRIDGE_MESSAGE_IKCOMMAND_H

#include <ros/service_traits.h>


#include <pyrobot_bridge/IkCommandRequest.h>
#include <pyrobot_bridge/IkCommandResponse.h>


namespace pyrobot_bridge
{

struct IkCommand
{

typedef IkCommandRequest Request;
typedef IkCommandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct IkCommand
} // namespace pyrobot_bridge


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pyrobot_bridge::IkCommand > {
  static const char* value()
  {
    return "927fa6572821a286edd5014fad18e19c";
  }

  static const char* value(const ::pyrobot_bridge::IkCommand&) { return value(); }
};

template<>
struct DataType< ::pyrobot_bridge::IkCommand > {
  static const char* value()
  {
    return "pyrobot_bridge/IkCommand";
  }

  static const char* value(const ::pyrobot_bridge::IkCommand&) { return value(); }
};


// service_traits::MD5Sum< ::pyrobot_bridge::IkCommandRequest> should match 
// service_traits::MD5Sum< ::pyrobot_bridge::IkCommand > 
template<>
struct MD5Sum< ::pyrobot_bridge::IkCommandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pyrobot_bridge::IkCommand >::value();
  }
  static const char* value(const ::pyrobot_bridge::IkCommandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pyrobot_bridge::IkCommandRequest> should match 
// service_traits::DataType< ::pyrobot_bridge::IkCommand > 
template<>
struct DataType< ::pyrobot_bridge::IkCommandRequest>
{
  static const char* value()
  {
    return DataType< ::pyrobot_bridge::IkCommand >::value();
  }
  static const char* value(const ::pyrobot_bridge::IkCommandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pyrobot_bridge::IkCommandResponse> should match 
// service_traits::MD5Sum< ::pyrobot_bridge::IkCommand > 
template<>
struct MD5Sum< ::pyrobot_bridge::IkCommandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pyrobot_bridge::IkCommand >::value();
  }
  static const char* value(const ::pyrobot_bridge::IkCommandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pyrobot_bridge::IkCommandResponse> should match 
// service_traits::DataType< ::pyrobot_bridge::IkCommand > 
template<>
struct DataType< ::pyrobot_bridge::IkCommandResponse>
{
  static const char* value()
  {
    return DataType< ::pyrobot_bridge::IkCommand >::value();
  }
  static const char* value(const ::pyrobot_bridge::IkCommandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PYROBOT_BRIDGE_MESSAGE_IKCOMMAND_H
