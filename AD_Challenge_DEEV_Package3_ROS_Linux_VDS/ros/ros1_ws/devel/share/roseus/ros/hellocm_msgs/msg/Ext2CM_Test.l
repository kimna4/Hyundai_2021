;; Auto-generated. Do not edit!


(when (boundp 'hellocm_msgs::Ext2CM_Test)
  (if (not (find-package "HELLOCM_MSGS"))
    (make-package "HELLOCM_MSGS"))
  (shadow 'Ext2CM_Test (find-package "HELLOCM_MSGS")))
(unless (find-package "HELLOCM_MSGS::EXT2CM_TEST")
  (make-package "HELLOCM_MSGS::EXT2CM_TEST"))

(in-package "ROS")
;;//! \htmlinclude Ext2CM_Test.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hellocm_msgs::Ext2CM_Test
  :super ros::object
  :slots (_header _time _cycleno ))

(defmethod hellocm_msgs::Ext2CM_Test
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) (instance ros::time :init))
    ((:cycleno __cycleno) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time __time)
   (setq _cycleno (round __cycleno))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:cycleno
   (&optional __cycleno)
   (if __cycleno (setq _cycleno __cycleno)) _cycleno)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _time
    8
    ;; int64 _cycleno
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; int64 _cycleno
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cycleno (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cycleno) (= (length (_cycleno . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cycleno . bv) 0) 0) s)
              (write-long (ash (elt (_cycleno . bv) 1) -1) s))
             ((and (class _cycleno) (= (length (_cycleno . bv)) 1)) ;; big1
              (write-long (elt (_cycleno . bv) 0) s)
              (write-long (if (>= _cycleno 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cycleno s)(write-long (if (>= _cycleno 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _cycleno
#+(or :alpha :irix6 :x86_64)
      (setf _cycleno (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cycleno (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get hellocm_msgs::Ext2CM_Test :md5sum-) "29a07ad10a375b2d8f0acd60cd83c7a9")
(setf (get hellocm_msgs::Ext2CM_Test :datatype-) "hellocm_msgs/Ext2CM_Test")
(setf (get hellocm_msgs::Ext2CM_Test :definition-)
      "#
# Message from external ROS Node to CarMaker ROS Node
#

# General
Header  header                                 # General ROS Header (optional)
time    time                                   # ROS time when message was sent (optional)
int64   cycleno                                # Cycle number since simulation start (optional)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :hellocm_msgs/Ext2CM_Test "29a07ad10a375b2d8f0acd60cd83c7a9")


