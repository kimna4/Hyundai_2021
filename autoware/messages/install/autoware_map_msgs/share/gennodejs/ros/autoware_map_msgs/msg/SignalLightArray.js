// Auto-generated. Do not edit!

// (in-package autoware_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SignalLight = require('./SignalLight.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SignalLightArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalLightArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = SignalLight.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalLightArray
    let len;
    let data = new SignalLightArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = SignalLight.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 36 * object.data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/SignalLightArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a70e2f53065c985af5dfda4d27a6eac1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This consists of multiple SignalLight objects in a map. 
    
    Header header
    SignalLight[] data
    
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
    
    ================================================================================
    MSG: autoware_map_msgs/SignalLight
    # This represents each lamps in signal light in a map.
    
    # COLOR_TYPES
    uint8 RED = 1
    uint8 GREEN = 2
    uint8 YELLOW = 3
    uint8 RED_FLASHING = 4
    uint8 GREEN_FLASHING = 5
    uint8 YELLOW_FLASHING = 6
    uint8 UNKOWN = 7
    
    # ARROW_TYPES
    uint8 NONE = 0
    uint8 UP = 1
    uint8 UP_RIGHT = 2
    uint8 RIGHT = 3
    uint8 DOWN_RIGHT = 4
    uint8 DOWN = 5
    uint8 DOWN_LEFT = 6
    uint8 LEFT = 7
    uint8 UP_LEFT = 8
    uint8 UNKNOWN = 9
    
    # Id of this SignalLight object. Must be uniqe among all SignalLight objects. 
    int32 signal_light_id
    
    # Id of Signal object which this SignalLight object belongs to
    int32 signal_id
    
    # Id of point that represents the position of this lamp. 
    int32 point_id
    
    # Horizontal direction which this SignalLight is facing in [deg].
    # Angle is calculated from North in clockwise direction. 
    float64 horizontal_angle
    
    # Vertical direction which this SignalLight is facing in [deg].
    # Angle is calculated from vertical rising direction. 
    float64 vertical_angle
    
    # Color of the lamp
    # Must be one of COLOR_TYPES
    int32 color_type
    
    # Direction of the arrow (if the lamp has direction)
    # Must be one of ARROW_TYPES
    int32 arrow_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignalLightArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = SignalLight.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = SignalLightArray;
