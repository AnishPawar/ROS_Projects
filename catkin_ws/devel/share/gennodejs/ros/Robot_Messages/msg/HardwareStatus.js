// Auto-generated. Do not edit!

// (in-package Robot_Messages.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HardwareStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temprature = null;
      this.motor_status = null;
      this.debug_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('temprature')) {
        this.temprature = initObj.temprature
      }
      else {
        this.temprature = 0.0;
      }
      if (initObj.hasOwnProperty('motor_status')) {
        this.motor_status = initObj.motor_status
      }
      else {
        this.motor_status = false;
      }
      if (initObj.hasOwnProperty('debug_msg')) {
        this.debug_msg = initObj.debug_msg
      }
      else {
        this.debug_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HardwareStatus
    // Serialize message field [temprature]
    bufferOffset = _serializer.float64(obj.temprature, buffer, bufferOffset);
    // Serialize message field [motor_status]
    bufferOffset = _serializer.bool(obj.motor_status, buffer, bufferOffset);
    // Serialize message field [debug_msg]
    bufferOffset = _serializer.string(obj.debug_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HardwareStatus
    let len;
    let data = new HardwareStatus(null);
    // Deserialize message field [temprature]
    data.temprature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [motor_status]
    data.motor_status = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [debug_msg]
    data.debug_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.debug_msg.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'Robot_Messages/HardwareStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '882ce153f5082c30d832d8d4f8e9fe20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 temprature
    bool motor_status
    string debug_msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HardwareStatus(null);
    if (msg.temprature !== undefined) {
      resolved.temprature = msg.temprature;
    }
    else {
      resolved.temprature = 0.0
    }

    if (msg.motor_status !== undefined) {
      resolved.motor_status = msg.motor_status;
    }
    else {
      resolved.motor_status = false
    }

    if (msg.debug_msg !== undefined) {
      resolved.debug_msg = msg.debug_msg;
    }
    else {
      resolved.debug_msg = ''
    }

    return resolved;
    }
};

module.exports = HardwareStatus;
