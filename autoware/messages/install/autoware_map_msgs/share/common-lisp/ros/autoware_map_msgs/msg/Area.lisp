; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude Area.msg.html

(cl:defclass <Area> (roslisp-msg-protocol:ros-message)
  ((area_id
    :reader area_id
    :initarg :area_id
    :type cl:integer
    :initform 0)
   (point_ids
    :reader point_ids
    :initarg :point_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Area (<Area>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Area>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Area)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<Area> is deprecated: use autoware_map_msgs-msg:Area instead.")))

(cl:ensure-generic-function 'area_id-val :lambda-list '(m))
(cl:defmethod area_id-val ((m <Area>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:area_id-val is deprecated.  Use autoware_map_msgs-msg:area_id instead.")
  (area_id m))

(cl:ensure-generic-function 'point_ids-val :lambda-list '(m))
(cl:defmethod point_ids-val ((m <Area>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:point_ids-val is deprecated.  Use autoware_map_msgs-msg:point_ids instead.")
  (point_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Area>) ostream)
  "Serializes a message object of type '<Area>"
  (cl:let* ((signed (cl:slot-value msg 'area_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'point_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Area>) istream)
  "Deserializes a message object of type '<Area>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Area>)))
  "Returns string type for a message object of type '<Area>"
  "autoware_map_msgs/Area")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Area)))
  "Returns string type for a message object of type 'Area"
  "autoware_map_msgs/Area")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Area>)))
  "Returns md5sum for a message object of type '<Area>"
  "4db5defc041fdd0f08efb2223b0af08a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Area)))
  "Returns md5sum for a message object of type 'Area"
  "4db5defc041fdd0f08efb2223b0af08a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Area>)))
  "Returns full string definition for message of type '<Area>"
  (cl:format cl:nil "# This represents a general purpose area obejct in map~%~%# Id of this Area object. Must be unique within all area objects.~%int32 area_id~%~%# Vertices that describes this area. Must be in clockwise order.~%int32[] point_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Area)))
  "Returns full string definition for message of type 'Area"
  (cl:format cl:nil "# This represents a general purpose area obejct in map~%~%# Id of this Area object. Must be unique within all area objects.~%int32 area_id~%~%# Vertices that describes this area. Must be in clockwise order.~%int32[] point_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Area>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Area>))
  "Converts a ROS message object to a list"
  (cl:list 'Area
    (cl:cons ':area_id (area_id msg))
    (cl:cons ':point_ids (point_ids msg))
))
