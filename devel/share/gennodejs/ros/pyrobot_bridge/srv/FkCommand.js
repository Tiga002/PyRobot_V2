// Auto-generated. Do not edit!

// (in-package pyrobot_bridge.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FkCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_angles = null;
      this.end_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_angles')) {
        this.joint_angles = initObj.joint_angles
      }
      else {
        this.joint_angles = [];
      }
      if (initObj.hasOwnProperty('end_frame')) {
        this.end_frame = initObj.end_frame
      }
      else {
        this.end_frame = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FkCommandRequest
    // Serialize message field [joint_angles]
    bufferOffset = _arraySerializer.float64(obj.joint_angles, buffer, bufferOffset, null);
    // Serialize message field [end_frame]
    bufferOffset = _serializer.string(obj.end_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FkCommandRequest
    let len;
    let data = new FkCommandRequest(null);
    // Deserialize message field [joint_angles]
    data.joint_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [end_frame]
    data.end_frame = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_angles.length;
    length += object.end_frame.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pyrobot_bridge/FkCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89b8f600845f229eef0af25925836b63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float64[] joint_angles
    string end_frame
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FkCommandRequest(null);
    if (msg.joint_angles !== undefined) {
      resolved.joint_angles = msg.joint_angles;
    }
    else {
      resolved.joint_angles = []
    }

    if (msg.end_frame !== undefined) {
      resolved.end_frame = msg.end_frame;
    }
    else {
      resolved.end_frame = ''
    }

    return resolved;
    }
};

class FkCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.pos = null;
      this.quat = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('quat')) {
        this.quat = initObj.quat
      }
      else {
        this.quat = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FkCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float64(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [quat]
    bufferOffset = _arraySerializer.float64(obj.quat, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FkCommandResponse
    let len;
    let data = new FkCommandResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [quat]
    data.quat = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.pos.length;
    length += 8 * object.quat.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pyrobot_bridge/FkCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e705f17fae9810c48f6e9058ab1bdfb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    float64[] pos
    float64[] quat
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FkCommandResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.quat !== undefined) {
      resolved.quat = msg.quat;
    }
    else {
      resolved.quat = []
    }

    return resolved;
    }
};

module.exports = {
  Request: FkCommandRequest,
  Response: FkCommandResponse,
  md5sum() { return '6a7a6cbcb17cacd9771eda9bb83c64a6'; },
  datatype() { return 'pyrobot_bridge/FkCommand'; }
};
