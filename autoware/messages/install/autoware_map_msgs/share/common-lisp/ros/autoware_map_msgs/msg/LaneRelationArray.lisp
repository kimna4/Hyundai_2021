; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude LaneRelationArray.msg.html

(cl:defclass <LaneRelationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector autoware_map_msgs-msg:LaneRelation)
   :initform (cl:make-array 0 :element-type 'autoware_map_msgs-msg:LaneRelation :initial-element (cl:make-instance 'autoware_map_msgs-msg:LaneRelation))))
)

(cl:defclass LaneRelationArray (<LaneRelationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneRelationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneRelationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<LaneRelationArray> is deprecated: use autoware_map_msgs-msg:LaneRelationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneRelationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:header-val is deprecated.  Use autoware_map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <LaneRelationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:data-val is deprecated.  Use autoware_map_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneRelationArray>) ostream)
  "Serializes a message object of type '<LaneRelationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneRelationArray>) istream)
  "Deserializes a message object of type '<LaneRelationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_map_msgs-msg:LaneRelation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneRelationArray>)))
  "Returns string type for a message object of type '<LaneRelationArray>"
  "autoware_map_msgs/LaneRelationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneRelationArray)))
  "Returns string type for a message object of type 'LaneRelationArray"
  "autoware_map_msgs/LaneRelationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneRelationArray>)))
  "Returns md5sum for a message object of type '<LaneRelationArray>"
  "329b4e9aa6f696f62fd90636a3f80778")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneRelationArray)))
  "Returns md5sum for a message object of type 'LaneRelationArray"
  "329b4e9aa6f696f62fd90636a3f80778")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneRelationArray>)))
  "Returns full string definition for message of type '<LaneRelationArray>"
  (cl:format cl:nil "# This consists of multiple LaneRelation objects in a map. ~%~%Header header~%LaneRelation[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/LaneRelation~%# This represents lane connections in a map.~%~%# BlinkerType~%uint8 None = 0~%uint8 Left = 1~%uint8 Right = 2~%~%# Id of refering Lane object.~%int32 lane_id~%~%# Id of Lane objects that follows after refering lane. ~%int32 next_lane_id~%~%# Blinker that must be lit when doing driving towards the next_lane.~%# Must be one of \"Blinker Type\"~%# e.g. if next_lane_id is left turning lane in intersection, then blinker = LEFT~%int32 blinker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneRelationArray)))
  "Returns full string definition for message of type 'LaneRelationArray"
  (cl:format cl:nil "# This consists of multiple LaneRelation objects in a map. ~%~%Header header~%LaneRelation[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/LaneRelation~%# This represents lane connections in a map.~%~%# BlinkerType~%uint8 None = 0~%uint8 Left = 1~%uint8 Right = 2~%~%# Id of refering Lane object.~%int32 lane_id~%~%# Id of Lane objects that follows after refering lane. ~%int32 next_lane_id~%~%# Blinker that must be lit when doing driving towards the next_lane.~%# Must be one of \"Blinker Type\"~%# e.g. if next_lane_id is left turning lane in intersection, then blinker = LEFT~%int32 blinker~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneRelationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneRelationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneRelationArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
