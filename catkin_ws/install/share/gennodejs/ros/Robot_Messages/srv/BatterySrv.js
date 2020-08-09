// Auto-generated. Do not edit!

// (in-package Robot_Messages.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class BatterySrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Percentage = null;
    }
    else {
      if (initObj.hasOwnProperty('Percentage')) {
        this.Percentage = initObj.Percentage
      }
      else {
        this.Percentage = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatterySrvRequest
    // Serialize message field [Percentage]
    bufferOffset = _serializer.int32(obj.Percentage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatterySrvRequest
    let len;
    let data = new BatterySrvRequest(null);
    // Deserialize message field [Percentage]
    data.Percentage = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Robot_Messages/BatterySrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ee1b68ceeb45a995ccefcb6bba2eb80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 Percentage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatterySrvRequest(null);
    if (msg.Percentage !== undefined) {
      resolved.Percentage = msg.Percentage;
    }
    else {
      resolved.Percentage = 0
    }

    return resolved;
    }
};

class BatterySrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Return = null;
    }
    else {
      if (initObj.hasOwnProperty('Return')) {
        this.Return = initObj.Return
      }
      else {
        this.Return = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatterySrvResponse
    // Serialize message field [Return]
    bufferOffset = _serializer.bool(obj.Return, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatterySrvResponse
    let len;
    let data = new BatterySrvResponse(null);
    // Deserialize message field [Return]
    data.Return = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Robot_Messages/BatterySrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bf52b8741587164778bc66a525a7b48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Return
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatterySrvResponse(null);
    if (msg.Return !== undefined) {
      resolved.Return = msg.Return;
    }
    else {
      resolved.Return = false
    }

    return resolved;
    }
};

module.exports = {
  Request: BatterySrvRequest,
  Response: BatterySrvResponse,
  md5sum() { return 'ff61be9533183da287c1479b1594d5c3'; },
  datatype() { return 'Robot_Messages/BatterySrv'; }
};
