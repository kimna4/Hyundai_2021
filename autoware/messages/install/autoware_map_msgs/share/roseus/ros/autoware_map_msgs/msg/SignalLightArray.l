;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::SignalLightArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'SignalLightArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHTARRAY")
  (make-package "AUTOWARE_MAP_MSGS::SIGNALLIGHTARRAY"))

(in-package "ROS")
;;//! \htmlinclude SignalLightArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::SignalLightArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::SignalLightArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::SignalLight :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; autoware_map_msgs/SignalLight[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/SignalLight[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; autoware_map_msgs/SignalLight[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::SignalLight :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::SignalLightArray :md5sum-) "a70e2f53065c985af5dfda4d27a6eac1")
(setf (get autoware_map_msgs::SignalLightArray :datatype-) "autoware_map_msgs/SignalLightArray")
(setf (get autoware_map_msgs::SignalLightArray :definition-)
      "# This consists of multiple SignalLight objects in a map. 

Header header
SignalLight[] data

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

================================================================================
MSG: autoware_map_msgs/SignalLight
# This represents each lamps in signal light in a map.

# COLOR_TYPES
uint8 RED = 1
uint8 GREEN = 2
uint8 YELLOW = 3
uint8 RED_FLASHING = 4
uint8 GREEN_FLASHING = 5
uint8 YELLOW_FLASHING = 6
uint8 UNKOWN = 7

# ARROW_TYPES
uint8 NONE = 0
uint8 UP = 1
uint8 UP_RIGHT = 2
uint8 RIGHT = 3
uint8 DOWN_RIGHT = 4
uint8 DOWN = 5
uint8 DOWN_LEFT = 6
uint8 LEFT = 7
uint8 UP_LEFT = 8
uint8 UNKNOWN = 9

# Id of this SignalLight object. Must be uniqe among all SignalLight objects. 
int32 signal_light_id

# Id of Signal object which this SignalLight object belongs to
int32 signal_id

# Id of point that represents the position of this lamp. 
int32 point_id

# Horizontal direction which this SignalLight is facing in [deg].
# Angle is calculated from North in clockwise direction. 
float64 horizontal_angle

# Vertical direction which this SignalLight is facing in [deg].
# Angle is calculated from vertical rising direction. 
float64 vertical_angle

# Color of the lamp
# Must be one of COLOR_TYPES
int32 color_type

# Direction of the arrow (if the lamp has direction)
# Must be one of ARROW_TYPES
int32 arrow_type

")



(provide :autoware_map_msgs/SignalLightArray "a70e2f53065c985af5dfda4d27a6eac1")


