; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude OppositeLaneRelation.msg.html

(cl:defclass <OppositeLaneRelation> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0)
   (opposite_lane_id
    :reader opposite_lane_id
    :initarg :opposite_lane_id
    :type cl:integer
    :initform 0))
)

(cl:defclass OppositeLaneRelation (<OppositeLaneRelation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OppositeLaneRelation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OppositeLaneRelation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<OppositeLaneRelation> is deprecated: use autoware_map_msgs-msg:OppositeLaneRelation instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <OppositeLaneRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:lane_id-val is deprecated.  Use autoware_map_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'opposite_lane_id-val :lambda-list '(m))
(cl:defmethod opposite_lane_id-val ((m <OppositeLaneRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:opposite_lane_id-val is deprecated.  Use autoware_map_msgs-msg:opposite_lane_id instead.")
  (opposite_lane_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OppositeLaneRelation>) ostream)
  "Serializes a message object of type '<OppositeLaneRelation>"
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'opposite_lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OppositeLaneRelation>) istream)
  "Deserializes a message object of type '<OppositeLaneRelation>"
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
      (cl:setf (cl:slot-value msg 'opposite_lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OppositeLaneRelation>)))
  "Returns string type for a message object of type '<OppositeLaneRelation>"
  "autoware_map_msgs/OppositeLaneRelation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OppositeLaneRelation)))
  "Returns string type for a message object of type 'OppositeLaneRelation"
  "autoware_map_msgs/OppositeLaneRelation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OppositeLaneRelation>)))
  "Returns md5sum for a message object of type '<OppositeLaneRelation>"
  "1cd180a4c94ee476a03a85a837390bf7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OppositeLaneRelation)))
  "Returns md5sum for a message object of type 'OppositeLaneRelation"
  "1cd180a4c94ee476a03a85a837390bf7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OppositeLaneRelation>)))
  "Returns full string definition for message of type '<OppositeLaneRelation>"
  (cl:format cl:nil "# This represents opposite lanes in a map.~%~%# Id of refering Lane object~%int32 lane_id~%~%# Id of Lane object that is in opposite direction against refering lane. ~%int32 opposite_lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OppositeLaneRelation)))
  "Returns full string definition for message of type 'OppositeLaneRelation"
  (cl:format cl:nil "# This represents opposite lanes in a map.~%~%# Id of refering Lane object~%int32 lane_id~%~%# Id of Lane object that is in opposite direction against refering lane. ~%int32 opposite_lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OppositeLaneRelation>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OppositeLaneRelation>))
  "Converts a ROS message object to a list"
  (cl:list 'OppositeLaneRelation
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':opposite_lane_id (opposite_lane_id msg))
))
