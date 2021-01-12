; Auto-generated. Do not edit!


(cl:in-package vector_map_msgs-msg)


;//! \htmlinclude UtilityPoleArray.msg.html

(cl:defclass <UtilityPoleArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector vector_map_msgs-msg:UtilityPole)
   :initform (cl:make-array 0 :element-type 'vector_map_msgs-msg:UtilityPole :initial-element (cl:make-instance 'vector_map_msgs-msg:UtilityPole))))
)

(cl:defclass UtilityPoleArray (<UtilityPoleArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UtilityPoleArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UtilityPoleArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_map_msgs-msg:<UtilityPoleArray> is deprecated: use vector_map_msgs-msg:UtilityPoleArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UtilityPoleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_msgs-msg:header-val is deprecated.  Use vector_map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UtilityPoleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_map_msgs-msg:data-val is deprecated.  Use vector_map_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UtilityPoleArray>) ostream)
  "Serializes a message object of type '<UtilityPoleArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UtilityPoleArray>) istream)
  "Deserializes a message object of type '<UtilityPoleArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vector_map_msgs-msg:UtilityPole))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UtilityPoleArray>)))
  "Returns string type for a message object of type '<UtilityPoleArray>"
  "vector_map_msgs/UtilityPoleArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UtilityPoleArray)))
  "Returns string type for a message object of type 'UtilityPoleArray"
  "vector_map_msgs/UtilityPoleArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UtilityPoleArray>)))
  "Returns md5sum for a message object of type '<UtilityPoleArray>"
  "1930cf86bc2cca23bf3f3c5fe07d0733")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UtilityPoleArray)))
  "Returns md5sum for a message object of type 'UtilityPoleArray"
  "1930cf86bc2cca23bf3f3c5fe07d0733")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UtilityPoleArray>)))
  "Returns full string definition for message of type '<UtilityPoleArray>"
  (cl:format cl:nil "Header header~%UtilityPole[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/UtilityPole~%# Ver 1.00~%int32 id~%int32 plid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UtilityPoleArray)))
  "Returns full string definition for message of type 'UtilityPoleArray"
  (cl:format cl:nil "Header header~%UtilityPole[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vector_map_msgs/UtilityPole~%# Ver 1.00~%int32 id~%int32 plid~%int32 linkid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UtilityPoleArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UtilityPoleArray>))
  "Converts a ROS message object to a list"
  (cl:list 'UtilityPoleArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
