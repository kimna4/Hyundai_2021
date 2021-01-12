; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude WaypointRelationArray.msg.html

(cl:defclass <WaypointRelationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector autoware_map_msgs-msg:WaypointRelation)
   :initform (cl:make-array 0 :element-type 'autoware_map_msgs-msg:WaypointRelation :initial-element (cl:make-instance 'autoware_map_msgs-msg:WaypointRelation))))
)

(cl:defclass WaypointRelationArray (<WaypointRelationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointRelationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointRelationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<WaypointRelationArray> is deprecated: use autoware_map_msgs-msg:WaypointRelationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointRelationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:header-val is deprecated.  Use autoware_map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <WaypointRelationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:data-val is deprecated.  Use autoware_map_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointRelationArray>) ostream)
  "Serializes a message object of type '<WaypointRelationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointRelationArray>) istream)
  "Deserializes a message object of type '<WaypointRelationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_map_msgs-msg:WaypointRelation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointRelationArray>)))
  "Returns string type for a message object of type '<WaypointRelationArray>"
  "autoware_map_msgs/WaypointRelationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointRelationArray)))
  "Returns string type for a message object of type 'WaypointRelationArray"
  "autoware_map_msgs/WaypointRelationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointRelationArray>)))
  "Returns md5sum for a message object of type '<WaypointRelationArray>"
  "3cbc28f0f2b9f8544eb0ee2045b3e562")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointRelationArray)))
  "Returns md5sum for a message object of type 'WaypointRelationArray"
  "3cbc28f0f2b9f8544eb0ee2045b3e562")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointRelationArray>)))
  "Returns full string definition for message of type '<WaypointRelationArray>"
  (cl:format cl:nil "# This consists of multiple WaypointRelation objects in a map. ~%~%Header header~%WaypointRelation[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/WaypointRelation~%# This represents the connection between a waypoint and a lane.~%~%# Id of refering Waypoint object~%int32 waypoint_id~%~%# Id of Waypoint object that follows the refering waypoint~%int32 next_waypoint_id~%~%# Direction from the refering waypoint to next waypoint in [rad].~%# The angle is calculated from North in counter clockwise. ~%float64 yaw~%~%# Blinker that vehicle must light up when driving from waypoint to next_waypoint~%int32 blinker~%~%# Distance between waypoint and next_waypoint~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointRelationArray)))
  "Returns full string definition for message of type 'WaypointRelationArray"
  (cl:format cl:nil "# This consists of multiple WaypointRelation objects in a map. ~%~%Header header~%WaypointRelation[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/WaypointRelation~%# This represents the connection between a waypoint and a lane.~%~%# Id of refering Waypoint object~%int32 waypoint_id~%~%# Id of Waypoint object that follows the refering waypoint~%int32 next_waypoint_id~%~%# Direction from the refering waypoint to next waypoint in [rad].~%# The angle is calculated from North in counter clockwise. ~%float64 yaw~%~%# Blinker that vehicle must light up when driving from waypoint to next_waypoint~%int32 blinker~%~%# Distance between waypoint and next_waypoint~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointRelationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointRelationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointRelationArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
