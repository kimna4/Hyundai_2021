// Auto-generated. Do not edit!

// (in-package autoware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WaypointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aid = null;
      this.lanechange_state = null;
      this.steering_state = null;
      this.accel_state = null;
      this.stop_state = null;
      this.event_state = null;
    }
    else {
      if (initObj.hasOwnProperty('aid')) {
        this.aid = initObj.aid
      }
      else {
        this.aid = 0;
      }
      if (initObj.hasOwnProperty('lanechange_state')) {
        this.lanechange_state = initObj.lanechange_state
      }
      else {
        this.lanechange_state = 0;
      }
      if (initObj.hasOwnProperty('steering_state')) {
        this.steering_state = initObj.steering_state
      }
      else {
        this.steering_state = 0;
      }
      if (initObj.hasOwnProperty('accel_state')) {
        this.accel_state = initObj.accel_state
      }
      else {
        this.accel_state = 0;
      }
      if (initObj.hasOwnProperty('stop_state')) {
        this.stop_state = initObj.stop_state
      }
      else {
        this.stop_state = 0;
      }
      if (initObj.hasOwnProperty('event_state')) {
        this.event_state = initObj.event_state
      }
      else {
        this.event_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointState
    // Serialize message field [aid]
    bufferOffset = _serializer.int32(obj.aid, buffer, bufferOffset);
    // Serialize message field [lanechange_state]
    bufferOffset = _serializer.uint8(obj.lanechange_state, buffer, bufferOffset);
    // Serialize message field [steering_state]
    bufferOffset = _serializer.uint8(obj.steering_state, buffer, bufferOffset);
    // Serialize message field [accel_state]
    bufferOffset = _serializer.uint8(obj.accel_state, buffer, bufferOffset);
    // Serialize message field [stop_state]
    bufferOffset = _serializer.uint8(obj.stop_state, buffer, bufferOffset);
    // Serialize message field [event_state]
    bufferOffset = _serializer.uint8(obj.event_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointState
    let len;
    let data = new WaypointState(null);
    // Deserialize message field [aid]
    data.aid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lanechange_state]
    data.lanechange_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steering_state]
    data.steering_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accel_state]
    data.accel_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stop_state]
    data.stop_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [event_state]
    data.event_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_msgs/WaypointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '623a0ffbb0a052490adc981c2a3e8edd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 aid
    uint8 NULLSTATE=0
    
    # lanechange
    uint8 lanechange_state
    
    # bilinker
    uint8 steering_state
    uint8 STR_LEFT=1
    uint8 STR_RIGHT=2
    uint8 STR_STRAIGHT=3
    uint8 STR_BACK=4
    
    uint8 accel_state
    
    uint8 stop_state
    # 1 is stopline, 2 is stop which can only be released manually.
    uint8 TYPE_STOPLINE=1
    uint8 TYPE_STOP=2
    
    uint8 event_state
    uint8 TYPE_EVENT_NULL = 0
    uint8 TYPE_EVENT_GOAL = 1
    uint8 TYPE_EVENT_MIDDLE_GOAL = 2
    uint8 TYPE_EVENT_POSITION_STOP = 3
    uint8 TYPE_EVENT_BUS_STOP = 4
    uint8 TYPE_EVENT_PARKING = 5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointState(null);
    if (msg.aid !== undefined) {
      resolved.aid = msg.aid;
    }
    else {
      resolved.aid = 0
    }

    if (msg.lanechange_state !== undefined) {
      resolved.lanechange_state = msg.lanechange_state;
    }
    else {
      resolved.lanechange_state = 0
    }

    if (msg.steering_state !== undefined) {
      resolved.steering_state = msg.steering_state;
    }
    else {
      resolved.steering_state = 0
    }

    if (msg.accel_state !== undefined) {
      resolved.accel_state = msg.accel_state;
    }
    else {
      resolved.accel_state = 0
    }

    if (msg.stop_state !== undefined) {
      resolved.stop_state = msg.stop_state;
    }
    else {
      resolved.stop_state = 0
    }

    if (msg.event_state !== undefined) {
      resolved.event_state = msg.event_state;
    }
    else {
      resolved.event_state = 0
    }

    return resolved;
    }
};

// Constants for message
WaypointState.Constants = {
  NULLSTATE: 0,
  STR_LEFT: 1,
  STR_RIGHT: 2,
  STR_STRAIGHT: 3,
  STR_BACK: 4,
  TYPE_STOPLINE: 1,
  TYPE_STOP: 2,
  TYPE_EVENT_NULL: 0,
  TYPE_EVENT_GOAL: 1,
  TYPE_EVENT_MIDDLE_GOAL: 2,
  TYPE_EVENT_POSITION_STOP: 3,
  TYPE_EVENT_BUS_STOP: 4,
  TYPE_EVENT_PARKING: 5,
}

module.exports = WaypointState;
