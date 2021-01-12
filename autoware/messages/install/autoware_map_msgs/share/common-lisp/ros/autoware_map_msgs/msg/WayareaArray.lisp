; Auto-generated. Do not edit!


(cl:in-package autoware_map_msgs-msg)


;//! \htmlinclude WayareaArray.msg.html

(cl:defclass <WayareaArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector autoware_map_msgs-msg:Wayarea)
   :initform (cl:make-array 0 :element-type 'autoware_map_msgs-msg:Wayarea :initial-element (cl:make-instance 'autoware_map_msgs-msg:Wayarea))))
)

(cl:defclass WayareaArray (<WayareaArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WayareaArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WayareaArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_map_msgs-msg:<WayareaArray> is deprecated: use autoware_map_msgs-msg:WayareaArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WayareaArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:header-val is deprecated.  Use autoware_map_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <WayareaArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_map_msgs-msg:data-val is deprecated.  Use autoware_map_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WayareaArray>) ostream)
  "Serializes a message object of type '<WayareaArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WayareaArray>) istream)
  "Deserializes a message object of type '<WayareaArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_map_msgs-msg:Wayarea))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WayareaArray>)))
  "Returns string type for a message object of type '<WayareaArray>"
  "autoware_map_msgs/WayareaArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WayareaArray)))
  "Returns string type for a message object of type 'WayareaArray"
  "autoware_map_msgs/WayareaArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WayareaArray>)))
  "Returns md5sum for a message object of type '<WayareaArray>"
  "4967409e7173f582d6c2671a4561e5bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WayareaArray)))
  "Returns md5sum for a message object of type 'WayareaArray"
  "4967409e7173f582d6c2671a4561e5bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WayareaArray>)))
  "Returns full string definition for message of type '<WayareaArray>"
  (cl:format cl:nil "# This consists of multiple Wayarea objects in a map. ~%~%Header header~%Wayarea[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/Wayarea~%# This represents a wayarea in a map.~%# Way area is an area where vehicle are traversable. ~%~%# Id of this Wayarea object. Must unique among all Wayareas in a map~%int32 wayarea_id~%~%# Id of Area object that represents this wayarea. ~%int32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WayareaArray)))
  "Returns full string definition for message of type 'WayareaArray"
  (cl:format cl:nil "# This consists of multiple Wayarea objects in a map. ~%~%Header header~%Wayarea[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: autoware_map_msgs/Wayarea~%# This represents a wayarea in a map.~%# Way area is an area where vehicle are traversable. ~%~%# Id of this Wayarea object. Must unique among all Wayareas in a map~%int32 wayarea_id~%~%# Id of Area object that represents this wayarea. ~%int32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WayareaArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WayareaArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WayareaArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
