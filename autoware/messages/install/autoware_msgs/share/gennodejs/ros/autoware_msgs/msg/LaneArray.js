// Auto-generated. Do not edit!

// (in-package autoware_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lane = require('./Lane.js');

//-----------------------------------------------------------

class LaneArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneArray
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneArray
    let len;
    let data = new LaneArray(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = Lane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lanes.forEach((val) => {
      length += Lane.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'autoware_msgs/LaneArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23abb100bdfa4ee58530bb628c974c2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    Lane[] lanes
    
    ================================================================================
    MSG: autoware_msgs/Lane
    Header header
    int32 increment
    int32 lane_id
    Waypoint[] waypoints
    
    uint32 lane_index
    float32 cost
    float32 closest_object_distance
    float32 closest_object_velocity
    bool is_blocked
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: autoware_msgs/Waypoint
    # global id
    int32 gid 
    # local id
    int32 lid
    geometry_msgs/PoseStamped pose
    geometry_msgs/TwistStamped twist
    DTLane dtlane
    int32 change_flag
    WaypointState wpstate
    
    uint32 lane_id
    uint32 left_lane_id
    uint32 right_lane_id
    uint32 stop_line_id
    float32 cost
    float32 time_cost
    
    # Lane Direction
    # FORWARD        = 0
    # FORWARD_LEFT       = 1
    # FORWARD_RIGHT      = 2
    # BACKWARD        = 3 
    # BACKWARD_LEFT      = 4
    # BACKWARD_RIGHT    = 5
    # STANDSTILL       = 6
    uint32 direction
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: autoware_msgs/DTLane
    float64 dist
    float64 dir
    float64 apara
    float64 r
    float64 slope
    float64 cant
    float64 lw
    float64 rw
    
    ================================================================================
    MSG: autoware_msgs/WaypointState
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
    const resolved = new LaneArray(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = Lane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    return resolved;
    }
};

module.exports = LaneArray;
