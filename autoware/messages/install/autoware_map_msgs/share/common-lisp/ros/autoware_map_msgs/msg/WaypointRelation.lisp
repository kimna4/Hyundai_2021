; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude WaypointRelation.msg.html

(cl:defclass <WaypointRelation> (roslisp-msg-protocol:ros-message)
  ((waypoint_id
    :reader waypoint_id
    :initarg :waypoint_id
    :type cl:integer
    :initform 0)
   (next_waypoint_id
    :reader next_waypoint_id
    :initarg :next_waypoint_id
    :type cl:integer
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (blinker
    :reader blinker
    :initarg :blinker
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass WaypointRelation (<WaypointRelation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointRelation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointRelation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<WaypointRelation> is deprecated: use autoware_map_msgs-msg:WaypointRelation instead.")))

(cl:ensure-generic-function 'waypoint_id-val :lambda-list '(m))
(cl:defmethod waypoint_id-val ((m <WaypointRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:waypoint_id-val is deprecated.  Use autoware_map_msgs-msg:waypoint_id instead.")
  (waypoint_id m))

(cl:ensure-generic-function 'next_waypoint_id-val :lambda-list '(m))
(cl:defmethod next_waypoint_id-val ((m <WaypointRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:next_waypoint_id-val is deprecated.  Use autoware_map_msgs-msg:next_waypoint_id instead.")
  (next_waypoint_id m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <WaypointRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:yaw-val is deprecated.  Use autoware_map_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'blinker-val :lambda-list '(m))
(cl:defmethod blinker-val ((m <WaypointRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:blinker-val is deprecated.  Use autoware_map_msgs-msg:blinker instead.")
  (blinker m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <WaypointRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:distance-val is deprecated.  Use autoware_map_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointRelation>) ostream)
  "Serializes a message object of type '<WaypointRelation>"
  (cl:let* ((signed (cl:slot-value msg 'waypoint_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'next_waypoint_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'blinker)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointRelation>) istream)
  "Deserializes a message object of type '<WaypointRelation>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waypoint_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_waypoint_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'blinker) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointRelation>)))
  "Returns string type for a message object of type '<WaypointRelation>"
  "autoware_map_msgs/WaypointRelation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointRelation)))
  "Returns string type for a message object of type 'WaypointRelation"
  "autoware_map_msgs/WaypointRelation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointRelation>)))
  "Returns md5sum for a message object of type '<WaypointRelation>"
  "9c1af23db81a8c716746b8dc9e1511af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointRelation)))
  "Returns md5sum for a message object of type 'WaypointRelation"
  "9c1af23db81a8c716746b8dc9e1511af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointRelation>)))
  "Returns full string definition for message of type '<WaypointRelation>"
  (cl:format cl:nil "# This represents the connection between a waypoint and a lane.~%~%# Id of refering Waypoint object~%int32 waypoint_id~%~%# Id of Waypoint object that follows the refering waypoint~%int32 next_waypoint_id~%~%# Direction from the refering waypoint to next waypoint in [rad].~%# The angle is calculated from North in counter clockwise. ~%float64 yaw~%~%# Blinker that vehicle must light up when driving from waypoint to next_waypoint~%int32 blinker~%~%# Distance between waypoint and next_waypoint~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointRelation)))
  "Returns full string definition for message of type 'WaypointRelation"
  (cl:format cl:nil "# This represents the connection between a waypoint and a lane.~%~%# Id of refering Waypoint object~%int32 waypoint_id~%~%# Id of Waypoint object that follows the refering waypoint~%int32 next_waypoint_id~%~%# Direction from the refering waypoint to next waypoint in [rad].~%# The angle is calculated from North in counter clockwise. ~%float64 yaw~%~%# Blinker that vehicle must light up when driving from waypoint to next_waypoint~%int32 blinker~%~%# Distance between waypoint and next_waypoint~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointRelation>))
  (cl:+ 0
     4
     4
     8
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointRelation>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointRelation
    (cl:cons ':waypoint_id (waypoint_id msg))
    (cl:cons ':next_waypoint_id (next_waypoint_id msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':blinker (blinker msg))
    (cl:cons ':distance (distance msg))
))
