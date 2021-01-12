;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::LaneArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'LaneArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANEARRAY")
  (make-package "AUTOWARE_MAP_MSGS::LANEARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaneArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::LaneArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::LaneArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::Lane :init) r)) r))
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
    ;; autoware_map_msgs/Lane[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/Lane[] _data
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
   ;; autoware_map_msgs/Lane[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::Lane :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::LaneArray :md5sum-) "1849af6a05682cff6c714d459a3e51f9")
(setf (get autoware_map_msgs::LaneArray :datatype-) "autoware_map_msgs/LaneArray")
(setf (get autoware_map_msgs::LaneArray :definition-)
      "# This consists of multiple lanes in a map with reference coordinate frame. 

Header header
Lane[] data

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
MSG: autoware_map_msgs/Lane
# This represents a lane in a map.

# Id of this Lane object. Must be unique among all lane objects.
int32 lane_id

# Id of the first waypoint that belongs to this lane
int32 start_waypoint_id

# Id of the last waypoint that belongs to this lane
int32 end_waypoint_id

# This describes how many lanes there are in left side of this lane.
# E.g. If there are 2 lanes on the left side, then lane_number will be 2. 
# If the road is single lane, then this will be 0. 
# This will be always 0 in intersection. 
int32 lane_number

# Total number of lanes present in road. 
int32 num_of_lanes

# Speed limit of this lane in [km/h]
float64 speed_limit

# Length of this lane in [m]
# i.e. accumulated length from start_waypoint to end_waypoint of this lane
float64 length

# Maximum width of vehicle that can drive this lane in [m]
float64 width_limit

# Maximum height of vehicle that can drive this lane in [m]. 
float64 height_limit

# Maximum weight of vehicle that can drive this lane in [kg]. 
float64 weight_limit

")



(provide :autoware_map_msgs/LaneArray "1849af6a05682cff6c714d459a3e51f9")


