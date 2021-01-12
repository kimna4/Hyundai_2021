; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude LaneArray.msg.html

(cl:defclass <LaneArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector autoware_map_msgs-msg:Lane)
   :initform (cl:make-array 0 :element-type 'autoware_map_msgs-msg:Lane :initial-element (cl:make-instance 'autoware_map_msgs-msg:Lane))))
)

(cl:defclass LaneArray (<LaneArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<LaneArray> is deprecated: use autoware_map_msgs-msg:LaneArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:header-val is deprecated.  Use autoware_map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <LaneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:data-val is deprecated.  Use autoware_map_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneArray>) ostream)
  "Serializes a message object of type '<LaneArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneArray>) istream)
  "Deserializes a message object of type '<LaneArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_map_msgs-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneArray>)))
  "Returns string type for a message object of type '<LaneArray>"
  "autoware_map_msgs/LaneArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneArray)))
  "Returns string type for a message object of type 'LaneArray"
  "autoware_map_msgs/LaneArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneArray>)))
  "Returns md5sum for a message object of type '<LaneArray>"
  "1849af6a05682cff6c714d459a3e51f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneArray)))
  "Returns md5sum for a message object of type 'LaneArray"
  "1849af6a05682cff6c714d459a3e51f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneArray>)))
  "Returns full string definition for message of type '<LaneArray>"
  (cl:format cl:nil "# This consists of multiple lanes in a map with reference coordinate frame. ~%~%Header header~%Lane[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/Lane~%# This represents a lane in a map.~%~%# Id of this Lane object. Must be unique among all lane objects.~%int32 lane_id~%~%# Id of the first waypoint that belongs to this lane~%int32 start_waypoint_id~%~%# Id of the last waypoint that belongs to this lane~%int32 end_waypoint_id~%~%# This describes how many lanes there are in left side of this lane.~%# E.g. If there are 2 lanes on the left side, then lane_number will be 2. ~%# If the road is single lane, then this will be 0. ~%# This will be always 0 in intersection. ~%int32 lane_number~%~%# Total number of lanes present in road. ~%int32 num_of_lanes~%~%# Speed limit of this lane in [km/h]~%float64 speed_limit~%~%# Length of this lane in [m]~%# i.e. accumulated length from start_waypoint to end_waypoint of this lane~%float64 length~%~%# Maximum width of vehicle that can drive this lane in [m]~%float64 width_limit~%~%# Maximum height of vehicle that can drive this lane in [m]. ~%float64 height_limit~%~%# Maximum weight of vehicle that can drive this lane in [kg]. ~%float64 weight_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneArray)))
  "Returns full string definition for message of type 'LaneArray"
  (cl:format cl:nil "# This consists of multiple lanes in a map with reference coordinate frame. ~%~%Header header~%Lane[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/Lane~%# This represents a lane in a map.~%~%# Id of this Lane object. Must be unique among all lane objects.~%int32 lane_id~%~%# Id of the first waypoint that belongs to this lane~%int32 start_waypoint_id~%~%# Id of the last waypoint that belongs to this lane~%int32 end_waypoint_id~%~%# This describes how many lanes there are in left side of this lane.~%# E.g. If there are 2 lanes on the left side, then lane_number will be 2. ~%# If the road is single lane, then this will be 0. ~%# This will be always 0 in intersection. ~%int32 lane_number~%~%# Total number of lanes present in road. ~%int32 num_of_lanes~%~%# Speed limit of this lane in [km/h]~%float64 speed_limit~%~%# Length of this lane in [m]~%# i.e. accumulated length from start_waypoint to end_waypoint of this lane~%float64 length~%~%# Maximum width of vehicle that can drive this lane in [m]~%float64 width_limit~%~%# Maximum height of vehicle that can drive this lane in [m]. ~%float64 height_limit~%~%# Maximum weight of vehicle that can drive this lane in [kg]. ~%float64 weight_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
