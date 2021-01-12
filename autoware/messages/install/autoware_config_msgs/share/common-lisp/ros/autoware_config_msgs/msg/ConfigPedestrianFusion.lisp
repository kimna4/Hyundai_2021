; Auto-generated. Do not edit!


(cl:in-package autoware_config_msgs-msg)


;//! \htmlinclude ConfigPedestrianFusion.msg.html

(cl:defclass <ConfigPedestrianFusion> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (min_low_height
    :reader min_low_height
    :initarg :min_low_height
    :type cl:float
    :initform 0.0)
   (max_low_height
    :reader max_low_height
    :initarg :max_low_height
    :type cl:float
    :initform 0.0)
   (max_height
    :reader max_height
    :initarg :max_height
    :type cl:float
    :initform 0.0)
   (min_points
    :reader min_points
    :initarg :min_points
    :type cl:integer
    :initform 0)
   (dispersion
    :reader dispersion
    :initarg :dispersion
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConfigPedestrianFusion (<ConfigPedestrianFusion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigPedestrianFusion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigPedestrianFusion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_config_msgs-msg:<ConfigPedestrianFusion> is deprecated: use autoware_config_msgs-msg:ConfigPedestrianFusion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConfigPedestrianFusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_config_msgs-msg:header-val is deprecated.  Use autoware_config_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'min_low_height-val :lambda-list '(m))
(cl:defmethod min_low_height-val ((m <ConfigPedestrianFusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_config_msgs-msg:min_low_height-val is deprecated.  Use autoware_config_msgs-msg:min_low_height instead.")
  (min_low_height m))

(cl:ensure-generic-function 'max_low_height-val :lambda-list '(m))
(cl:defmethod max_low_height-val ((m <ConfigPedestrianFusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_config_msgs-msg:max_low_height-val is deprecated.  Use autoware_config_msgs-msg:max_low_height instead.")
  (max_low_height m))

(cl:ensure-generic-function 'max_height-val :lambda-list '(m))
(cl:defmethod max_height-val ((m <ConfigPedestrianFusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_config_msgs-msg:max_height-val is deprecated.  Use autoware_config_msgs-msg:max_height instead.")
  (max_height m))

(cl:ensure-generic-function 'min_points-val :lambda-list '(m))
(cl:defmethod min_points-val ((m <ConfigPedestrianFusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_config_msgs-msg:min_points-val is deprecated.  Use autoware_config_msgs-msg:min_points instead.")
  (min_points m))

(cl:ensure-generic-function 'dispersion-val :lambda-list '(m))
(cl:defmethod dispersion-val ((m <ConfigPedestrianFusion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_config_msgs-msg:dispersion-val is deprecated.  Use autoware_config_msgs-msg:dispersion instead.")
  (dispersion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigPedestrianFusion>) ostream)
  "Serializes a message object of type '<ConfigPedestrianFusion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_low_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_low_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'min_points)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dispersion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigPedestrianFusion>) istream)
  "Deserializes a message object of type '<ConfigPedestrianFusion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_low_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_low_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'min_points) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dispersion) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigPedestrianFusion>)))
  "Returns string type for a message object of type '<ConfigPedestrianFusion>"
  "autoware_config_msgs/ConfigPedestrianFusion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigPedestrianFusion)))
  "Returns string type for a message object of type 'ConfigPedestrianFusion"
  "autoware_config_msgs/ConfigPedestrianFusion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigPedestrianFusion>)))
  "Returns md5sum for a message object of type '<ConfigPedestrianFusion>"
  "959429b5ed2bcbb4ff76d523d3a8cebd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigPedestrianFusion)))
  "Returns md5sum for a message object of type 'ConfigPedestrianFusion"
  "959429b5ed2bcbb4ff76d523d3a8cebd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigPedestrianFusion>)))
  "Returns full string definition for message of type '<ConfigPedestrianFusion>"
  (cl:format cl:nil "Header header~%float32 min_low_height~%float32 max_low_height~%float32 max_height~%int32 min_points~%float32 dispersion~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigPedestrianFusion)))
  "Returns full string definition for message of type 'ConfigPedestrianFusion"
  (cl:format cl:nil "Header header~%float32 min_low_height~%float32 max_low_height~%float32 max_height~%int32 min_points~%float32 dispersion~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigPedestrianFusion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigPedestrianFusion>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigPedestrianFusion
    (cl:cons ':header (header msg))
    (cl:cons ':min_low_height (min_low_height msg))
    (cl:cons ':max_low_height (max_low_height msg))
    (cl:cons ':max_height (max_height msg))
    (cl:cons ':min_points (min_points msg))
    (cl:cons ':dispersion (dispersion msg))
))
