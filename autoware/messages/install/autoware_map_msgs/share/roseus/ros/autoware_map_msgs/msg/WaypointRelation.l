;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::WaypointRelation)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'WaypointRelation (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYPOINTRELATION")
  (make-package "AUTOWARE_MAP_MSGS::WAYPOINTRELATION"))

(in-package "ROS")
;;//! \htmlinclude WaypointRelation.msg.html


(defclass autoware_map_msgs::WaypointRelation
  :super ros::object
  :slots (_waypoint_id _next_waypoint_id _yaw _blinker _distance ))

(defmethod autoware_map_msgs::WaypointRelation
  (:init
   (&key
    ((:waypoint_id __waypoint_id) 0)
    ((:next_waypoint_id __next_waypoint_id) 0)
    ((:yaw __yaw) 0.0)
    ((:blinker __blinker) 0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _waypoint_id (round __waypoint_id))
   (setq _next_waypoint_id (round __next_waypoint_id))
   (setq _yaw (float __yaw))
   (setq _blinker (round __blinker))
   (setq _distance (float __distance))
   self)
  (:waypoint_id
   (&optional __waypoint_id)
   (if __waypoint_id (setq _waypoint_id __waypoint_id)) _waypoint_id)
  (:next_waypoint_id
   (&optional __next_waypoint_id)
   (if __next_waypoint_id (setq _next_waypoint_id __next_waypoint_id)) _next_waypoint_id)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:blinker
   (&optional __blinker)
   (if __blinker (setq _blinker __blinker)) _blinker)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int32 _waypoint_id
    4
    ;; int32 _next_waypoint_id
    4
    ;; float64 _yaw
    8
    ;; int32 _blinker
    4
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _waypoint_id
       (write-long _waypoint_id s)
     ;; int32 _next_waypoint_id
       (write-long _next_waypoint_id s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _blinker
       (write-long _blinker s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _waypoint_id
     (setq _waypoint_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _next_waypoint_id
     (setq _next_waypoint_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _blinker
     (setq _blinker (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get autoware_map_msgs::WaypointRelation :md5sum-) "9c1af23db81a8c716746b8dc9e1511af")
(setf (get autoware_map_msgs::WaypointRelation :datatype-) "autoware_map_msgs/WaypointRelation")
(setf (get autoware_map_msgs::WaypointRelation :definition-)
      "# This represents the connection between a waypoint and a lane.

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



(provide :autoware_map_msgs/WaypointRelation "9c1af23db81a8c716746b8dc9e1511af")


