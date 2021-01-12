; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude SignalLight.msg.html

(cl:defclass <SignalLight> (roslisp-msg-protocol:ros-message)
  ((signal_light_id
    :reader signal_light_id
    :initarg :signal_light_id
    :type cl:integer
    :initform 0)
   (signal_id
    :reader signal_id
    :initarg :signal_id
    :type cl:integer
    :initform 0)
   (point_id
    :reader point_id
    :initarg :point_id
    :type cl:integer
    :initform 0)
   (horizontal_angle
    :reader horizontal_angle
    :initarg :horizontal_angle
    :type cl:float
    :initform 0.0)
   (vertical_angle
    :reader vertical_angle
    :initarg :vertical_angle
    :type cl:float
    :initform 0.0)
   (color_type
    :reader color_type
    :initarg :color_type
    :type cl:integer
    :initform 0)
   (arrow_type
    :reader arrow_type
    :initarg :arrow_type
    :type cl:integer
    :initform 0))
)

(cl:defclass SignalLight (<SignalLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<SignalLight> is deprecated: use autoware_map_msgs-msg:SignalLight instead.")))

(cl:ensure-generic-function 'signal_light_id-val :lambda-list '(m))
(cl:defmethod signal_light_id-val ((m <SignalLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:signal_light_id-val is deprecated.  Use autoware_map_msgs-msg:signal_light_id instead.")
  (signal_light_id m))

(cl:ensure-generic-function 'signal_id-val :lambda-list '(m))
(cl:defmethod signal_id-val ((m <SignalLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:signal_id-val is deprecated.  Use autoware_map_msgs-msg:signal_id instead.")
  (signal_id m))

(cl:ensure-generic-function 'point_id-val :lambda-list '(m))
(cl:defmethod point_id-val ((m <SignalLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:point_id-val is deprecated.  Use autoware_map_msgs-msg:point_id instead.")
  (point_id m))

(cl:ensure-generic-function 'horizontal_angle-val :lambda-list '(m))
(cl:defmethod horizontal_angle-val ((m <SignalLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:horizontal_angle-val is deprecated.  Use autoware_map_msgs-msg:horizontal_angle instead.")
  (horizontal_angle m))

(cl:ensure-generic-function 'vertical_angle-val :lambda-list '(m))
(cl:defmethod vertical_angle-val ((m <SignalLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:vertical_angle-val is deprecated.  Use autoware_map_msgs-msg:vertical_angle instead.")
  (vertical_angle m))

(cl:ensure-generic-function 'color_type-val :lambda-list '(m))
(cl:defmethod color_type-val ((m <SignalLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:color_type-val is deprecated.  Use autoware_map_msgs-msg:color_type instead.")
  (color_type m))

(cl:ensure-generic-function 'arrow_type-val :lambda-list '(m))
(cl:defmethod arrow_type-val ((m <SignalLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:arrow_type-val is deprecated.  Use autoware_map_msgs-msg:arrow_type instead.")
  (arrow_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SignalLight>)))
    "Constants for message type '<SignalLight>"
  '((:RED . 1)
    (:GREEN . 2)
    (:YELLOW . 3)
    (:RED_FLASHING . 4)
    (:GREEN_FLASHING . 5)
    (:YELLOW_FLASHING . 6)
    (:UNKOWN . 7)
    (:NONE . 0)
    (:UP . 1)
    (:UP_RIGHT . 2)
    (:RIGHT . 3)
    (:DOWN_RIGHT . 4)
    (:DOWN . 5)
    (:DOWN_LEFT . 6)
    (:LEFT . 7)
    (:UP_LEFT . 8)
    (:UNKNOWN . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SignalLight)))
    "Constants for message type 'SignalLight"
  '((:RED . 1)
    (:GREEN . 2)
    (:YELLOW . 3)
    (:RED_FLASHING . 4)
    (:GREEN_FLASHING . 5)
    (:YELLOW_FLASHING . 6)
    (:UNKOWN . 7)
    (:NONE . 0)
    (:UP . 1)
    (:UP_RIGHT . 2)
    (:RIGHT . 3)
    (:DOWN_RIGHT . 4)
    (:DOWN . 5)
    (:DOWN_LEFT . 6)
    (:LEFT . 7)
    (:UP_LEFT . 8)
    (:UNKNOWN . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalLight>) ostream)
  "Serializes a message object of type '<SignalLight>"
  (cl:let* ((signed (cl:slot-value msg 'signal_light_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'point_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontal_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vertical_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'color_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'arrow_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalLight>) istream)
  "Deserializes a message object of type '<SignalLight>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_light_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'arrow_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalLight>)))
  "Returns string type for a message object of type '<SignalLight>"
  "autoware_map_msgs/SignalLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalLight)))
  "Returns string type for a message object of type 'SignalLight"
  "autoware_map_msgs/SignalLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalLight>)))
  "Returns md5sum for a message object of type '<SignalLight>"
  "a38faee2ab9b5106b86c9785ffaff92d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalLight)))
  "Returns md5sum for a message object of type 'SignalLight"
  "a38faee2ab9b5106b86c9785ffaff92d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalLight>)))
  "Returns full string definition for message of type '<SignalLight>"
  (cl:format cl:nil "# This represents each lamps in signal light in a map.~%~%# COLOR_TYPES~%uint8 RED = 1~%uint8 GREEN = 2~%uint8 YELLOW = 3~%uint8 RED_FLASHING = 4~%uint8 GREEN_FLASHING = 5~%uint8 YELLOW_FLASHING = 6~%uint8 UNKOWN = 7~%~%# ARROW_TYPES~%uint8 NONE = 0~%uint8 UP = 1~%uint8 UP_RIGHT = 2~%uint8 RIGHT = 3~%uint8 DOWN_RIGHT = 4~%uint8 DOWN = 5~%uint8 DOWN_LEFT = 6~%uint8 LEFT = 7~%uint8 UP_LEFT = 8~%uint8 UNKNOWN = 9~%~%# Id of this SignalLight object. Must be uniqe among all SignalLight objects. ~%int32 signal_light_id~%~%# Id of Signal object which this SignalLight object belongs to~%int32 signal_id~%~%# Id of point that represents the position of this lamp. ~%int32 point_id~%~%# Horizontal direction which this SignalLight is facing in [deg].~%# Angle is calculated from North in clockwise direction. ~%float64 horizontal_angle~%~%# Vertical direction which this SignalLight is facing in [deg].~%# Angle is calculated from vertical rising direction. ~%float64 vertical_angle~%~%# Color of the lamp~%# Must be one of COLOR_TYPES~%int32 color_type~%~%# Direction of the arrow (if the lamp has direction)~%# Must be one of ARROW_TYPES~%int32 arrow_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalLight)))
  "Returns full string definition for message of type 'SignalLight"
  (cl:format cl:nil "# This represents each lamps in signal light in a map.~%~%# COLOR_TYPES~%uint8 RED = 1~%uint8 GREEN = 2~%uint8 YELLOW = 3~%uint8 RED_FLASHING = 4~%uint8 GREEN_FLASHING = 5~%uint8 YELLOW_FLASHING = 6~%uint8 UNKOWN = 7~%~%# ARROW_TYPES~%uint8 NONE = 0~%uint8 UP = 1~%uint8 UP_RIGHT = 2~%uint8 RIGHT = 3~%uint8 DOWN_RIGHT = 4~%uint8 DOWN = 5~%uint8 DOWN_LEFT = 6~%uint8 LEFT = 7~%uint8 UP_LEFT = 8~%uint8 UNKNOWN = 9~%~%# Id of this SignalLight object. Must be uniqe among all SignalLight objects. ~%int32 signal_light_id~%~%# Id of Signal object which this SignalLight object belongs to~%int32 signal_id~%~%# Id of point that represents the position of this lamp. ~%int32 point_id~%~%# Horizontal direction which this SignalLight is facing in [deg].~%# Angle is calculated from North in clockwise direction. ~%float64 horizontal_angle~%~%# Vertical direction which this SignalLight is facing in [deg].~%# Angle is calculated from vertical rising direction. ~%float64 vertical_angle~%~%# Color of the lamp~%# Must be one of COLOR_TYPES~%int32 color_type~%~%# Direction of the arrow (if the lamp has direction)~%# Must be one of ARROW_TYPES~%int32 arrow_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalLight>))
  (cl:+ 0
     4
     4
     4
     8
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalLight>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalLight
    (cl:cons ':signal_light_id (signal_light_id msg))
    (cl:cons ':signal_id (signal_id msg))
    (cl:cons ':point_id (point_id msg))
    (cl:cons ':horizontal_angle (horizontal_angle msg))
    (cl:cons ':vertical_angle (vertical_angle msg))
    (cl:cons ':color_type (color_type msg))
    (cl:cons ':arrow_type (arrow_type msg))
))
