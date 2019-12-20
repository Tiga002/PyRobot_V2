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

class IkCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.tolerance = null;
      this.init_joint_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('tolerance')) {
        this.tolerance = initObj.tolerance
      }
      else {
        this.tolerance = [];
      }
      if (initObj.hasOwnProperty('init_joint_positions')) {
        this.init_joint_positions = initObj.init_joint_positions
      }
      else {
        this.init_joint_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IkCommandRequest
    // Serialize message field [pose]
    bufferOffset = _arraySerializer.float64(obj.pose, buffer, bufferOffset, null);
    // Serialize message field [tolerance]
    bufferOffset = _arraySerializer.float64(obj.tolerance, buffer, bufferOffset, null);
    // Serialize message field [init_joint_positions]
    bufferOffset = _arraySerializer.float64(obj.init_joint_positions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IkCommandRequest
    let len;
    let data = new IkCommandRequest(null);
    // Deserialize message field [pose]
    data.pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [tolerance]
    data.tolerance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [init_joint_positions]
    data.init_joint_positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.pose.length;
    length += 8 * object.tolerance.length;
    length += 8 * object.init_joint_positions.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pyrobot_bridge/IkCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39d822cf6565a6ef77a5d6988b720ffc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float64[] pose
    float64[] tolerance
    float64[] init_joint_positions
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IkCommandRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = []
    }

    if (msg.tolerance !== undefined) {
      resolved.tolerance = msg.tolerance;
    }
    else {
      resolved.tolerance = []
    }

    if (msg.init_joint_positions !== undefined) {
      resolved.init_joint_positions = msg.init_joint_positions;
    }
    else {
      resolved.init_joint_positions = []
    }

    return resolved;
    }
};

class IkCommandResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.joint_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('joint_positions')) {
        this.joint_positions = initObj.joint_positions
      }
      else {
        this.joint_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IkCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [joint_positions]
    bufferOffset = _arraySerializer.float64(obj.joint_positions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IkCommandResponse
    let len;
    let data = new IkCommandResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [joint_positions]
    data.joint_positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_positions.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pyrobot_bridge/IkCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95136edf259d6766d754d1fdf3054d2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    float64[] joint_positions
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IkCommandResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.joint_positions !== undefined) {
      resolved.joint_positions = msg.joint_positions;
    }
    else {
      resolved.joint_positions = []
    }

    return resolved;
    }
};

module.exports = {
  Request: IkCommandRequest,
  Response: IkCommandResponse,
  md5sum() { return '927fa6572821a286edd5014fad18e19c'; },
  datatype() { return 'pyrobot_bridge/IkCommand'; }
};
