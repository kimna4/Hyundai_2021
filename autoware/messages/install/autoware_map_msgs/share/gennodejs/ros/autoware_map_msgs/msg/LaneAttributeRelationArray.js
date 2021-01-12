// Auto-generated. Do not edit!

// (in-package autoware_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneAttributeRelation = require('./LaneAttributeRelation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LaneAttributeRelationArray {
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
    // Serializes a message object of type LaneAttributeRelationArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = LaneAttributeRelation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributeRelationArray
    let len;
    let data = new LaneAttributeRelationArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = LaneAttributeRelation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/LaneAttributeRelationArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5de320de3a099cd884bcebcfd4c2798e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This consists of multiple LaneAttributeRelation objects in a map. 
    
    Header header
    LaneAttributeRelation[] data
    
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
    MSG: autoware_map_msgs/LaneAttributeRelation
    # This describes an attribute of lane in a map.
    
    # ATTRIBUTE_TYPES
    uint32 PLANE = 1
    uint32 INTERSECTION = 2
    uint32 CROSS_WALK = 3
    uint32 DISABLE_LANE_CHANGE = 4
    uint32 DISABLE_PARKING = 5
    uint32 RAILROAD = 6
    uint32 PEDESTRIAN_SPACE = 7
    uint32 PARKING_AREA = 8
    
    # Id of Lane object which attribute is applied.
    int32 lane_id
    
    # Attribute that is applied to lane
    # Must be one of ATTRIBUTE_TYPES
    int32 attribute_type
    
    # Id of Area object that is relevant to the attribute (if exists). 
    # e.g. Id of Area object that describes crosswalk when attribute_type = CROSS_WALK. 
    int32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributeRelationArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = LaneAttributeRelation.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = LaneAttributeRelationArray;
