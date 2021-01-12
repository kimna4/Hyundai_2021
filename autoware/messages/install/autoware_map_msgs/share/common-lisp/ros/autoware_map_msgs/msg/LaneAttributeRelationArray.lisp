; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude LaneAttributeRelationArray.msg.html

(cl:defclass <LaneAttributeRelationArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector autoware_map_msgs-msg:LaneAttributeRelation)
   :initform (cl:make-array 0 :element-type 'autoware_map_msgs-msg:LaneAttributeRelation :initial-element (cl:make-instance 'autoware_map_msgs-msg:LaneAttributeRelation))))
)

(cl:defclass LaneAttributeRelationArray (<LaneAttributeRelationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneAttributeRelationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneAttributeRelationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<LaneAttributeRelationArray> is deprecated: use autoware_map_msgs-msg:LaneAttributeRelationArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaneAttributeRelationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:header-val is deprecated.  Use autoware_map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <LaneAttributeRelationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:data-val is deprecated.  Use autoware_map_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneAttributeRelationArray>) ostream)
  "Serializes a message object of type '<LaneAttributeRelationArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneAttributeRelationArray>) istream)
  "Deserializes a message object of type '<LaneAttributeRelationArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_map_msgs-msg:LaneAttributeRelation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneAttributeRelationArray>)))
  "Returns string type for a message object of type '<LaneAttributeRelationArray>"
  "autoware_map_msgs/LaneAttributeRelationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneAttributeRelationArray)))
  "Returns string type for a message object of type 'LaneAttributeRelationArray"
  "autoware_map_msgs/LaneAttributeRelationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneAttributeRelationArray>)))
  "Returns md5sum for a message object of type '<LaneAttributeRelationArray>"
  "5de320de3a099cd884bcebcfd4c2798e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneAttributeRelationArray)))
  "Returns md5sum for a message object of type 'LaneAttributeRelationArray"
  "5de320de3a099cd884bcebcfd4c2798e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneAttributeRelationArray>)))
  "Returns full string definition for message of type '<LaneAttributeRelationArray>"
  (cl:format cl:nil "# This consists of multiple LaneAttributeRelation objects in a map. ~%~%Header header~%LaneAttributeRelation[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/LaneAttributeRelation~%# This describes an attribute of lane in a map.~%~%# ATTRIBUTE_TYPES~%uint32 PLANE = 1~%uint32 INTERSECTION = 2~%uint32 CROSS_WALK = 3~%uint32 DISABLE_LANE_CHANGE = 4~%uint32 DISABLE_PARKING = 5~%uint32 RAILROAD = 6~%uint32 PEDESTRIAN_SPACE = 7~%uint32 PARKING_AREA = 8~%~%# Id of Lane object which attribute is applied.~%int32 lane_id~%~%# Attribute that is applied to lane~%# Must be one of ATTRIBUTE_TYPES~%int32 attribute_type~%~%# Id of Area object that is relevant to the attribute (if exists). ~%# e.g. Id of Area object that describes crosswalk when attribute_type = CROSS_WALK. ~%int32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneAttributeRelationArray)))
  "Returns full string definition for message of type 'LaneAttributeRelationArray"
  (cl:format cl:nil "# This consists of multiple LaneAttributeRelation objects in a map. ~%~%Header header~%LaneAttributeRelation[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/LaneAttributeRelation~%# This describes an attribute of lane in a map.~%~%# ATTRIBUTE_TYPES~%uint32 PLANE = 1~%uint32 INTERSECTION = 2~%uint32 CROSS_WALK = 3~%uint32 DISABLE_LANE_CHANGE = 4~%uint32 DISABLE_PARKING = 5~%uint32 RAILROAD = 6~%uint32 PEDESTRIAN_SPACE = 7~%uint32 PARKING_AREA = 8~%~%# Id of Lane object which attribute is applied.~%int32 lane_id~%~%# Attribute that is applied to lane~%# Must be one of ATTRIBUTE_TYPES~%int32 attribute_type~%~%# Id of Area object that is relevant to the attribute (if exists). ~%# e.g. Id of Area object that describes crosswalk when attribute_type = CROSS_WALK. ~%int32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneAttributeRelationArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneAttributeRelationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneAttributeRelationArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
