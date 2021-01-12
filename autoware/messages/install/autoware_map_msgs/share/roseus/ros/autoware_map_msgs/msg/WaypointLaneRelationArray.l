;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::WaypointLaneRelationArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'WaypointLaneRelationArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYPOINTLANERELATIONARRAY")
  (make-package "AUTOWARE_MAP_MSGS::WAYPOINTLANERELATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude WaypointLaneRelationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::WaypointLaneRelationArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::WaypointLaneRelationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::WaypointLaneRelation :init) r)) r))
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
    ;; autoware_map_msgs/WaypointLaneRelation[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/WaypointLaneRelation[] _data
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
   ;; autoware_map_msgs/WaypointLaneRelation[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::WaypointLaneRelation :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::WaypointLaneRelationArray :md5sum-) "c6c1c4b1da87c0691f1bae5d6a54ab51")
(setf (get autoware_map_msgs::WaypointLaneRelationArray :datatype-) "autoware_map_msgs/WaypointLaneRelationArray")
(setf (get autoware_map_msgs::WaypointLaneRelationArray :definition-)
      "# This consists of multiple WaypointLaneRelation objects in a map. 

Header header
WaypointLaneRelation[] data

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
MSG: autoware_map_msgs/WaypointLaneRelation
# This represents the connection between waypoints and lanes

# Id of refering Waypoint object
int32 waypoint_id

# Id of Lane object which refering waypoint belongs to 
int32 lane_id

# order of the waypoint in the lane. 
# e.g. starting waypoint of the lane will have order of 0. 
int32 order

")



(provide :autoware_map_msgs/WaypointLaneRelationArray "c6c1c4b1da87c0691f1bae5d6a54ab51")


