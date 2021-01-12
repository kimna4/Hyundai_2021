;; Auto-generated. Do not edit!


(when (boundp 'hellocm_msgs::Init)
  (if (not (find-package "HELLOCM_MSGS"))
    (make-package "HELLOCM_MSGS"))
  (shadow 'Init (find-package "HELLOCM_MSGS")))
(unless (find-package "HELLOCM_MSGS::INIT")
  (make-package "HELLOCM_MSGS::INIT"))
(unless (find-package "HELLOCM_MSGS::INITREQUEST")
  (make-package "HELLOCM_MSGS::INITREQUEST"))
(unless (find-package "HELLOCM_MSGS::INITRESPONSE")
  (make-package "HELLOCM_MSGS::INITRESPONSE"))

(in-package "ROS")





(defclass hellocm_msgs::InitRequest
  :super ros::object
  :slots (_message ))

(defmethod hellocm_msgs::InitRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hellocm_msgs::InitResponse
  :super ros::object
  :slots (_success _cycletime _message ))

(defmethod hellocm_msgs::InitResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:cycletime __cycletime) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _cycletime (round __cycletime))
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:cycletime
   (&optional __cycletime)
   (if __cycletime (setq _cycletime __cycletime)) _cycletime)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; int32 _cycletime
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; int32 _cycletime
       (write-long _cycletime s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _cycletime
     (setq _cycletime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hellocm_msgs::Init
  :super ros::object
  :slots ())

(setf (get hellocm_msgs::Init :md5sum-) "c39177108282824e55cd272f345a59bb")
(setf (get hellocm_msgs::Init :datatype-) "hellocm_msgs/Init")
(setf (get hellocm_msgs::Init :request) hellocm_msgs::InitRequest)
(setf (get hellocm_msgs::Init :response) hellocm_msgs::InitResponse)

(defmethod hellocm_msgs::InitRequest
  (:response () (instance hellocm_msgs::InitResponse :init)))

(setf (get hellocm_msgs::InitRequest :md5sum-) "c39177108282824e55cd272f345a59bb")
(setf (get hellocm_msgs::InitRequest :datatype-) "hellocm_msgs/InitRequest")
(setf (get hellocm_msgs::InitRequest :definition-)
      "string message    # informational, e.g. name of triggering node
---
bool   success    # indicate successful run of triggered service
int32  cycletime  # default cycle time in ms 
string message    # informational, e.g. for error messages

")

(setf (get hellocm_msgs::InitResponse :md5sum-) "c39177108282824e55cd272f345a59bb")
(setf (get hellocm_msgs::InitResponse :datatype-) "hellocm_msgs/InitResponse")
(setf (get hellocm_msgs::InitResponse :definition-)
      "string message    # informational, e.g. name of triggering node
---
bool   success    # indicate successful run of triggered service
int32  cycletime  # default cycle time in ms 
string message    # informational, e.g. for error messages

")



(provide :hellocm_msgs/Init "c39177108282824e55cd272f345a59bb")


