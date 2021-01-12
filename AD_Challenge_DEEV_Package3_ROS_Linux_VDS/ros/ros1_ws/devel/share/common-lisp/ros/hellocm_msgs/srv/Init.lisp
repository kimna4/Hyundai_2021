; Auto-generated. Do not edit!


(cl:in-package hellocm_msgs-srv)


;//! \htmlinclude Init-request.msg.html

(cl:defclass <Init-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Init-request (<Init-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Init-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Init-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hellocm_msgs-srv:<Init-request> is deprecated: use hellocm_msgs-srv:Init-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Init-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-srv:message-val is deprecated.  Use hellocm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Init-request>) ostream)
  "Serializes a message object of type '<Init-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Init-request>) istream)
  "Deserializes a message object of type '<Init-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Init-request>)))
  "Returns string type for a service object of type '<Init-request>"
  "hellocm_msgs/InitRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Init-request)))
  "Returns string type for a service object of type 'Init-request"
  "hellocm_msgs/InitRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Init-request>)))
  "Returns md5sum for a message object of type '<Init-request>"
  "c39177108282824e55cd272f345a59bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Init-request)))
  "Returns md5sum for a message object of type 'Init-request"
  "c39177108282824e55cd272f345a59bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Init-request>)))
  "Returns full string definition for message of type '<Init-request>"
  (cl:format cl:nil "string message    # informational, e.g. name of triggering node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Init-request)))
  "Returns full string definition for message of type 'Init-request"
  (cl:format cl:nil "string message    # informational, e.g. name of triggering node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Init-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Init-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Init-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude Init-response.msg.html

(cl:defclass <Init-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (cycletime
    :reader cycletime
    :initarg :cycletime
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Init-response (<Init-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Init-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Init-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hellocm_msgs-srv:<Init-response> is deprecated: use hellocm_msgs-srv:Init-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Init-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-srv:success-val is deprecated.  Use hellocm_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'cycletime-val :lambda-list '(m))
(cl:defmethod cycletime-val ((m <Init-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-srv:cycletime-val is deprecated.  Use hellocm_msgs-srv:cycletime instead.")
  (cycletime m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Init-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hellocm_msgs-srv:message-val is deprecated.  Use hellocm_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Init-response>) ostream)
  "Serializes a message object of type '<Init-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cycletime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Init-response>) istream)
  "Deserializes a message object of type '<Init-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cycletime) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Init-response>)))
  "Returns string type for a service object of type '<Init-response>"
  "hellocm_msgs/InitResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Init-response)))
  "Returns string type for a service object of type 'Init-response"
  "hellocm_msgs/InitResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Init-response>)))
  "Returns md5sum for a message object of type '<Init-response>"
  "c39177108282824e55cd272f345a59bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Init-response)))
  "Returns md5sum for a message object of type 'Init-response"
  "c39177108282824e55cd272f345a59bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Init-response>)))
  "Returns full string definition for message of type '<Init-response>"
  (cl:format cl:nil "bool   success    # indicate successful run of triggered service~%int32  cycletime  # default cycle time in ms ~%string message    # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Init-response)))
  "Returns full string definition for message of type 'Init-response"
  (cl:format cl:nil "bool   success    # indicate successful run of triggered service~%int32  cycletime  # default cycle time in ms ~%string message    # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Init-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Init-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Init-response
    (cl:cons ':success (success msg))
    (cl:cons ':cycletime (cycletime msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Init)))
  'Init-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Init)))
  'Init-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Init)))
  "Returns string type for a service object of type '<Init>"
  "hellocm_msgs/Init")