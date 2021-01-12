;; Auto-generated. Do not edit!


(when (boundp 'cmrosutils::CMRemote)
  (if (not (find-package "CMROSUTILS"))
    (make-package "CMROSUTILS"))
  (shadow 'CMRemote (find-package "CMROSUTILS")))
(unless (find-package "CMROSUTILS::CMREMOTE")
  (make-package "CMROSUTILS::CMREMOTE"))
(unless (find-package "CMROSUTILS::CMREMOTEREQUEST")
  (make-package "CMROSUTILS::CMREMOTEREQUEST"))
(unless (find-package "CMROSUTILS::CMREMOTERESPONSE")
  (make-package "CMROSUTILS::CMREMOTERESPONSE"))

(in-package "ROS")





(defclass cmrosutils::CMRemoteRequest
  :super ros::object
  :slots (_type _msg _data ))

(defmethod cmrosutils::CMRemoteRequest
  (:init
   (&key
    ((:type __type) "")
    ((:msg __msg) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _msg (string __msg))
   (setq _data (string __data))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _msg
    4 (length _msg)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cmrosutils::CMRemoteResponse
  :super ros::object
  :slots (_res _msg ))

(defmethod cmrosutils::CMRemoteResponse
  (:init
   (&key
    ((:res __res) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _res (round __res))
   (setq _msg (string __msg))
   self)
  (:res
   (&optional __res)
   (if __res (setq _res __res)) _res)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; int32 _res
    4
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _res
       (write-long _res s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _res
     (setq _res (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cmrosutils::CMRemote
  :super ros::object
  :slots ())

(setf (get cmrosutils::CMRemote :md5sum-) "1d9ce7b684aec19fba170323f6c05b62")
(setf (get cmrosutils::CMRemote :datatype-) "cmrosutils/CMRemote")
(setf (get cmrosutils::CMRemote :request) cmrosutils::CMRemoteRequest)
(setf (get cmrosutils::CMRemote :response) cmrosutils::CMRemoteResponse)

(defmethod cmrosutils::CMRemoteRequest
  (:response () (instance cmrosutils::CMRemoteResponse :init)))

(setf (get cmrosutils::CMRemoteRequest :md5sum-) "1d9ce7b684aec19fba170323f6c05b62")
(setf (get cmrosutils::CMRemoteRequest :datatype-) "cmrosutils/CMRemoteRequest")
(setf (get cmrosutils::CMRemoteRequest :definition-)
      "string type   # general type of command
string msg    # message to be evaluated
string data   # additional data, e.g. command arguments, ...
---
int32  res    # result of triggered service
string msg    # informational, e.g. for error messages

")

(setf (get cmrosutils::CMRemoteResponse :md5sum-) "1d9ce7b684aec19fba170323f6c05b62")
(setf (get cmrosutils::CMRemoteResponse :datatype-) "cmrosutils/CMRemoteResponse")
(setf (get cmrosutils::CMRemoteResponse :definition-)
      "string type   # general type of command
string msg    # message to be evaluated
string data   # additional data, e.g. command arguments, ...
---
int32  res    # result of triggered service
string msg    # informational, e.g. for error messages

")



(provide :cmrosutils/CMRemote "1d9ce7b684aec19fba170323f6c05b62")


