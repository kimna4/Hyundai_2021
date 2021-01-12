; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude LaneAttributeRelation.msg.html

(cl:defclass <LaneAttributeRelation> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0)
   (attribute_type
    :reader attribute_type
    :initarg :attribute_type
    :type cl:integer
    :initform 0)
   (area_id
    :reader area_id
    :initarg :area_id
    :type cl:integer
    :initform 0))
)

(cl:defclass LaneAttributeRelation (<LaneAttributeRelation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributeRelation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributeRelation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<LaneAttributeRelation> is deprecated: use autoware_map_msgs-msg:LaneAttributeRelation instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <LaneAttributeRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:lane_id-val is deprecated.  Use autoware_map_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'attribute_type-val :lambda-list '(m))
(cl:defmethod attribute_type-val ((m <LaneAttributeRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:attribute_type-val is deprecated.  Use autoware_map_msgs-msg:attribute_type instead.")
  (attribute_type m))

(cl:ensure-generic-function 'area_id-val :lambda-list '(m))
(cl:defmethod area_id-val ((m <LaneAttributeRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:area_id-val is deprecated.  Use autoware_map_msgs-msg:area_id instead.")
  (area_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneAttributeRelation>)))
    "Constants for message type '<LaneAttributeRelation>"
  '((:PLANE . 1)
    (:INTERSECTION . 2)
    (:CROSS_WALK . 3)
    (:DISABLE_LANE_CHANGE . 4)
    (:DISABLE_PARKING . 5)
    (:RAILROAD . 6)
    (:PEDESTRIAN_SPACE . 7)
    (:PARKING_AREA . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneAttributeRelation)))
    "Constants for message type 'LaneAttributeRelation"
  '((:PLANE . 1)
    (:INTERSECTION . 2)
    (:CROSS_WALK . 3)
    (:DISABLE_LANE_CHANGE . 4)
    (:DISABLE_PARKING . 5)
    (:RAILROAD . 6)
    (:PEDESTRIAN_SPACE . 7)
    (:PARKING_AREA . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributeRelation>) ostream)
  "Serializes a message object of type '<LaneAttributeRelation>"
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'attribute_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'area_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributeRelation>) istream)
  "Deserializes a message object of type '<LaneAttributeRelation>"
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
      (cl:setf (cl:slot-value msg 'attribute_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributeRelation>)))
  "Returns string type for a message object of type '<LaneAttributeRelation>"
  "autoware_map_msgs/LaneAttributeRelation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributeRelation)))
  "Returns string type for a message object of type 'LaneAttributeRelation"
  "autoware_map_msgs/LaneAttributeRelation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributeRelation>)))
  "Returns md5sum for a message object of type '<LaneAttributeRelation>"
  "e65c2a2db848427c6061a3bc2aff585f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributeRelation)))
  "Returns md5sum for a message object of type 'LaneAttributeRelation"
  "e65c2a2db848427c6061a3bc2aff585f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributeRelation>)))
  "Returns full string definition for message of type '<LaneAttributeRelation>"
  (cl:format cl:nil "# This describes an attribute of lane in a map.~%~%# ATTRIBUTE_TYPES~%uint32 PLANE = 1~%uint32 INTERSECTION = 2~%uint32 CROSS_WALK = 3~%uint32 DISABLE_LANE_CHANGE = 4~%uint32 DISABLE_PARKING = 5~%uint32 RAILROAD = 6~%uint32 PEDESTRIAN_SPACE = 7~%uint32 PARKING_AREA = 8~%~%# Id of Lane object which attribute is applied.~%int32 lane_id~%~%# Attribute that is applied to lane~%# Must be one of ATTRIBUTE_TYPES~%int32 attribute_type~%~%# Id of Area object that is relevant to the attribute (if exists). ~%# e.g. Id of Area object that describes crosswalk when attribute_type = CROSS_WALK. ~%int32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributeRelation)))
  "Returns full string definition for message of type 'LaneAttributeRelation"
  (cl:format cl:nil "# This describes an attribute of lane in a map.~%~%# ATTRIBUTE_TYPES~%uint32 PLANE = 1~%uint32 INTERSECTION = 2~%uint32 CROSS_WALK = 3~%uint32 DISABLE_LANE_CHANGE = 4~%uint32 DISABLE_PARKING = 5~%uint32 RAILROAD = 6~%uint32 PEDESTRIAN_SPACE = 7~%uint32 PARKING_AREA = 8~%~%# Id of Lane object which attribute is applied.~%int32 lane_id~%~%# Attribute that is applied to lane~%# Must be one of ATTRIBUTE_TYPES~%int32 attribute_type~%~%# Id of Area object that is relevant to the attribute (if exists). ~%# e.g. Id of Area object that describes crosswalk when attribute_type = CROSS_WALK. ~%int32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributeRelation>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributeRelation>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributeRelation
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':attribute_type (attribute_type msg))
    (cl:cons ':area_id (area_id msg))
))
