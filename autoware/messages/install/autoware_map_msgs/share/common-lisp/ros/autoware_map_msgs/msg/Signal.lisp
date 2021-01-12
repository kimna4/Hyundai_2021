; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude Signal.msg.html

(cl:defclass <Signal> (roslisp-msg-protocol:ros-message)
  ((signal_id
    :reader signal_id
    :initarg :signal_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Signal (<Signal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Signal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Signal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<Signal> is deprecated: use autoware_map_msgs-msg:Signal instead.")))

(cl:ensure-generic-function 'signal_id-val :lambda-list '(m))
(cl:defmethod signal_id-val ((m <Signal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:signal_id-val is deprecated.  Use autoware_map_msgs-msg:signal_id instead.")
  (signal_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Signal>) ostream)
  "Serializes a message object of type '<Signal>"
  (cl:let* ((signed (cl:slot-value msg 'signal_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Signal>) istream)
  "Deserializes a message object of type '<Signal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Signal>)))
  "Returns string type for a message object of type '<Signal>"
  "autoware_map_msgs/Signal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Signal)))
  "Returns string type for a message object of type 'Signal"
  "autoware_map_msgs/Signal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Signal>)))
  "Returns md5sum for a message object of type '<Signal>"
  "ce22ff7abffe33a847c3be7603063bea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Signal)))
  "Returns md5sum for a message object of type 'Signal"
  "ce22ff7abffe33a847c3be7603063bea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Signal>)))
  "Returns full string definition for message of type '<Signal>"
  (cl:format cl:nil "# This represents traffic signal(traffic light) in a map.~%~%# Id of this Signal(traffic light) object. Must be unique among all signals in a map. ~%int32 signal_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Signal)))
  "Returns full string definition for message of type 'Signal"
  (cl:format cl:nil "# This represents traffic signal(traffic light) in a map.~%~%# Id of this Signal(traffic light) object. Must be unique among all signals in a map. ~%int32 signal_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Signal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Signal>))
  "Converts a ROS message object to a list"
  (cl:list 'Signal
    (cl:cons ':signal_id (signal_id msg))
))
