; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude LaneSignalLightRelation.msg.html

(cl:defclass <LaneSignalLightRelation> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0)
   (signal_light_id
    :reader signal_light_id
    :initarg :signal_light_id
    :type cl:integer
    :initform 0))
)

(cl:defclass LaneSignalLightRelation (<LaneSignalLightRelation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneSignalLightRelation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneSignalLightRelation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<LaneSignalLightRelation> is deprecated: use autoware_map_msgs-msg:LaneSignalLightRelation instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <LaneSignalLightRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:lane_id-val is deprecated.  Use autoware_map_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'signal_light_id-val :lambda-list '(m))
(cl:defmethod signal_light_id-val ((m <LaneSignalLightRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:signal_light_id-val is deprecated.  Use autoware_map_msgs-msg:signal_light_id instead.")
  (signal_light_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneSignalLightRelation>) ostream)
  "Serializes a message object of type '<LaneSignalLightRelation>"
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'signal_light_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneSignalLightRelation>) istream)
  "Deserializes a message object of type '<LaneSignalLightRelation>"
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
      (cl:setf (cl:slot-value msg 'signal_light_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneSignalLightRelation>)))
  "Returns string type for a message object of type '<LaneSignalLightRelation>"
  "autoware_map_msgs/LaneSignalLightRelation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneSignalLightRelation)))
  "Returns string type for a message object of type 'LaneSignalLightRelation"
  "autoware_map_msgs/LaneSignalLightRelation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneSignalLightRelation>)))
  "Returns md5sum for a message object of type '<LaneSignalLightRelation>"
  "56f58c04c9fd01d81da77e983aaab87b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneSignalLightRelation)))
  "Returns md5sum for a message object of type 'LaneSignalLightRelation"
  "56f58c04c9fd01d81da77e983aaab87b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneSignalLightRelation>)))
  "Returns full string definition for message of type '<LaneSignalLightRelation>"
  (cl:format cl:nil "# This represents relation between a lane and a signal in a map.~%~%# Id of refering Lane object~%int32 lane_id~%~%# Id of SignalLight object that must be recognized when vehicle is driving the refering lane. ~%int32 signal_light_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneSignalLightRelation)))
  "Returns full string definition for message of type 'LaneSignalLightRelation"
  (cl:format cl:nil "# This represents relation between a lane and a signal in a map.~%~%# Id of refering Lane object~%int32 lane_id~%~%# Id of SignalLight object that must be recognized when vehicle is driving the refering lane. ~%int32 signal_light_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneSignalLightRelation>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneSignalLightRelation>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneSignalLightRelation
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':signal_light_id (signal_light_id msg))
))
