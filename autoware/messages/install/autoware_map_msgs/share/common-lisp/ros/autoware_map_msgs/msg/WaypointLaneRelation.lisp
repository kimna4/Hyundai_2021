; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude WaypointLaneRelation.msg.html

(cl:defclass <WaypointLaneRelation> (roslisp-msg-protocol:ros-message)
  ((waypoint_id
    :reader waypoint_id
    :initarg :waypoint_id
    :type cl:integer
    :initform 0)
   (lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0)
   (order
    :reader order
    :initarg :order
    :type cl:integer
    :initform 0))
)

(cl:defclass WaypointLaneRelation (<WaypointLaneRelation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointLaneRelation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointLaneRelation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<WaypointLaneRelation> is deprecated: use autoware_map_msgs-msg:WaypointLaneRelation instead.")))

(cl:ensure-generic-function 'waypoint_id-val :lambda-list '(m))
(cl:defmethod waypoint_id-val ((m <WaypointLaneRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:waypoint_id-val is deprecated.  Use autoware_map_msgs-msg:waypoint_id instead.")
  (waypoint_id m))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <WaypointLaneRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:lane_id-val is deprecated.  Use autoware_map_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <WaypointLaneRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:order-val is deprecated.  Use autoware_map_msgs-msg:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointLaneRelation>) ostream)
  "Serializes a message object of type '<WaypointLaneRelation>"
  (cl:let* ((signed (cl:slot-value msg 'waypoint_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'order)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointLaneRelation>) istream)
  "Deserializes a message object of type '<WaypointLaneRelation>"
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
      (cl:setf (cl:slot-value msg 'lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointLaneRelation>)))
  "Returns string type for a message object of type '<WaypointLaneRelation>"
  "autoware_map_msgs/WaypointLaneRelation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointLaneRelation)))
  "Returns string type for a message object of type 'WaypointLaneRelation"
  "autoware_map_msgs/WaypointLaneRelation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointLaneRelation>)))
  "Returns md5sum for a message object of type '<WaypointLaneRelation>"
  "b8f61b7c5089da0aa24b1fd1cd929398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointLaneRelation)))
  "Returns md5sum for a message object of type 'WaypointLaneRelation"
  "b8f61b7c5089da0aa24b1fd1cd929398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointLaneRelation>)))
  "Returns full string definition for message of type '<WaypointLaneRelation>"
  (cl:format cl:nil "# This represents the connection between waypoints and lanes~%~%# Id of refering Waypoint object~%int32 waypoint_id~%~%# Id of Lane object which refering waypoint belongs to ~%int32 lane_id~%~%# order of the waypoint in the lane. ~%# e.g. starting waypoint of the lane will have order of 0. ~%int32 order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointLaneRelation)))
  "Returns full string definition for message of type 'WaypointLaneRelation"
  (cl:format cl:nil "# This represents the connection between waypoints and lanes~%~%# Id of refering Waypoint object~%int32 waypoint_id~%~%# Id of Lane object which refering waypoint belongs to ~%int32 lane_id~%~%# order of the waypoint in the lane. ~%# e.g. starting waypoint of the lane will have order of 0. ~%int32 order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointLaneRelation>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointLaneRelation>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointLaneRelation
    (cl:cons ':waypoint_id (waypoint_id msg))
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':order (order msg))
))
