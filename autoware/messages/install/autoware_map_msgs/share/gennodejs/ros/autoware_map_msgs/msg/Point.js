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

class Point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point_id = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.mgrs = null;
      this.epsg = null;
      this.pcd = null;
      this.lat = null;
      this.lng = null;
    }
    else {
      if (initObj.hasOwnProperty('point_id')) {
        this.point_id = initObj.point_id
      }
      else {
        this.point_id = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('mgrs')) {
        this.mgrs = initObj.mgrs
      }
      else {
        this.mgrs = 0;
      }
      if (initObj.hasOwnProperty('epsg')) {
        this.epsg = initObj.epsg
      }
      else {
        this.epsg = 0;
      }
      if (initObj.hasOwnProperty('pcd')) {
        this.pcd = initObj.pcd
      }
      else {
        this.pcd = '';
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lng')) {
        this.lng = initObj.lng
      }
      else {
        this.lng = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Point
    // Serialize message field [point_id]
    bufferOffset = _serializer.int32(obj.point_id, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [mgrs]
    bufferOffset = _serializer.int32(obj.mgrs, buffer, bufferOffset);
    // Serialize message field [epsg]
    bufferOffset = _serializer.int32(obj.epsg, buffer, bufferOffset);
    // Serialize message field [pcd]
    bufferOffset = _serializer.string(obj.pcd, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lng]
    bufferOffset = _serializer.float64(obj.lng, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Point
    let len;
    let data = new Point(null);
    // Deserialize message field [point_id]
    data.point_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mgrs]
    data.mgrs = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [epsg]
    data.epsg = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pcd]
    data.pcd = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lng]
    data.lng = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pcd.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_map_msgs/Point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2eca464a653f0f18a5e4b6d3694d3d9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents a point in a map.
    
    # Id of this Point object. Must be unique among all points in a map.
    int32 point_id
    
    # Position of a point in MGRS coordinate [m]
    # x = northing
    # y = easting
    # z = elevation
    float64 x
    float64 y
    float64 z
    
    # Codes that describe coordinate of the x,y,z values. 
    int32 mgrs
    int32 epsg
    
    # PCD file name which that is relevant. 
    string pcd
    
    # latitude and longitude in WGS84 coordinate in [deg]
    float64 lat
    float64 lng
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Point(null);
    if (msg.point_id !== undefined) {
      resolved.point_id = msg.point_id;
    }
    else {
      resolved.point_id = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.mgrs !== undefined) {
      resolved.mgrs = msg.mgrs;
    }
    else {
      resolved.mgrs = 0
    }

    if (msg.epsg !== undefined) {
      resolved.epsg = msg.epsg;
    }
    else {
      resolved.epsg = 0
    }

    if (msg.pcd !== undefined) {
      resolved.pcd = msg.pcd;
    }
    else {
      resolved.pcd = ''
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lng !== undefined) {
      resolved.lng = msg.lng;
    }
    else {
      resolved.lng = 0.0
    }

    return resolved;
    }
};

module.exports = Point;
