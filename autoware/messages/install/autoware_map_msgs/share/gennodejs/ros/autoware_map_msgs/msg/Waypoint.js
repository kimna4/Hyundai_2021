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

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint_id = null;
      this.point_id = null;
      this.velocity = null;
      this.stop_line = null;
      this.left_width = null;
      this.right_width = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint_id')) {
        this.waypoint_id = initObj.waypoint_id
      }
      else {
        this.waypoint_id = 0;
      }
      if (initObj.hasOwnProperty('point_id')) {
        this.point_id = initObj.point_id
      }
      else {
        this.point_id = 0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('stop_line')) {
        this.stop_line = initObj.stop_line
      }
      else {
        this.stop_line = 0;
      }
      if (initObj.hasOwnProperty('left_width')) {
        this.left_width = initObj.left_width
      }
      else {
        this.left_width = 0.0;
      }
      if (initObj.hasOwnProperty('right_width')) {
        this.right_width = initObj.right_width
      }
      else {
        this.right_width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Serialize message field [waypoint_id]
    bufferOffset = _serializer.int32(obj.waypoint_id, buffer, bufferOffset);
    // Serialize message field [point_id]
    bufferOffset = _serializer.int32(obj.point_id, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [stop_line]
    bufferOffset = _serializer.int32(obj.stop_line, buffer, bufferOffset);
    // Serialize message field [left_width]
    bufferOffset = _serializer.float64(obj.left_width, buffer, bufferOffset);
    // Serialize message field [right_width]
    bufferOffset = _serializer.float64(obj.right_width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [waypoint_id]
    data.waypoint_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [point_id]
    data.point_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stop_line]
    data.stop_line = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_width]
    data.left_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_width]
    data.right_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a92fbf1608fe14a2a517fbd332e0c6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents a waypoint in a map. 
    
    # Id of this Waypoint object
    int32 waypoint_id
    
    # Id of Point that represents the position of this waypoint
    int32 point_id
    
    # reference velocity of this waypoint. [km/h]
    float64 velocity
    
    # describes whether vehicle must stop at this waypoint
    # no_stop = 0, stop = 1
    int32 stop_line
    
    # distance to left border of the belonging lane in [m]
    float64 left_width
    
    # distance to right border of the belonging lane in [m]
    float64 right_width
    
    # height limit for the vehicle to drive this waypoint [m]
    float64 height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Waypoint(null);
    if (msg.waypoint_id !== undefined) {
      resolved.waypoint_id = msg.waypoint_id;
    }
    else {
      resolved.waypoint_id = 0
    }

    if (msg.point_id !== undefined) {
      resolved.point_id = msg.point_id;
    }
    else {
      resolved.point_id = 0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.stop_line !== undefined) {
      resolved.stop_line = msg.stop_line;
    }
    else {
      resolved.stop_line = 0
    }

    if (msg.left_width !== undefined) {
      resolved.left_width = msg.left_width;
    }
    else {
      resolved.left_width = 0.0
    }

    if (msg.right_width !== undefined) {
      resolved.right_width = msg.right_width;
    }
    else {
      resolved.right_width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    return resolved;
    }
};

module.exports = Waypoint;
