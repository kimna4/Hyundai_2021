;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::WaypointArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'WaypointArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYPOINTARRAY")
  (make-package "AUTOWARE_MAP_MSGS::WAYPOINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude WaypointArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::WaypointArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::WaypointArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::Waypoint :init) r)) r))
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
    ;; autoware_map_msgs/Waypoint[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/Waypoint[] _data
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
   ;; autoware_map_msgs/Waypoint[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::Waypoint :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::WaypointArray :md5sum-) "54f028c2fe14b375cb6d4f9413e68c17")
(setf (get autoware_map_msgs::WaypointArray :datatype-) "autoware_map_msgs/WaypointArray")
(setf (get autoware_map_msgs::WaypointArray :definition-)
      "# This consists of multiple Waypoint objects in a map. 

Header header
Waypoint[] data

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
MSG: autoware_map_msgs/Waypoint
# This represents a waypoint in a map. 

# Id of this Waypoint object
int32 waypoint_id

# Id of Point that represents the position of this waypoint
int32 point_id

# reference velocity of this waypoint. [km/h]
float64 velocity

# describes whether vehicle must stop at this waypoint
# no_stop = 0, stop = 1
int32 stop_line

# distance to left border of the belonging lane in [m]
float64 left_width

# distance to right border of the belonging lane in [m]
float64 right_width

# height limit for the vehicle to drive this waypoint [m]
float64 height

")



(provide :autoware_map_msgs/WaypointArray "54f028c2fe14b375cb6d4f9413e68c17")


