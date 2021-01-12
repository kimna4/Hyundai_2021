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

class LaneSignalLightRelation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.signal_light_id = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('signal_light_id')) {
        this.signal_light_id = initObj.signal_light_id
      }
      else {
        this.signal_light_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneSignalLightRelation
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [signal_light_id]
    bufferOffset = _serializer.int32(obj.signal_light_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneSignalLightRelation
    let len;
    let data = new LaneSignalLightRelation(null);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [signal_light_id]
    data.signal_light_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/LaneSignalLightRelation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56f58c04c9fd01d81da77e983aaab87b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents relation between a lane and a signal in a map.
    
    # Id of refering Lane object
    int32 lane_id
    
    # Id of SignalLight object that must be recognized when vehicle is driving the refering lane. 
    int32 signal_light_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneSignalLightRelation(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.signal_light_id !== undefined) {
      resolved.signal_light_id = msg.signal_light_id;
    }
    else {
      resolved.signal_light_id = 0
    }

    return resolved;
    }
};

module.exports = LaneSignalLightRelation;
