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

class Area {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area_id = null;
      this.point_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('area_id')) {
        this.area_id = initObj.area_id
      }
      else {
        this.area_id = 0;
      }
      if (initObj.hasOwnProperty('point_ids')) {
        this.point_ids = initObj.point_ids
      }
      else {
        this.point_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Area
    // Serialize message field [area_id]
    bufferOffset = _serializer.int32(obj.area_id, buffer, bufferOffset);
    // Serialize message field [point_ids]
    bufferOffset = _arraySerializer.int32(obj.point_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Area
    let len;
    let data = new Area(null);
    // Deserialize message field [area_id]
    data.area_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [point_ids]
    data.point_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.point_ids.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/Area';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4db5defc041fdd0f08efb2223b0af08a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents a general purpose area obejct in map
    
    # Id of this Area object. Must be unique within all area objects.
    int32 area_id
    
    # Vertices that describes this area. Must be in clockwise order.
    int32[] point_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Area(null);
    if (msg.area_id !== undefined) {
      resolved.area_id = msg.area_id;
    }
    else {
      resolved.area_id = 0
    }

    if (msg.point_ids !== undefined) {
      resolved.point_ids = msg.point_ids;
    }
    else {
      resolved.point_ids = []
    }

    return resolved;
    }
};

module.exports = Area;
