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

class SignalLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_light_id = null;
      this.signal_id = null;
      this.point_id = null;
      this.horizontal_angle = null;
      this.vertical_angle = null;
      this.color_type = null;
      this.arrow_type = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_light_id')) {
        this.signal_light_id = initObj.signal_light_id
      }
      else {
        this.signal_light_id = 0;
      }
      if (initObj.hasOwnProperty('signal_id')) {
        this.signal_id = initObj.signal_id
      }
      else {
        this.signal_id = 0;
      }
      if (initObj.hasOwnProperty('point_id')) {
        this.point_id = initObj.point_id
      }
      else {
        this.point_id = 0;
      }
      if (initObj.hasOwnProperty('horizontal_angle')) {
        this.horizontal_angle = initObj.horizontal_angle
      }
      else {
        this.horizontal_angle = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_angle')) {
        this.vertical_angle = initObj.vertical_angle
      }
      else {
        this.vertical_angle = 0.0;
      }
      if (initObj.hasOwnProperty('color_type')) {
        this.color_type = initObj.color_type
      }
      else {
        this.color_type = 0;
      }
      if (initObj.hasOwnProperty('arrow_type')) {
        this.arrow_type = initObj.arrow_type
      }
      else {
        this.arrow_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalLight
    // Serialize message field [signal_light_id]
    bufferOffset = _serializer.int32(obj.signal_light_id, buffer, bufferOffset);
    // Serialize message field [signal_id]
    bufferOffset = _serializer.int32(obj.signal_id, buffer, bufferOffset);
    // Serialize message field [point_id]
    bufferOffset = _serializer.int32(obj.point_id, buffer, bufferOffset);
    // Serialize message field [horizontal_angle]
    bufferOffset = _serializer.float64(obj.horizontal_angle, buffer, bufferOffset);
    // Serialize message field [vertical_angle]
    bufferOffset = _serializer.float64(obj.vertical_angle, buffer, bufferOffset);
    // Serialize message field [color_type]
    bufferOffset = _serializer.int32(obj.color_type, buffer, bufferOffset);
    // Serialize message field [arrow_type]
    bufferOffset = _serializer.int32(obj.arrow_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalLight
    let len;
    let data = new SignalLight(null);
    // Deserialize message field [signal_light_id]
    data.signal_light_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [signal_id]
    data.signal_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [point_id]
    data.point_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [horizontal_angle]
    data.horizontal_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_angle]
    data.vertical_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [color_type]
    data.color_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [arrow_type]
    data.arrow_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/SignalLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a38faee2ab9b5106b86c9785ffaff92d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents each lamps in signal light in a map.
    
    # COLOR_TYPES
    uint8 RED = 1
    uint8 GREEN = 2
    uint8 YELLOW = 3
    uint8 RED_FLASHING = 4
    uint8 GREEN_FLASHING = 5
    uint8 YELLOW_FLASHING = 6
    uint8 UNKOWN = 7
    
    # ARROW_TYPES
    uint8 NONE = 0
    uint8 UP = 1
    uint8 UP_RIGHT = 2
    uint8 RIGHT = 3
    uint8 DOWN_RIGHT = 4
    uint8 DOWN = 5
    uint8 DOWN_LEFT = 6
    uint8 LEFT = 7
    uint8 UP_LEFT = 8
    uint8 UNKNOWN = 9
    
    # Id of this SignalLight object. Must be uniqe among all SignalLight objects. 
    int32 signal_light_id
    
    # Id of Signal object which this SignalLight object belongs to
    int32 signal_id
    
    # Id of point that represents the position of this lamp. 
    int32 point_id
    
    # Horizontal direction which this SignalLight is facing in [deg].
    # Angle is calculated from North in clockwise direction. 
    float64 horizontal_angle
    
    # Vertical direction which this SignalLight is facing in [deg].
    # Angle is calculated from vertical rising direction. 
    float64 vertical_angle
    
    # Color of the lamp
    # Must be one of COLOR_TYPES
    int32 color_type
    
    # Direction of the arrow (if the lamp has direction)
    # Must be one of ARROW_TYPES
    int32 arrow_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignalLight(null);
    if (msg.signal_light_id !== undefined) {
      resolved.signal_light_id = msg.signal_light_id;
    }
    else {
      resolved.signal_light_id = 0
    }

    if (msg.signal_id !== undefined) {
      resolved.signal_id = msg.signal_id;
    }
    else {
      resolved.signal_id = 0
    }

    if (msg.point_id !== undefined) {
      resolved.point_id = msg.point_id;
    }
    else {
      resolved.point_id = 0
    }

    if (msg.horizontal_angle !== undefined) {
      resolved.horizontal_angle = msg.horizontal_angle;
    }
    else {
      resolved.horizontal_angle = 0.0
    }

    if (msg.vertical_angle !== undefined) {
      resolved.vertical_angle = msg.vertical_angle;
    }
    else {
      resolved.vertical_angle = 0.0
    }

    if (msg.color_type !== undefined) {
      resolved.color_type = msg.color_type;
    }
    else {
      resolved.color_type = 0
    }

    if (msg.arrow_type !== undefined) {
      resolved.arrow_type = msg.arrow_type;
    }
    else {
      resolved.arrow_type = 0
    }

    return resolved;
    }
};

// Constants for message
SignalLight.Constants = {
  RED: 1,
  GREEN: 2,
  YELLOW: 3,
  RED_FLASHING: 4,
  GREEN_FLASHING: 5,
  YELLOW_FLASHING: 6,
  UNKOWN: 7,
  NONE: 0,
  UP: 1,
  UP_RIGHT: 2,
  RIGHT: 3,
  DOWN_RIGHT: 4,
  DOWN: 5,
  DOWN_LEFT: 6,
  LEFT: 7,
  UP_LEFT: 8,
  UNKNOWN: 9,
}

module.exports = SignalLight;
