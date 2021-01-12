// Auto-generated. Do not edit!

// (in-package autoware_map_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LaneRelation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.next_lane_id = null;
      this.blinker = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('next_lane_id')) {
        this.next_lane_id = initObj.next_lane_id
      }
      else {
        this.next_lane_id = 0;
      }
      if (initObj.hasOwnProperty('blinker')) {
        this.blinker = initObj.blinker
      }
      else {
        this.blinker = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneRelation
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [next_lane_id]
    bufferOffset = _serializer.int32(obj.next_lane_id, buffer, bufferOffset);
    // Serialize message field [blinker]
    bufferOffset = _serializer.int32(obj.blinker, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneRelation
    let len;
    let data = new LaneRelation(null);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [next_lane_id]
    data.next_lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [blinker]
    data.blinker = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/LaneRelation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3dff6505b3e88becc76b5332fcd57ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents lane connections in a map.
    
    # BlinkerType
    uint8 None = 0
    uint8 Left = 1
    uint8 Right = 2
    
    # Id of refering Lane object.
    int32 lane_id
    
    # Id of Lane objects that follows after refering lane. 
    int32 next_lane_id
    
    # Blinker that must be lit when doing driving towards the next_lane.
    # Must be one of "Blinker Type"
    # e.g. if next_lane_id is left turning lane in intersection, then blinker = LEFT
    int32 blinker
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneRelation(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.next_lane_id !== undefined) {
      resolved.next_lane_id = msg.next_lane_id;
    }
    else {
      resolved.next_lane_id = 0
    }

    if (msg.blinker !== undefined) {
      resolved.blinker = msg.blinker;
    }
    else {
      resolved.blinker = 0
    }

    return resolved;
    }
};

// Constants for message
LaneRelation.Constants = {
  NONE: 0,
  LEFT: 1,
  RIGHT: 2,
}

module.exports = LaneRelation;
