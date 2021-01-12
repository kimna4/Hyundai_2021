; Auto-generated. Do not edit!


(cl:in-package hellocm_msgs-msg)


;//! \htmlinclude Vehicle_Out.msg.html

(cl:defclass <Vehicle_Out> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (cycleno
    :reader cycleno
    :initarg :cycleno
    :type cl:integer
    :initform 0)
   (synthdelay
    :reader synthdelay
    :initarg :synthdelay
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0))
)

(cl:defclass Vehicle_Out (<Vehicle_Out>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vehicle_Out>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vehicle_Out)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hellocm_msgs-msg:<Vehicle_Out> is deprecated: use hellocm_msgs-msg:Vehicle_Out instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Vehicle_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:header-val is deprecated.  Use hellocm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Vehicle_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:time-val is deprecated.  Use hellocm_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'cycleno-val :lambda-list '(m))
(cl:defmethod cycleno-val ((m <Vehicle_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:cycleno-val is deprecated.  Use hellocm_msgs-msg:cycleno instead.")
  (cycleno m))

(cl:ensure-generic-function 'synthdelay-val :lambda-list '(m))
(cl:defmethod synthdelay-val ((m <Vehicle_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:synthdelay-val is deprecated.  Use hellocm_msgs-msg:synthdelay instead.")
  (synthdelay m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Vehicle_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:yaw-val is deprecated.  Use hellocm_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <Vehicle_Out>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:v-val is deprecated.  Use hellocm_msgs-msg:v instead.")
  (v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vehicle_Out>) ostream)
  "Serializes a message object of type '<Vehicle_Out>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'cycleno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'synthdelay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vehicle_Out>) istream)
  "Deserializes a message object of type '<Vehicle_Out>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cycleno) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'synthdelay) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vehicle_Out>)))
  "Returns string type for a message object of type '<Vehicle_Out>"
  "hellocm_msgs/Vehicle_Out")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vehicle_Out)))
  "Returns string type for a message object of type 'Vehicle_Out"
  "hellocm_msgs/Vehicle_Out")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vehicle_Out>)))
  "Returns md5sum for a message object of type '<Vehicle_Out>"
  "5dced49063787c55385570b6a39254f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vehicle_Out)))
  "Returns md5sum for a message object of type 'Vehicle_Out"
  "5dced49063787c55385570b6a39254f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vehicle_Out>)))
  "Returns full string definition for message of type '<Vehicle_Out>"
  (cl:format cl:nil "#~%# Message from CarMaker ROS Node to external ROS Node~%#~%~%# General~%Header  header                                 # General ROS Header (optional)~%time    time                                   # ROS time when message was sent (optional)~%int64   cycleno                                # Cycle number since simulation start (optional)~%float64 synthdelay                             # Synthetic delay to check synchronization (optional)~%~%float64 yaw                                    # Vehicle yaw angle [rad]~%float64 v                                      # Velocity [m/s]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vehicle_Out)))
  "Returns full string definition for message of type 'Vehicle_Out"
  (cl:format cl:nil "#~%# Message from CarMaker ROS Node to external ROS Node~%#~%~%# General~%Header  header                                 # General ROS Header (optional)~%time    time                                   # ROS time when message was sent (optional)~%int64   cycleno                                # Cycle number since simulation start (optional)~%float64 synthdelay                             # Synthetic delay to check synchronization (optional)~%~%float64 yaw                                    # Vehicle yaw angle [rad]~%float64 v                                      # Velocity [m/s]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vehicle_Out>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vehicle_Out>))
  "Converts a ROS message object to a list"
  (cl:list 'Vehicle_Out
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':cycleno (cycleno msg))
    (cl:cons ':synthdelay (synthdelay msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':v (v msg))
))
