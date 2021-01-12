;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::LaneRelationArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'LaneRelationArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANERELATIONARRAY")
  (make-package "AUTOWARE_MAP_MSGS::LANERELATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaneRelationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::LaneRelationArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::LaneRelationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::LaneRelation :init) r)) r))
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
    ;; autoware_map_msgs/LaneRelation[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/LaneRelation[] _data
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
   ;; autoware_map_msgs/LaneRelation[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::LaneRelation :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::LaneRelationArray :md5sum-) "329b4e9aa6f696f62fd90636a3f80778")
(setf (get autoware_map_msgs::LaneRelationArray :datatype-) "autoware_map_msgs/LaneRelationArray")
(setf (get autoware_map_msgs::LaneRelationArray :definition-)
      "# This consists of multiple LaneRelation objects in a map. 

Header header
LaneRelation[] data

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
MSG: autoware_map_msgs/LaneRelation
# This represents lane connections in a map.

# BlinkerType
uint8 None = 0
uint8 Left = 1
uint8 Right = 2

# Id of refering Lane object.
int32 lane_id

# Id of Lane objects that follows after refering lane. 
int32 next_lane_id

# Blinker that must be lit when doing driving towards the next_lane.
# Must be one of \"Blinker Type\"
# e.g. if next_lane_id is left turning lane in intersection, then blinker = LEFT
int32 blinker

")



(provide :autoware_map_msgs/LaneRelationArray "329b4e9aa6f696f62fd90636a3f80778")


