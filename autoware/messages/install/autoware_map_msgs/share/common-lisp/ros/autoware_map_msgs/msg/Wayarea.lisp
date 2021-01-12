; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude Wayarea.msg.html

(cl:defclass <Wayarea> (roslisp-msg-protocol:ros-message)
  ((wayarea_id
    :reader wayarea_id
    :initarg :wayarea_id
    :type cl:integer
    :initform 0)
   (area_id
    :reader area_id
    :initarg :area_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Wayarea (<Wayarea>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wayarea>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wayarea)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<Wayarea> is deprecated: use autoware_map_msgs-msg:Wayarea instead.")))

(cl:ensure-generic-function 'wayarea_id-val :lambda-list '(m))
(cl:defmethod wayarea_id-val ((m <Wayarea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:wayarea_id-val is deprecated.  Use autoware_map_msgs-msg:wayarea_id instead.")
  (wayarea_id m))

(cl:ensure-generic-function 'area_id-val :lambda-list '(m))
(cl:defmethod area_id-val ((m <Wayarea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:area_id-val is deprecated.  Use autoware_map_msgs-msg:area_id instead.")
  (area_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wayarea>) ostream)
  "Serializes a message object of type '<Wayarea>"
  (cl:let* ((signed (cl:slot-value msg 'wayarea_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wayarea>) istream)
  "Deserializes a message object of type '<Wayarea>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wayarea_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wayarea>)))
  "Returns string type for a message object of type '<Wayarea>"
  "autoware_map_msgs/Wayarea")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wayarea)))
  "Returns string type for a message object of type 'Wayarea"
  "autoware_map_msgs/Wayarea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wayarea>)))
  "Returns md5sum for a message object of type '<Wayarea>"
  "be1e5d0a2815399e87eaebee2e34cb4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wayarea)))
  "Returns md5sum for a message object of type 'Wayarea"
  "be1e5d0a2815399e87eaebee2e34cb4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wayarea>)))
  "Returns full string definition for message of type '<Wayarea>"
  (cl:format cl:nil "# This represents a wayarea in a map.~%# Way area is an area where vehicle are traversable. ~%~%# Id of this Wayarea object. Must unique among all Wayareas in a map~%int32 wayarea_id~%~%# Id of Area object that represents this wayarea. ~%int32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wayarea)))
  "Returns full string definition for message of type 'Wayarea"
  (cl:format cl:nil "# This represents a wayarea in a map.~%# Way area is an area where vehicle are traversable. ~%~%# Id of this Wayarea object. Must unique among all Wayareas in a map~%int32 wayarea_id~%~%# Id of Area object that represents this wayarea. ~%int32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wayarea>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wayarea>))
  "Converts a ROS message object to a list"
  (cl:list 'Wayarea
    (cl:cons ':wayarea_id (wayarea_id msg))
    (cl:cons ':area_id (area_id msg))
))
