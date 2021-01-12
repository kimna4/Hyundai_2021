// Auto-generated. Do not edit!

// (in-package autoware_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lane = require('./Lane.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LaneArray {
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
    // Serializes a message object of type LaneArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneArray
    let len;
    let data = new LaneArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = Lane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 60 * object.data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/LaneArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1849af6a05682cff6c714d459a3e51f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This consists of multiple lanes in a map with reference coordinate frame. 
    
    Header header
    Lane[] data
    
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
    MSG: autoware_map_msgs/Lane
    # This represents a lane in a map.
    
    # Id of this Lane object. Must be unique among all lane objects.
    int32 lane_id
    
    # Id of the first waypoint that belongs to this lane
    int32 start_waypoint_id
    
    # Id of the last waypoint that belongs to this lane
    int32 end_waypoint_id
    
    # This describes how many lanes there are in left side of this lane.
    # E.g. If there are 2 lanes on the left side, then lane_number will be 2. 
    # If the road is single lane, then this will be 0. 
    # This will be always 0 in intersection. 
    int32 lane_number
    
    # Total number of lanes present in road. 
    int32 num_of_lanes
    
    # Speed limit of this lane in [km/h]
    float64 speed_limit
    
    # Length of this lane in [m]
    # i.e. accumulated length from start_waypoint to end_waypoint of this lane
    float64 length
    
    # Maximum width of vehicle that can drive this lane in [m]
    float64 width_limit
    
    # Maximum height of vehicle that can drive this lane in [m]. 
    float64 height_limit
    
    # Maximum weight of vehicle that can drive this lane in [kg]. 
    float64 weight_limit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = Lane.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = LaneArray;
