// Auto-generated. Do not edit!

// (in-package hellocm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class InitRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitRequest
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitRequest
    let len;
    let data = new InitRequest(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hellocm_msgs/InitRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f003d6bcc824cbd51361d66d8e4f76c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message    # informational, e.g. name of triggering node
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitRequest(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

class InitResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.cycletime = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('cycletime')) {
        this.cycletime = initObj.cycletime
      }
      else {
        this.cycletime = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [cycletime]
    bufferOffset = _serializer.int32(obj.cycletime, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitResponse
    let len;
    let data = new InitResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cycletime]
    data.cycletime = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hellocm_msgs/InitResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b782e011a181d0d03948ac040f0f5458';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool   success    # indicate successful run of triggered service
    int32  cycletime  # default cycle time in ms 
    string message    # informational, e.g. for error messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.cycletime !== undefined) {
      resolved.cycletime = msg.cycletime;
    }
    else {
      resolved.cycletime = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: InitRequest,
  Response: InitResponse,
  md5sum() { return 'c39177108282824e55cd272f345a59bb'; },
  datatype() { return 'hellocm_msgs/Init'; }
};
