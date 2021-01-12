; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude SignalLightArray.msg.html

(cl:defclass <SignalLightArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector autoware_map_msgs-msg:SignalLight)
   :initform (cl:make-array 0 :element-type 'autoware_map_msgs-msg:SignalLight :initial-element (cl:make-instance 'autoware_map_msgs-msg:SignalLight))))
)

(cl:defclass SignalLightArray (<SignalLightArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalLightArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalLightArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<SignalLightArray> is deprecated: use autoware_map_msgs-msg:SignalLightArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SignalLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:header-val is deprecated.  Use autoware_map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SignalLightArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:data-val is deprecated.  Use autoware_map_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalLightArray>) ostream)
  "Serializes a message object of type '<SignalLightArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalLightArray>) istream)
  "Deserializes a message object of type '<SignalLightArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_map_msgs-msg:SignalLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalLightArray>)))
  "Returns string type for a message object of type '<SignalLightArray>"
  "autoware_map_msgs/SignalLightArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalLightArray)))
  "Returns string type for a message object of type 'SignalLightArray"
  "autoware_map_msgs/SignalLightArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalLightArray>)))
  "Returns md5sum for a message object of type '<SignalLightArray>"
  "a70e2f53065c985af5dfda4d27a6eac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalLightArray)))
  "Returns md5sum for a message object of type 'SignalLightArray"
  "a70e2f53065c985af5dfda4d27a6eac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalLightArray>)))
  "Returns full string definition for message of type '<SignalLightArray>"
  (cl:format cl:nil "# This consists of multiple SignalLight objects in a map. ~%~%Header header~%SignalLight[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/SignalLight~%# This represents each lamps in signal light in a map.~%~%# COLOR_TYPES~%uint8 RED = 1~%uint8 GREEN = 2~%uint8 YELLOW = 3~%uint8 RED_FLASHING = 4~%uint8 GREEN_FLASHING = 5~%uint8 YELLOW_FLASHING = 6~%uint8 UNKOWN = 7~%~%# ARROW_TYPES~%uint8 NONE = 0~%uint8 UP = 1~%uint8 UP_RIGHT = 2~%uint8 RIGHT = 3~%uint8 DOWN_RIGHT = 4~%uint8 DOWN = 5~%uint8 DOWN_LEFT = 6~%uint8 LEFT = 7~%uint8 UP_LEFT = 8~%uint8 UNKNOWN = 9~%~%# Id of this SignalLight object. Must be uniqe among all SignalLight objects. ~%int32 signal_light_id~%~%# Id of Signal object which this SignalLight object belongs to~%int32 signal_id~%~%# Id of point that represents the position of this lamp. ~%int32 point_id~%~%# Horizontal direction which this SignalLight is facing in [deg].~%# Angle is calculated from North in clockwise direction. ~%float64 horizontal_angle~%~%# Vertical direction which this SignalLight is facing in [deg].~%# Angle is calculated from vertical rising direction. ~%float64 vertical_angle~%~%# Color of the lamp~%# Must be one of COLOR_TYPES~%int32 color_type~%~%# Direction of the arrow (if the lamp has direction)~%# Must be one of ARROW_TYPES~%int32 arrow_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalLightArray)))
  "Returns full string definition for message of type 'SignalLightArray"
  (cl:format cl:nil "# This consists of multiple SignalLight objects in a map. ~%~%Header header~%SignalLight[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/SignalLight~%# This represents each lamps in signal light in a map.~%~%# COLOR_TYPES~%uint8 RED = 1~%uint8 GREEN = 2~%uint8 YELLOW = 3~%uint8 RED_FLASHING = 4~%uint8 GREEN_FLASHING = 5~%uint8 YELLOW_FLASHING = 6~%uint8 UNKOWN = 7~%~%# ARROW_TYPES~%uint8 NONE = 0~%uint8 UP = 1~%uint8 UP_RIGHT = 2~%uint8 RIGHT = 3~%uint8 DOWN_RIGHT = 4~%uint8 DOWN = 5~%uint8 DOWN_LEFT = 6~%uint8 LEFT = 7~%uint8 UP_LEFT = 8~%uint8 UNKNOWN = 9~%~%# Id of this SignalLight object. Must be uniqe among all SignalLight objects. ~%int32 signal_light_id~%~%# Id of Signal object which this SignalLight object belongs to~%int32 signal_id~%~%# Id of point that represents the position of this lamp. ~%int32 point_id~%~%# Horizontal direction which this SignalLight is facing in [deg].~%# Angle is calculated from North in clockwise direction. ~%float64 horizontal_angle~%~%# Vertical direction which this SignalLight is facing in [deg].~%# Angle is calculated from vertical rising direction. ~%float64 vertical_angle~%~%# Color of the lamp~%# Must be one of COLOR_TYPES~%int32 color_type~%~%# Direction of the arrow (if the lamp has direction)~%# Must be one of ARROW_TYPES~%int32 arrow_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalLightArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalLightArray>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalLightArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
