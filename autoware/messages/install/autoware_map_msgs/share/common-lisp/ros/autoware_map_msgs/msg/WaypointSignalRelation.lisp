; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude WaypointSignalRelation.msg.html

(cl:defclass <WaypointSignalRelation> (roslisp-msg-protocol:ros-message)
  ((waypoint_id
    :reader waypoint_id
    :initarg :waypoint_id
    :type cl:integer
    :initform 0)
   (signal_id
    :reader signal_id
    :initarg :signal_id
    :type cl:integer
    :initform 0))
)

(cl:defclass WaypointSignalRelation (<WaypointSignalRelation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointSignalRelation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointSignalRelation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<WaypointSignalRelation> is deprecated: use autoware_map_msgs-msg:WaypointSignalRelation instead.")))

(cl:ensure-generic-function 'waypoint_id-val :lambda-list '(m))
(cl:defmethod waypoint_id-val ((m <WaypointSignalRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:waypoint_id-val is deprecated.  Use autoware_map_msgs-msg:waypoint_id instead.")
  (waypoint_id m))

(cl:ensure-generic-function 'signal_id-val :lambda-list '(m))
(cl:defmethod signal_id-val ((m <WaypointSignalRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:signal_id-val is deprecated.  Use autoware_map_msgs-msg:signal_id instead.")
  (signal_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointSignalRelation>) ostream)
  "Serializes a message object of type '<WaypointSignalRelation>"
  (cl:let* ((signed (cl:slot-value msg 'waypoint_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'signal_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointSignalRelation>) istream)
  "Deserializes a message object of type '<WaypointSignalRelation>"
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
      (cl:setf (cl:slot-value msg 'signal_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointSignalRelation>)))
  "Returns string type for a message object of type '<WaypointSignalRelation>"
  "autoware_map_msgs/WaypointSignalRelation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSignalRelation)))
  "Returns string type for a message object of type 'WaypointSignalRelation"
  "autoware_map_msgs/WaypointSignalRelation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointSignalRelation>)))
  "Returns md5sum for a message object of type '<WaypointSignalRelation>"
  "9a749ec1d79492c8755da84a458f508b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointSignalRelation)))
  "Returns md5sum for a message object of type 'WaypointSignalRelation"
  "9a749ec1d79492c8755da84a458f508b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointSignalRelation>)))
  "Returns full string definition for message of type '<WaypointSignalRelation>"
  (cl:format cl:nil "# This represents the relationship between waypoint and traffic signal~%~%# Id of refering Waypoint object~%# Vehicle is meant to stop at this waypoint when refered traffic signal shows red signal~%int32 waypoint_id~%~%# Id of Signal object related to the waypoint. ~%int32 signal_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointSignalRelation)))
  "Returns full string definition for message of type 'WaypointSignalRelation"
  (cl:format cl:nil "# This represents the relationship between waypoint and traffic signal~%~%# Id of refering Waypoint object~%# Vehicle is meant to stop at this waypoint when refered traffic signal shows red signal~%int32 waypoint_id~%~%# Id of Signal object related to the waypoint. ~%int32 signal_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointSignalRelation>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointSignalRelation>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointSignalRelation
    (cl:cons ':waypoint_id (waypoint_id msg))
    (cl:cons ':signal_id (signal_id msg))
))
