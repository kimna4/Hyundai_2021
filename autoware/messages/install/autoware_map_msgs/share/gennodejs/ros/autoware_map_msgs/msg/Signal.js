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

class Signal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_id = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_id')) {
        this.signal_id = initObj.signal_id
      }
      else {
        this.signal_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Signal
    // Serialize message field [signal_id]
    bufferOffset = _serializer.int32(obj.signal_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Signal
    let len;
    let data = new Signal(null);
    // Deserialize message field [signal_id]
    data.signal_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/Signal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce22ff7abffe33a847c3be7603063bea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents traffic signal(traffic light) in a map.
    
    # Id of this Signal(traffic light) object. Must be unique among all signals in a map. 
    int32 signal_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Signal(null);
    if (msg.signal_id !== undefined) {
      resolved.signal_id = msg.signal_id;
    }
    else {
      resolved.signal_id = 0
    }

    return resolved;
    }
};

module.exports = Signal;
