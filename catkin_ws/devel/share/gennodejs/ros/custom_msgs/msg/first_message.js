// Auto-generated. Do not edit!

// (in-package custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class first_message {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.temprature = null;
      this.motor_stat = null;
      this.debug_message = null;
    }
    else {
      if (initObj.hasOwnProperty('temprature')) {
        this.temprature = initObj.temprature
      }
      else {
        this.temprature = 0;
      }
      if (initObj.hasOwnProperty('motor_stat')) {
        this.motor_stat = initObj.motor_stat
      }
      else {
        this.motor_stat = false;
      }
      if (initObj.hasOwnProperty('debug_message')) {
        this.debug_message = initObj.debug_message
      }
      else {
        this.debug_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type first_message
    // Serialize message field [temprature]
    bufferOffset = _serializer.int64(obj.temprature, buffer, bufferOffset);
    // Serialize message field [motor_stat]
    bufferOffset = _serializer.bool(obj.motor_stat, buffer, bufferOffset);
    // Serialize message field [debug_message]
    bufferOffset = _serializer.string(obj.debug_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type first_message
    let len;
    let data = new first_message(null);
    // Deserialize message field [temprature]
    data.temprature = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [motor_stat]
    data.motor_stat = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [debug_message]
    data.debug_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.debug_message.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'custom_msgs/first_message';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f537432f8f1c04503d008c5851a94e1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 temprature
    bool motor_stat
    string debug_message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new first_message(null);
    if (msg.temprature !== undefined) {
      resolved.temprature = msg.temprature;
    }
    else {
      resolved.temprature = 0
    }

    if (msg.motor_stat !== undefined) {
      resolved.motor_stat = msg.motor_stat;
    }
    else {
      resolved.motor_stat = false
    }

    if (msg.debug_message !== undefined) {
      resolved.debug_message = msg.debug_message;
    }
    else {
      resolved.debug_message = ''
    }

    return resolved;
    }
};

module.exports = first_message;
