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

class WaypointLaneRelation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_id = null;
      this.lane_id = null;
      this.order = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_id')) {
        this.waypoint_id = initObj.waypoint_id
      }
      else {
        this.waypoint_id = 0;
      }
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('order')) {
        this.order = initObj.order
      }
      else {
        this.order = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointLaneRelation
    // Serialize message field [waypoint_id]
    bufferOffset = _serializer.int32(obj.waypoint_id, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [order]
    bufferOffset = _serializer.int32(obj.order, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointLaneRelation
    let len;
    let data = new WaypointLaneRelation(null);
    // Deserialize message field [waypoint_id]
    data.waypoint_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [order]
    data.order = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/WaypointLaneRelation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8f61b7c5089da0aa24b1fd1cd929398';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents the connection between waypoints and lanes
    
    # Id of refering Waypoint object
    int32 waypoint_id
    
    # Id of Lane object which refering waypoint belongs to 
    int32 lane_id
    
    # order of the waypoint in the lane. 
    # e.g. starting waypoint of the lane will have order of 0. 
    int32 order
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointLaneRelation(null);
    if (msg.waypoint_id !== undefined) {
      resolved.waypoint_id = msg.waypoint_id;
    }
    else {
      resolved.waypoint_id = 0
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.order !== undefined) {
      resolved.order = msg.order;
    }
    else {
      resolved.order = 0
    }

    return resolved;
    }
};

module.exports = WaypointLaneRelation;
