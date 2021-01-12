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

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.start_waypoint_id = null;
      this.end_waypoint_id = null;
      this.lane_number = null;
      this.num_of_lanes = null;
      this.speed_limit = null;
      this.length = null;
      this.width_limit = null;
      this.height_limit = null;
      this.weight_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('start_waypoint_id')) {
        this.start_waypoint_id = initObj.start_waypoint_id
      }
      else {
        this.start_waypoint_id = 0;
      }
      if (initObj.hasOwnProperty('end_waypoint_id')) {
        this.end_waypoint_id = initObj.end_waypoint_id
      }
      else {
        this.end_waypoint_id = 0;
      }
      if (initObj.hasOwnProperty('lane_number')) {
        this.lane_number = initObj.lane_number
      }
      else {
        this.lane_number = 0;
      }
      if (initObj.hasOwnProperty('num_of_lanes')) {
        this.num_of_lanes = initObj.num_of_lanes
      }
      else {
        this.num_of_lanes = 0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width_limit')) {
        this.width_limit = initObj.width_limit
      }
      else {
        this.width_limit = 0.0;
      }
      if (initObj.hasOwnProperty('height_limit')) {
        this.height_limit = initObj.height_limit
      }
      else {
        this.height_limit = 0.0;
      }
      if (initObj.hasOwnProperty('weight_limit')) {
        this.weight_limit = initObj.weight_limit
      }
      else {
        this.weight_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [start_waypoint_id]
    bufferOffset = _serializer.int32(obj.start_waypoint_id, buffer, bufferOffset);
    // Serialize message field [end_waypoint_id]
    bufferOffset = _serializer.int32(obj.end_waypoint_id, buffer, bufferOffset);
    // Serialize message field [lane_number]
    bufferOffset = _serializer.int32(obj.lane_number, buffer, bufferOffset);
    // Serialize message field [num_of_lanes]
    bufferOffset = _serializer.int32(obj.num_of_lanes, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float64(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [width_limit]
    bufferOffset = _serializer.float64(obj.width_limit, buffer, bufferOffset);
    // Serialize message field [height_limit]
    bufferOffset = _serializer.float64(obj.height_limit, buffer, bufferOffset);
    // Serialize message field [weight_limit]
    bufferOffset = _serializer.float64(obj.weight_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_waypoint_id]
    data.start_waypoint_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [end_waypoint_id]
    data.end_waypoint_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_number]
    data.lane_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_of_lanes]
    data.num_of_lanes = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width_limit]
    data.width_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height_limit]
    data.height_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [weight_limit]
    data.weight_limit = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfc9dc43edcd85ad77faeee0a34e6b3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Lane(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.start_waypoint_id !== undefined) {
      resolved.start_waypoint_id = msg.start_waypoint_id;
    }
    else {
      resolved.start_waypoint_id = 0
    }

    if (msg.end_waypoint_id !== undefined) {
      resolved.end_waypoint_id = msg.end_waypoint_id;
    }
    else {
      resolved.end_waypoint_id = 0
    }

    if (msg.lane_number !== undefined) {
      resolved.lane_number = msg.lane_number;
    }
    else {
      resolved.lane_number = 0
    }

    if (msg.num_of_lanes !== undefined) {
      resolved.num_of_lanes = msg.num_of_lanes;
    }
    else {
      resolved.num_of_lanes = 0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width_limit !== undefined) {
      resolved.width_limit = msg.width_limit;
    }
    else {
      resolved.width_limit = 0.0
    }

    if (msg.height_limit !== undefined) {
      resolved.height_limit = msg.height_limit;
    }
    else {
      resolved.height_limit = 0.0
    }

    if (msg.weight_limit !== undefined) {
      resolved.weight_limit = msg.weight_limit;
    }
    else {
      resolved.weight_limit = 0.0
    }

    return resolved;
    }
};

module.exports = Lane;
