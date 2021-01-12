; Auto-generated. Do not edit!


(cl:in-package autoware_msgs-msg)


;//! \htmlinclude WaypointState.msg.html

(cl:defclass <WaypointState> (roslisp-msg-protocol:ros-message)
  ((aid
    :reader aid
    :initarg :aid
    :type cl:integer
    :initform 0)
   (lanechange_state
    :reader lanechange_state
    :initarg :lanechange_state
    :type cl:fixnum
    :initform 0)
   (steering_state
    :reader steering_state
    :initarg :steering_state
    :type cl:fixnum
    :initform 0)
   (accel_state
    :reader accel_state
    :initarg :accel_state
    :type cl:fixnum
    :initform 0)
   (stop_state
    :reader stop_state
    :initarg :stop_state
    :type cl:fixnum
    :initform 0)
   (event_state
    :reader event_state
    :initarg :event_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointState (<WaypointState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_msgs-msg:<WaypointState> is deprecated: use autoware_msgs-msg:WaypointState instead.")))

(cl:ensure-generic-function 'aid-val :lambda-list '(m))
(cl:defmethod aid-val ((m <WaypointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:aid-val is deprecated.  Use autoware_msgs-msg:aid instead.")
  (aid m))

(cl:ensure-generic-function 'lanechange_state-val :lambda-list '(m))
(cl:defmethod lanechange_state-val ((m <WaypointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:lanechange_state-val is deprecated.  Use autoware_msgs-msg:lanechange_state instead.")
  (lanechange_state m))

(cl:ensure-generic-function 'steering_state-val :lambda-list '(m))
(cl:defmethod steering_state-val ((m <WaypointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:steering_state-val is deprecated.  Use autoware_msgs-msg:steering_state instead.")
  (steering_state m))

(cl:ensure-generic-function 'accel_state-val :lambda-list '(m))
(cl:defmethod accel_state-val ((m <WaypointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:accel_state-val is deprecated.  Use autoware_msgs-msg:accel_state instead.")
  (accel_state m))

(cl:ensure-generic-function 'stop_state-val :lambda-list '(m))
(cl:defmethod stop_state-val ((m <WaypointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:stop_state-val is deprecated.  Use autoware_msgs-msg:stop_state instead.")
  (stop_state m))

(cl:ensure-generic-function 'event_state-val :lambda-list '(m))
(cl:defmethod event_state-val ((m <WaypointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:event_state-val is deprecated.  Use autoware_msgs-msg:event_state instead.")
  (event_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointState>)))
    "Constants for message type '<WaypointState>"
  '((:NULLSTATE . 0)
    (:STR_LEFT . 1)
    (:STR_RIGHT . 2)
    (:STR_STRAIGHT . 3)
    (:STR_BACK . 4)
    (:TYPE_STOPLINE . 1)
    (:TYPE_STOP . 2)
    (:TYPE_EVENT_NULL . 0)
    (:TYPE_EVENT_GOAL . 1)
    (:TYPE_EVENT_MIDDLE_GOAL . 2)
    (:TYPE_EVENT_POSITION_STOP . 3)
    (:TYPE_EVENT_BUS_STOP . 4)
    (:TYPE_EVENT_PARKING . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointState)))
    "Constants for message type 'WaypointState"
  '((:NULLSTATE . 0)
    (:STR_LEFT . 1)
    (:STR_RIGHT . 2)
    (:STR_STRAIGHT . 3)
    (:STR_BACK . 4)
    (:TYPE_STOPLINE . 1)
    (:TYPE_STOP . 2)
    (:TYPE_EVENT_NULL . 0)
    (:TYPE_EVENT_GOAL . 1)
    (:TYPE_EVENT_MIDDLE_GOAL . 2)
    (:TYPE_EVENT_POSITION_STOP . 3)
    (:TYPE_EVENT_BUS_STOP . 4)
    (:TYPE_EVENT_PARKING . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointState>) ostream)
  "Serializes a message object of type '<WaypointState>"
  (cl:let* ((signed (cl:slot-value msg 'aid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanechange_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accel_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointState>) istream)
  "Deserializes a message object of type '<WaypointState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'aid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanechange_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'accel_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointState>)))
  "Returns string type for a message object of type '<WaypointState>"
  "autoware_msgs/WaypointState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointState)))
  "Returns string type for a message object of type 'WaypointState"
  "autoware_msgs/WaypointState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointState>)))
  "Returns md5sum for a message object of type '<WaypointState>"
  "623a0ffbb0a052490adc981c2a3e8edd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointState)))
  "Returns md5sum for a message object of type 'WaypointState"
  "623a0ffbb0a052490adc981c2a3e8edd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointState>)))
  "Returns full string definition for message of type '<WaypointState>"
  (cl:format cl:nil "int32 aid~%uint8 NULLSTATE=0~%~%# lanechange~%uint8 lanechange_state~%~%# bilinker~%uint8 steering_state~%uint8 STR_LEFT=1~%uint8 STR_RIGHT=2~%uint8 STR_STRAIGHT=3~%uint8 STR_BACK=4~%~%uint8 accel_state~%~%uint8 stop_state~%# 1 is stopline, 2 is stop which can only be released manually.~%uint8 TYPE_STOPLINE=1~%uint8 TYPE_STOP=2~%~%uint8 event_state~%uint8 TYPE_EVENT_NULL = 0~%uint8 TYPE_EVENT_GOAL = 1~%uint8 TYPE_EVENT_MIDDLE_GOAL = 2~%uint8 TYPE_EVENT_POSITION_STOP = 3~%uint8 TYPE_EVENT_BUS_STOP = 4~%uint8 TYPE_EVENT_PARKING = 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointState)))
  "Returns full string definition for message of type 'WaypointState"
  (cl:format cl:nil "int32 aid~%uint8 NULLSTATE=0~%~%# lanechange~%uint8 lanechange_state~%~%# bilinker~%uint8 steering_state~%uint8 STR_LEFT=1~%uint8 STR_RIGHT=2~%uint8 STR_STRAIGHT=3~%uint8 STR_BACK=4~%~%uint8 accel_state~%~%uint8 stop_state~%# 1 is stopline, 2 is stop which can only be released manually.~%uint8 TYPE_STOPLINE=1~%uint8 TYPE_STOP=2~%~%uint8 event_state~%uint8 TYPE_EVENT_NULL = 0~%uint8 TYPE_EVENT_GOAL = 1~%uint8 TYPE_EVENT_MIDDLE_GOAL = 2~%uint8 TYPE_EVENT_POSITION_STOP = 3~%uint8 TYPE_EVENT_BUS_STOP = 4~%uint8 TYPE_EVENT_PARKING = 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointState>))
  (cl:+ 0
     4
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointState>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointState
    (cl:cons ':aid (aid msg))
    (cl:cons ':lanechange_state (lanechange_state msg))
    (cl:cons ':steering_state (steering_state msg))
    (cl:cons ':accel_state (accel_state msg))
    (cl:cons ':stop_state (stop_state msg))
    (cl:cons ':event_state (event_state msg))
))
