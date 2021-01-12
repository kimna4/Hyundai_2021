; Auto-generated. Do not edit!


(cl:in-package hellocm_msgs-msg)


;//! \htmlinclude CM2Ext.msg.html

(cl:defclass <CM2Ext> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass CM2Ext (<CM2Ext>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CM2Ext>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CM2Ext)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hellocm_msgs-msg:<CM2Ext> is deprecated: use hellocm_msgs-msg:CM2Ext instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CM2Ext>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:header-val is deprecated.  Use hellocm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <CM2Ext>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:time-val is deprecated.  Use hellocm_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'cycleno-val :lambda-list '(m))
(cl:defmethod cycleno-val ((m <CM2Ext>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:cycleno-val is deprecated.  Use hellocm_msgs-msg:cycleno instead.")
  (cycleno m))

(cl:ensure-generic-function 'synthdelay-val :lambda-list '(m))
(cl:defmethod synthdelay-val ((m <CM2Ext>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-msg:synthdelay-val is deprecated.  Use hellocm_msgs-msg:synthdelay instead.")
  (synthdelay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CM2Ext>) ostream)
  "Serializes a message object of type '<CM2Ext>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CM2Ext>) istream)
  "Deserializes a message object of type '<CM2Ext>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CM2Ext>)))
  "Returns string type for a message object of type '<CM2Ext>"
  "hellocm_msgs/CM2Ext")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CM2Ext)))
  "Returns string type for a message object of type 'CM2Ext"
  "hellocm_msgs/CM2Ext")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CM2Ext>)))
  "Returns md5sum for a message object of type '<CM2Ext>"
  "ae833098eb5e50d278ea974024c54aa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CM2Ext)))
  "Returns md5sum for a message object of type 'CM2Ext"
  "ae833098eb5e50d278ea974024c54aa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CM2Ext>)))
  "Returns full string definition for message of type '<CM2Ext>"
  (cl:format cl:nil "#~%# Message from CarMaker ROS Node to external ROS Node~%#~%~%# General~%Header  header                                 # General ROS Header (optional)~%time    time                                   # ROS time when message was sent (optional)~%int64   cycleno                                # Cycle number since simulation start (optional)~%float64 synthdelay                             # Synthetic delay to check synchronization (optional)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CM2Ext)))
  "Returns full string definition for message of type 'CM2Ext"
  (cl:format cl:nil "#~%# Message from CarMaker ROS Node to external ROS Node~%#~%~%# General~%Header  header                                 # General ROS Header (optional)~%time    time                                   # ROS time when message was sent (optional)~%int64   cycleno                                # Cycle number since simulation start (optional)~%float64 synthdelay                             # Synthetic delay to check synchronization (optional)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CM2Ext>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CM2Ext>))
  "Converts a ROS message object to a list"
  (cl:list 'CM2Ext
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':cycleno (cycleno msg))
    (cl:cons ':synthdelay (synthdelay msg))
))
