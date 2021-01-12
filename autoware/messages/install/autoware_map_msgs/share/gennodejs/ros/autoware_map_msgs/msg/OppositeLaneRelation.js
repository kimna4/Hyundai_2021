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

class OppositeLaneRelation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.opposite_lane_id = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('opposite_lane_id')) {
        this.opposite_lane_id = initObj.opposite_lane_id
      }
      else {
        this.opposite_lane_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OppositeLaneRelation
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [opposite_lane_id]
    bufferOffset = _serializer.int32(obj.opposite_lane_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OppositeLaneRelation
    let len;
    let data = new OppositeLaneRelation(null);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [opposite_lane_id]
    data.opposite_lane_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/OppositeLaneRelation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cd180a4c94ee476a03a85a837390bf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents opposite lanes in a map.
    
    # Id of refering Lane object
    int32 lane_id
    
    # Id of Lane object that is in opposite direction against refering lane. 
    int32 opposite_lane_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OppositeLaneRelation(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.opposite_lane_id !== undefined) {
      resolved.opposite_lane_id = msg.opposite_lane_id;
    }
    else {
      resolved.opposite_lane_id = 0
    }

    return resolved;
    }
};

module.exports = OppositeLaneRelation;
