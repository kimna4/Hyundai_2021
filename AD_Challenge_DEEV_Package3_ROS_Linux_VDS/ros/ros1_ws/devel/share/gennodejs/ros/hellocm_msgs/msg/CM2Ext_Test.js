// Auto-generated. Do not edit!

// (in-package hellocm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CM2Ext_Test {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.cycleno = null;
      this.synthdelay = null;
      this.test1 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('cycleno')) {
        this.cycleno = initObj.cycleno
      }
      else {
        this.cycleno = 0;
      }
      if (initObj.hasOwnProperty('synthdelay')) {
        this.synthdelay = initObj.synthdelay
      }
      else {
        this.synthdelay = 0.0;
      }
      if (initObj.hasOwnProperty('test1')) {
        this.test1 = initObj.test1
      }
      else {
        this.test1 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CM2Ext_Test
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [cycleno]
    bufferOffset = _serializer.int64(obj.cycleno, buffer, bufferOffset);
    // Serialize message field [synthdelay]
    bufferOffset = _serializer.float64(obj.synthdelay, buffer, bufferOffset);
    // Serialize message field [test1]
    bufferOffset = _serializer.float64(obj.test1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CM2Ext_Test
    let len;
    let data = new CM2Ext_Test(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [cycleno]
    data.cycleno = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [synthdelay]
    data.synthdelay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [test1]
    data.test1 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hellocm_msgs/CM2Ext_Test';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e98f5e5adb0afef7c137fcc7a674d4ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Message from CarMaker ROS Node to external ROS Node
    #
    
    # General
    Header  header                                 # General ROS Header (optional)
    time    time                                   # ROS time when message was sent (optional)
    int64   cycleno                                # Cycle number since simulation start (optional)
    float64 synthdelay                             # Synthetic delay to check synchronization (optional)
    
    float64 test1	# by kimna
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CM2Ext_Test(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.cycleno !== undefined) {
      resolved.cycleno = msg.cycleno;
    }
    else {
      resolved.cycleno = 0
    }

    if (msg.synthdelay !== undefined) {
      resolved.synthdelay = msg.synthdelay;
    }
    else {
      resolved.synthdelay = 0.0
    }

    if (msg.test1 !== undefined) {
      resolved.test1 = msg.test1;
    }
    else {
      resolved.test1 = 0.0
    }

    return resolved;
    }
};

module.exports = CM2Ext_Test;
