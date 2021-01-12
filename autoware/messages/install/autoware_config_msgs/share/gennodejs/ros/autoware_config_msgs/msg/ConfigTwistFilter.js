// Auto-generated. Do not edit!

// (in-package autoware_config_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ConfigTwistFilter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.use_decision_maker = null;
      this.lateral_accel_limit = null;
      this.lateral_jerk_limit = null;
      this.lowpass_gain_linear_x = null;
      this.lowpass_gain_angular_z = null;
      this.lowpass_gain_steering_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('use_decision_maker')) {
        this.use_decision_maker = initObj.use_decision_maker
      }
      else {
        this.use_decision_maker = false;
      }
      if (initObj.hasOwnProperty('lateral_accel_limit')) {
        this.lateral_accel_limit = initObj.lateral_accel_limit
      }
      else {
        this.lateral_accel_limit = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_jerk_limit')) {
        this.lateral_jerk_limit = initObj.lateral_jerk_limit
      }
      else {
        this.lateral_jerk_limit = 0.0;
      }
      if (initObj.hasOwnProperty('lowpass_gain_linear_x')) {
        this.lowpass_gain_linear_x = initObj.lowpass_gain_linear_x
      }
      else {
        this.lowpass_gain_linear_x = 0.0;
      }
      if (initObj.hasOwnProperty('lowpass_gain_angular_z')) {
        this.lowpass_gain_angular_z = initObj.lowpass_gain_angular_z
      }
      else {
        this.lowpass_gain_angular_z = 0.0;
      }
      if (initObj.hasOwnProperty('lowpass_gain_steering_angle')) {
        this.lowpass_gain_steering_angle = initObj.lowpass_gain_steering_angle
      }
      else {
        this.lowpass_gain_steering_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigTwistFilter
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [use_decision_maker]
    bufferOffset = _serializer.bool(obj.use_decision_maker, buffer, bufferOffset);
    // Serialize message field [lateral_accel_limit]
    bufferOffset = _serializer.float32(obj.lateral_accel_limit, buffer, bufferOffset);
    // Serialize message field [lateral_jerk_limit]
    bufferOffset = _serializer.float32(obj.lateral_jerk_limit, buffer, bufferOffset);
    // Serialize message field [lowpass_gain_linear_x]
    bufferOffset = _serializer.float32(obj.lowpass_gain_linear_x, buffer, bufferOffset);
    // Serialize message field [lowpass_gain_angular_z]
    bufferOffset = _serializer.float32(obj.lowpass_gain_angular_z, buffer, bufferOffset);
    // Serialize message field [lowpass_gain_steering_angle]
    bufferOffset = _serializer.float32(obj.lowpass_gain_steering_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigTwistFilter
    let len;
    let data = new ConfigTwistFilter(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [use_decision_maker]
    data.use_decision_maker = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lateral_accel_limit]
    data.lateral_accel_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lateral_jerk_limit]
    data.lateral_jerk_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lowpass_gain_linear_x]
    data.lowpass_gain_linear_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lowpass_gain_angular_z]
    data.lowpass_gain_angular_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lowpass_gain_steering_angle]
    data.lowpass_gain_steering_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_config_msgs/ConfigTwistFilter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8c0018f21cee202f52983a44f92d9c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool use_decision_maker
    float32 lateral_accel_limit
    float32 lateral_jerk_limit
    float32 lowpass_gain_linear_x
    float32 lowpass_gain_angular_z
    float32 lowpass_gain_steering_angle
    
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
    const resolved = new ConfigTwistFilter(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.use_decision_maker !== undefined) {
      resolved.use_decision_maker = msg.use_decision_maker;
    }
    else {
      resolved.use_decision_maker = false
    }

    if (msg.lateral_accel_limit !== undefined) {
      resolved.lateral_accel_limit = msg.lateral_accel_limit;
    }
    else {
      resolved.lateral_accel_limit = 0.0
    }

    if (msg.lateral_jerk_limit !== undefined) {
      resolved.lateral_jerk_limit = msg.lateral_jerk_limit;
    }
    else {
      resolved.lateral_jerk_limit = 0.0
    }

    if (msg.lowpass_gain_linear_x !== undefined) {
      resolved.lowpass_gain_linear_x = msg.lowpass_gain_linear_x;
    }
    else {
      resolved.lowpass_gain_linear_x = 0.0
    }

    if (msg.lowpass_gain_angular_z !== undefined) {
      resolved.lowpass_gain_angular_z = msg.lowpass_gain_angular_z;
    }
    else {
      resolved.lowpass_gain_angular_z = 0.0
    }

    if (msg.lowpass_gain_steering_angle !== undefined) {
      resolved.lowpass_gain_steering_angle = msg.lowpass_gain_steering_angle;
    }
    else {
      resolved.lowpass_gain_steering_angle = 0.0
    }

    return resolved;
    }
};

module.exports = ConfigTwistFilter;
