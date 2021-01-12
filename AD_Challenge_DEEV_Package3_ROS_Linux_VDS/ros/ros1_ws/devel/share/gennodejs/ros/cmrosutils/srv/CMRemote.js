// Auto-generated. Do not edit!

// (in-package cmrosutils.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CMRemoteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.msg = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CMRemoteRequest
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CMRemoteRequest
    let len;
    let data = new CMRemoteRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.msg.length;
    length += object.data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cmrosutils/CMRemoteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a20fcbf285ac8d5dda1e13b8bc92d134';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type   # general type of command
    string msg    # message to be evaluated
    string data   # additional data, e.g. command arguments, ...
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CMRemoteRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

class CMRemoteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res = null;
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('res')) {
        this.res = initObj.res
      }
      else {
        this.res = 0;
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CMRemoteResponse
    // Serialize message field [res]
    bufferOffset = _serializer.int32(obj.res, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CMRemoteResponse
    let len;
    let data = new CMRemoteResponse(null);
    // Deserialize message field [res]
    data.res = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.msg.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cmrosutils/CMRemoteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2cf6b5d22125b6caef41ccf14f7c3348';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32  res    # result of triggered service
    string msg    # informational, e.g. for error messages
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CMRemoteResponse(null);
    if (msg.res !== undefined) {
      resolved.res = msg.res;
    }
    else {
      resolved.res = 0
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CMRemoteRequest,
  Response: CMRemoteResponse,
  md5sum() { return '1d9ce7b684aec19fba170323f6c05b62'; },
  datatype() { return 'cmrosutils/CMRemote'; }
};
