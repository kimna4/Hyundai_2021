;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::WaypointRelationArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'WaypointRelationArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYPOINTRELATIONARRAY")
  (make-package "AUTOWARE_MAP_MSGS::WAYPOINTRELATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude WaypointRelationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::WaypointRelationArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::WaypointRelationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::WaypointRelation :init) r)) r))
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
    ;; autoware_map_msgs/WaypointRelation[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/WaypointRelation[] _data
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
   ;; autoware_map_msgs/WaypointRelation[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::WaypointRelation :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::WaypointRelationArray :md5sum-) "3cbc28f0f2b9f8544eb0ee2045b3e562")
(setf (get autoware_map_msgs::WaypointRelationArray :datatype-) "autoware_map_msgs/WaypointRelationArray")
(setf (get autoware_map_msgs::WaypointRelationArray :definition-)
      "# This consists of multiple WaypointRelation objects in a map. 

Header header
WaypointRelation[] data

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
MSG: autoware_map_msgs/WaypointRelation
# This represents the connection between a waypoint and a lane.

# Id of refering Waypoint object
int32 waypoint_id

# Id of Waypoint object that follows the refering waypoint
int32 next_waypoint_id

# Direction from the refering waypoint to next waypoint in [rad].
# The angle is calculated from North in counter clockwise. 
float64 yaw

# Blinker that vehicle must light up when driving from waypoint to next_waypoint
int32 blinker

# Distance between waypoint and next_waypoint
float64 distance

")



(provide :autoware_map_msgs/WaypointRelationArray "3cbc28f0f2b9f8544eb0ee2045b3e562")


