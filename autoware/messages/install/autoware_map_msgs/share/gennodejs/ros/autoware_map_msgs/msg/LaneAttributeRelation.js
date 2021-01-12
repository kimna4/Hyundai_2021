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

class LaneAttributeRelation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
      this.attribute_type = null;
      this.area_id = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('attribute_type')) {
        this.attribute_type = initObj.attribute_type
      }
      else {
        this.attribute_type = 0;
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
    // Serializes a message object of type LaneAttributeRelation
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [attribute_type]
    bufferOffset = _serializer.int32(obj.attribute_type, buffer, bufferOffset);
    // Serialize message field [area_id]
    bufferOffset = _serializer.int32(obj.area_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneAttributeRelation
    let len;
    let data = new LaneAttributeRelation(null);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [attribute_type]
    data.attribute_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [area_id]
    data.area_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/LaneAttributeRelation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e65c2a2db848427c6061a3bc2aff585f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This describes an attribute of lane in a map.
    
    # ATTRIBUTE_TYPES
    uint32 PLANE = 1
    uint32 INTERSECTION = 2
    uint32 CROSS_WALK = 3
    uint32 DISABLE_LANE_CHANGE = 4
    uint32 DISABLE_PARKING = 5
    uint32 RAILROAD = 6
    uint32 PEDESTRIAN_SPACE = 7
    uint32 PARKING_AREA = 8
    
    # Id of Lane object which attribute is applied.
    int32 lane_id
    
    # Attribute that is applied to lane
    # Must be one of ATTRIBUTE_TYPES
    int32 attribute_type
    
    # Id of Area object that is relevant to the attribute (if exists). 
    # e.g. Id of Area object that describes crosswalk when attribute_type = CROSS_WALK. 
    int32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneAttributeRelation(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.attribute_type !== undefined) {
      resolved.attribute_type = msg.attribute_type;
    }
    else {
      resolved.attribute_type = 0
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

// Constants for message
LaneAttributeRelation.Constants = {
  PLANE: 1,
  INTERSECTION: 2,
  CROSS_WALK: 3,
  DISABLE_LANE_CHANGE: 4,
  DISABLE_PARKING: 5,
  RAILROAD: 6,
  PEDESTRIAN_SPACE: 7,
  PARKING_AREA: 8,
}

module.exports = LaneAttributeRelation;
