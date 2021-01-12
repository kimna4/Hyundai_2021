;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::LaneChangeRelationArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'LaneChangeRelationArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANECHANGERELATIONARRAY")
  (make-package "AUTOWARE_MAP_MSGS::LANECHANGERELATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaneChangeRelationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::LaneChangeRelationArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::LaneChangeRelationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::LaneChangeRelation :init) r)) r))
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
    ;; autoware_map_msgs/LaneChangeRelation[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/LaneChangeRelation[] _data
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
   ;; autoware_map_msgs/LaneChangeRelation[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::LaneChangeRelation :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::LaneChangeRelationArray :md5sum-) "329b4e9aa6f696f62fd90636a3f80778")
(setf (get autoware_map_msgs::LaneChangeRelationArray :datatype-) "autoware_map_msgs/LaneChangeRelationArray")
(setf (get autoware_map_msgs::LaneChangeRelationArray :definition-)
      "# This consists of multiple LaneChangeRelation objects in a map. 

Header header
LaneChangeRelation[] data

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
MSG: autoware_map_msgs/LaneChangeRelation
# This represents lanes that are next to each other.
# This relation object is only made if the lane change is available. 

# BlinkerType
uint8 None = 0
uint8 Left = 1
uint8 Right = 2

# Id of refering lane
int32 lane_id

# Id of lane that is next to the refering lane. 
int32 next_lane_id

# Represents blinker that must be lit when doing this lane change.
# value of \"blinker\" must be one of \"Blinker Type\"
# e.g. if next_lane_id is left of lane_id, then blinker = LEFT
int32 blinker

")



(provide :autoware_map_msgs/LaneChangeRelationArray "329b4e9aa6f696f62fd90636a3f80778")


