; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude Lane.msg.html

(cl:defclass <Lane> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0)
   (start_waypoint_id
    :reader start_waypoint_id
    :initarg :start_waypoint_id
    :type cl:integer
    :initform 0)
   (end_waypoint_id
    :reader end_waypoint_id
    :initarg :end_waypoint_id
    :type cl:integer
    :initform 0)
   (lane_number
    :reader lane_number
    :initarg :lane_number
    :type cl:integer
    :initform 0)
   (num_of_lanes
    :reader num_of_lanes
    :initarg :num_of_lanes
    :type cl:integer
    :initform 0)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width_limit
    :reader width_limit
    :initarg :width_limit
    :type cl:float
    :initform 0.0)
   (height_limit
    :reader height_limit
    :initarg :height_limit
    :type cl:float
    :initform 0.0)
   (weight_limit
    :reader weight_limit
    :initarg :weight_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass Lane (<Lane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<Lane> is deprecated: use autoware_map_msgs-msg:Lane instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:lane_id-val is deprecated.  Use autoware_map_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'start_waypoint_id-val :lambda-list '(m))
(cl:defmethod start_waypoint_id-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:start_waypoint_id-val is deprecated.  Use autoware_map_msgs-msg:start_waypoint_id instead.")
  (start_waypoint_id m))

(cl:ensure-generic-function 'end_waypoint_id-val :lambda-list '(m))
(cl:defmethod end_waypoint_id-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:end_waypoint_id-val is deprecated.  Use autoware_map_msgs-msg:end_waypoint_id instead.")
  (end_waypoint_id m))

(cl:ensure-generic-function 'lane_number-val :lambda-list '(m))
(cl:defmethod lane_number-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:lane_number-val is deprecated.  Use autoware_map_msgs-msg:lane_number instead.")
  (lane_number m))

(cl:ensure-generic-function 'num_of_lanes-val :lambda-list '(m))
(cl:defmethod num_of_lanes-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:num_of_lanes-val is deprecated.  Use autoware_map_msgs-msg:num_of_lanes instead.")
  (num_of_lanes m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:speed_limit-val is deprecated.  Use autoware_map_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:length-val is deprecated.  Use autoware_map_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width_limit-val :lambda-list '(m))
(cl:defmethod width_limit-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:width_limit-val is deprecated.  Use autoware_map_msgs-msg:width_limit instead.")
  (width_limit m))

(cl:ensure-generic-function 'height_limit-val :lambda-list '(m))
(cl:defmethod height_limit-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:height_limit-val is deprecated.  Use autoware_map_msgs-msg:height_limit instead.")
  (height_limit m))

(cl:ensure-generic-function 'weight_limit-val :lambda-list '(m))
(cl:defmethod weight_limit-val ((m <Lane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:weight_limit-val is deprecated.  Use autoware_map_msgs-msg:weight_limit instead.")
  (weight_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lane>) ostream)
  "Serializes a message object of type '<Lane>"
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'start_waypoint_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'end_waypoint_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_of_lanes)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lane>) istream)
  "Deserializes a message object of type '<Lane>"
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
      (cl:setf (cl:slot-value msg 'start_waypoint_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_waypoint_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_number) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_lanes) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight_limit) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lane>)))
  "Returns string type for a message object of type '<Lane>"
  "autoware_map_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lane)))
  "Returns string type for a message object of type 'Lane"
  "autoware_map_msgs/Lane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lane>)))
  "Returns md5sum for a message object of type '<Lane>"
  "bfc9dc43edcd85ad77faeee0a34e6b3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lane)))
  "Returns md5sum for a message object of type 'Lane"
  "bfc9dc43edcd85ad77faeee0a34e6b3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lane>)))
  "Returns full string definition for message of type '<Lane>"
  (cl:format cl:nil "# This represents a lane in a map.~%~%# Id of this Lane object. Must be unique among all lane objects.~%int32 lane_id~%~%# Id of the first waypoint that belongs to this lane~%int32 start_waypoint_id~%~%# Id of the last waypoint that belongs to this lane~%int32 end_waypoint_id~%~%# This describes how many lanes there are in left side of this lane.~%# E.g. If there are 2 lanes on the left side, then lane_number will be 2. ~%# If the road is single lane, then this will be 0. ~%# This will be always 0 in intersection. ~%int32 lane_number~%~%# Total number of lanes present in road. ~%int32 num_of_lanes~%~%# Speed limit of this lane in [km/h]~%float64 speed_limit~%~%# Length of this lane in [m]~%# i.e. accumulated length from start_waypoint to end_waypoint of this lane~%float64 length~%~%# Maximum width of vehicle that can drive this lane in [m]~%float64 width_limit~%~%# Maximum height of vehicle that can drive this lane in [m]. ~%float64 height_limit~%~%# Maximum weight of vehicle that can drive this lane in [kg]. ~%float64 weight_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lane)))
  "Returns full string definition for message of type 'Lane"
  (cl:format cl:nil "# This represents a lane in a map.~%~%# Id of this Lane object. Must be unique among all lane objects.~%int32 lane_id~%~%# Id of the first waypoint that belongs to this lane~%int32 start_waypoint_id~%~%# Id of the last waypoint that belongs to this lane~%int32 end_waypoint_id~%~%# This describes how many lanes there are in left side of this lane.~%# E.g. If there are 2 lanes on the left side, then lane_number will be 2. ~%# If the road is single lane, then this will be 0. ~%# This will be always 0 in intersection. ~%int32 lane_number~%~%# Total number of lanes present in road. ~%int32 num_of_lanes~%~%# Speed limit of this lane in [km/h]~%float64 speed_limit~%~%# Length of this lane in [m]~%# i.e. accumulated length from start_waypoint to end_waypoint of this lane~%float64 length~%~%# Maximum width of vehicle that can drive this lane in [m]~%float64 width_limit~%~%# Maximum height of vehicle that can drive this lane in [m]. ~%float64 height_limit~%~%# Maximum weight of vehicle that can drive this lane in [kg]. ~%float64 weight_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lane>))
  (cl:+ 0
     4
     4
     4
     4
     4
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lane>))
  "Converts a ROS message object to a list"
  (cl:list 'Lane
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':start_waypoint_id (start_waypoint_id msg))
    (cl:cons ':end_waypoint_id (end_waypoint_id msg))
    (cl:cons ':lane_number (lane_number msg))
    (cl:cons ':num_of_lanes (num_of_lanes msg))
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width_limit (width_limit msg))
    (cl:cons ':height_limit (height_limit msg))
    (cl:cons ':weight_limit (weight_limit msg))
))
