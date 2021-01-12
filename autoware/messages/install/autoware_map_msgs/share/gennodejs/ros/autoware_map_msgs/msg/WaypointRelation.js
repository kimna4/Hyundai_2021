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

class WaypointRelation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_id = null;
      this.next_waypoint_id = null;
      this.yaw = null;
      this.blinker = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_id')) {
        this.waypoint_id = initObj.waypoint_id
      }
      else {
        this.waypoint_id = 0;
      }
      if (initObj.hasOwnProperty('next_waypoint_id')) {
        this.next_waypoint_id = initObj.next_waypoint_id
      }
      else {
        this.next_waypoint_id = 0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('blinker')) {
        this.blinker = initObj.blinker
      }
      else {
        this.blinker = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointRelation
    // Serialize message field [waypoint_id]
    bufferOffset = _serializer.int32(obj.waypoint_id, buffer, bufferOffset);
    // Serialize message field [next_waypoint_id]
    bufferOffset = _serializer.int32(obj.next_waypoint_id, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [blinker]
    bufferOffset = _serializer.int32(obj.blinker, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointRelation
    let len;
    let data = new WaypointRelation(null);
    // Deserialize message field [waypoint_id]
    data.waypoint_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [next_waypoint_id]
    data.next_waypoint_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blinker]
    data.blinker = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/WaypointRelation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c1af23db81a8c716746b8dc9e1511af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents the connection between a waypoint and a lane.
    
    # Id of refering Waypoint object
    int32 waypoint_id
    
    # Id of Waypoint object that follows the refering waypoint
    int32 next_waypoint_id
    
    # Direction from the refering waypoint to next waypoint in [rad].
    # The angle is calculated from North in counter clockwise. 
    float64 yaw
    
    # Blinker that vehicle must light up when driving from waypoint to next_waypoint
    int32 blinker
    
    # Distance between waypoint and next_waypoint
    float64 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointRelation(null);
    if (msg.waypoint_id !== undefined) {
      resolved.waypoint_id = msg.waypoint_id;
    }
    else {
      resolved.waypoint_id = 0
    }

    if (msg.next_waypoint_id !== undefined) {
      resolved.next_waypoint_id = msg.next_waypoint_id;
    }
    else {
      resolved.next_waypoint_id = 0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.blinker !== undefined) {
      resolved.blinker = msg.blinker;
    }
    else {
      resolved.blinker = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = WaypointRelation;
