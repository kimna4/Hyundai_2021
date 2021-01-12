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

class Wayarea {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wayarea_id = null;
      this.area_id = null;
    }
    else {
      if (initObj.hasOwnProperty('wayarea_id')) {
        this.wayarea_id = initObj.wayarea_id
      }
      else {
        this.wayarea_id = 0;
      }
      if (initObj.hasOwnProperty('area_id')) {
        this.area_id = initObj.area_id
      }
      else {
        this.area_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Wayarea
    // Serialize message field [wayarea_id]
    bufferOffset = _serializer.int32(obj.wayarea_id, buffer, bufferOffset);
    // Serialize message field [area_id]
    bufferOffset = _serializer.int32(obj.area_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Wayarea
    let len;
    let data = new Wayarea(null);
    // Deserialize message field [wayarea_id]
    data.wayarea_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [area_id]
    data.area_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/Wayarea';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be1e5d0a2815399e87eaebee2e34cb4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents a wayarea in a map.
    # Way area is an area where vehicle are traversable. 
    
    # Id of this Wayarea object. Must unique among all Wayareas in a map
    int32 wayarea_id
    
    # Id of Area object that represents this wayarea. 
    int32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Wayarea(null);
    if (msg.wayarea_id !== undefined) {
      resolved.wayarea_id = msg.wayarea_id;
    }
    else {
      resolved.wayarea_id = 0
    }

    if (msg.area_id !== undefined) {
      resolved.area_id = msg.area_id;
    }
    else {
      resolved.area_id = 0
    }

    return resolved;
    }
};

module.exports = Wayarea;
