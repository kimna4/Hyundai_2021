;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::WaypointSignalRelationArray)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'WaypointSignalRelationArray (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYPOINTSIGNALRELATIONARRAY")
  (make-package "AUTOWARE_MAP_MSGS::WAYPOINTSIGNALRELATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude WaypointSignalRelationArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass autoware_map_msgs::WaypointSignalRelationArray
  :super ros::object
  :slots (_header _data ))

(defmethod autoware_map_msgs::WaypointSignalRelationArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (let (r) (dotimes (i 0) (push (instance autoware_map_msgs::WaypointSignalRelation :init) r)) r))
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
    ;; autoware_map_msgs/WaypointSignalRelation[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; autoware_map_msgs/WaypointSignalRelation[] _data
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
   ;; autoware_map_msgs/WaypointSignalRelation[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance autoware_map_msgs::WaypointSignalRelation :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::WaypointSignalRelationArray :md5sum-) "2d618170e406a5e101ab09cb293327a2")
(setf (get autoware_map_msgs::WaypointSignalRelationArray :datatype-) "autoware_map_msgs/WaypointSignalRelationArray")
(setf (get autoware_map_msgs::WaypointSignalRelationArray :definition-)
      "# This consists of multiple WaypointSignalRelation objects in a map. 

Header header
WaypointSignalRelation[] data

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
MSG: autoware_map_msgs/WaypointSignalRelation
# This represents the relationship between waypoint and traffic signal

# Id of refering Waypoint object
# Vehicle is meant to stop at this waypoint when refered traffic signal shows red signal
int32 waypoint_id

# Id of Signal object related to the waypoint. 
int32 signal_id

")



(provide :autoware_map_msgs/WaypointSignalRelationArray "2d618170e406a5e101ab09cb293327a2")


