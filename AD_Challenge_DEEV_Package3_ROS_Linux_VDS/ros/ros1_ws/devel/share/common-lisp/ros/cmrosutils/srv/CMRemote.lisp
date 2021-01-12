; Auto-generated. Do not edit!


(cl:in-package cmrosutils-srv)


;//! \htmlinclude CMRemote-request.msg.html

(cl:defclass <CMRemote-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass CMRemote-request (<CMRemote-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CMRemote-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CMRemote-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cmrosutils-srv:<CMRemote-request> is deprecated: use cmrosutils-srv:CMRemote-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CMRemote-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmrosutils-srv:type-val is deprecated.  Use cmrosutils-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <CMRemote-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmrosutils-srv:msg-val is deprecated.  Use cmrosutils-srv:msg instead.")
  (msg m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CMRemote-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmrosutils-srv:data-val is deprecated.  Use cmrosutils-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CMRemote-request>) ostream)
  "Serializes a message object of type '<CMRemote-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CMRemote-request>) istream)
  "Deserializes a message object of type '<CMRemote-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CMRemote-request>)))
  "Returns string type for a service object of type '<CMRemote-request>"
  "cmrosutils/CMRemoteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CMRemote-request)))
  "Returns string type for a service object of type 'CMRemote-request"
  "cmrosutils/CMRemoteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CMRemote-request>)))
  "Returns md5sum for a message object of type '<CMRemote-request>"
  "1d9ce7b684aec19fba170323f6c05b62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CMRemote-request)))
  "Returns md5sum for a message object of type 'CMRemote-request"
  "1d9ce7b684aec19fba170323f6c05b62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CMRemote-request>)))
  "Returns full string definition for message of type '<CMRemote-request>"
  (cl:format cl:nil "string type   # general type of command~%string msg    # message to be evaluated~%string data   # additional data, e.g. command arguments, ...~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CMRemote-request)))
  "Returns full string definition for message of type 'CMRemote-request"
  (cl:format cl:nil "string type   # general type of command~%string msg    # message to be evaluated~%string data   # additional data, e.g. command arguments, ...~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CMRemote-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'msg))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CMRemote-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CMRemote-request
    (cl:cons ':type (type msg))
    (cl:cons ':msg (msg msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude CMRemote-response.msg.html

(cl:defclass <CMRemote-response> (roslisp-msg-protocol:ros-message)
  ((res
    :reader res
    :initarg :res
    :type cl:integer
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass CMRemote-response (<CMRemote-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CMRemote-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CMRemote-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cmrosutils-srv:<CMRemote-response> is deprecated: use cmrosutils-srv:CMRemote-response instead.")))

(cl:ensure-generic-function 'res-val :lambda-list '(m))
(cl:defmethod res-val ((m <CMRemote-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmrosutils-srv:res-val is deprecated.  Use cmrosutils-srv:res instead.")
  (res m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <CMRemote-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cmrosutils-srv:msg-val is deprecated.  Use cmrosutils-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CMRemote-response>) ostream)
  "Serializes a message object of type '<CMRemote-response>"
  (cl:let* ((signed (cl:slot-value msg 'res)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CMRemote-response>) istream)
  "Deserializes a message object of type '<CMRemote-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'res) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CMRemote-response>)))
  "Returns string type for a service object of type '<CMRemote-response>"
  "cmrosutils/CMRemoteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CMRemote-response)))
  "Returns string type for a service object of type 'CMRemote-response"
  "cmrosutils/CMRemoteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CMRemote-response>)))
  "Returns md5sum for a message object of type '<CMRemote-response>"
  "1d9ce7b684aec19fba170323f6c05b62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CMRemote-response)))
  "Returns md5sum for a message object of type 'CMRemote-response"
  "1d9ce7b684aec19fba170323f6c05b62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CMRemote-response>)))
  "Returns full string definition for message of type '<CMRemote-response>"
  (cl:format cl:nil "int32  res    # result of triggered service~%string msg    # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CMRemote-response)))
  "Returns full string definition for message of type 'CMRemote-response"
  (cl:format cl:nil "int32  res    # result of triggered service~%string msg    # informational, e.g. for error messages~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CMRemote-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CMRemote-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CMRemote-response
    (cl:cons ':res (res msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CMRemote)))
  'CMRemote-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CMRemote)))
  'CMRemote-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CMRemote)))
  "Returns string type for a service object of type '<CMRemote>"
  "cmrosutils/CMRemote")