;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::LaneAttributeRelationArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'LaneAttributeRelationArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATIONARRAY")
  (make-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributeRelationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::LaneAttributeRelationArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::LaneAttributeRelationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::LaneAttributeRelation :init) r)) r))
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
    ;; autoware_map_msgs/LaneAttributeRelation[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/LaneAttributeRelation[] _data
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
   ;; autoware_map_msgs/LaneAttributeRelation[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::LaneAttributeRelation :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::LaneAttributeRelationArray :md5sum-) "5de320de3a099cd884bcebcfd4c2798e")
(setf (get autoware_map_msgs::LaneAttributeRelationArray :datatype-) "autoware_map_msgs/LaneAttributeRelationArray")
(setf (get autoware_map_msgs::LaneAttributeRelationArray :definition-)
      "# This consists of multiple LaneAttributeRelation objects in a map. 

Header header
LaneAttributeRelation[] data

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
MSG: autoware_map_msgs/LaneAttributeRelation
# This describes an attribute of lane in a map.

# ATTRIBUTE_TYPES
uint32 PLANE = 1
uint32 INTERSECTION = 2
uint32 CROSS_WALK = 3
uint32 DISABLE_LANE_CHANGE = 4
uint32 DISABLE_PARKING = 5
uint32 RAILROAD = 6
uint32 PEDESTRIAN_SPACE = 7
uint32 PARKING_AREA = 8

# Id of Lane object which attribute is applied.
int32 lane_id

# Attribute that is applied to lane
# Must be one of ATTRIBUTE_TYPES
int32 attribute_type

# Id of Area object that is relevant to the attribute (if exists). 
# e.g. Id of Area object that describes crosswalk when attribute_type = CROSS_WALK. 
int32 area_id

")



(provide :autoware_map_msgs/LaneAttributeRelationArray "5de320de3a099cd884bcebcfd4c2798e")


