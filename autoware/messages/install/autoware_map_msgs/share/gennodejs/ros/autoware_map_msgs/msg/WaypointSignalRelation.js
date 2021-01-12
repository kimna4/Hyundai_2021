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

class WaypointSignalRelation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_id = null;
      this.signal_id = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_id')) {
        this.waypoint_id = initObj.waypoint_id
      }
      else {
        this.waypoint_id = 0;
      }
      if (initObj.hasOwnProperty('signal_id')) {
        this.signal_id = initObj.signal_id
      }
      else {
        this.signal_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointSignalRelation
    // Serialize message field [waypoint_id]
    bufferOffset = _serializer.int32(obj.waypoint_id, buffer, bufferOffset);
    // Serialize message field [signal_id]
    bufferOffset = _serializer.int32(obj.signal_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointSignalRelation
    let len;
    let data = new WaypointSignalRelation(null);
    // Deserialize message field [waypoint_id]
    data.waypoint_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [signal_id]
    data.signal_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/WaypointSignalRelation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a749ec1d79492c8755da84a458f508b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents the relationship between waypoint and traffic signal
    
    # Id of refering Waypoint object
    # Vehicle is meant to stop at this waypoint when refered traffic signal shows red signal
    int32 waypoint_id
    
    # Id of Signal object related to the waypoint. 
    int32 signal_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointSignalRelation(null);
    if (msg.waypoint_id !== undefined) {
      resolved.waypoint_id = msg.waypoint_id;
    }
    else {
      resolved.waypoint_id = 0
    }

    if (msg.signal_id !== undefined) {
      resolved.signal_id = msg.signal_id;
    }
    else {
      resolved.signal_id = 0
    }

    return resolved;
    }
};

module.exports = WaypointSignalRelation;
