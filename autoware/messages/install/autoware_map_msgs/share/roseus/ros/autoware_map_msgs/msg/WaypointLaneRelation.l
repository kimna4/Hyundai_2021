;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::WaypointLaneRelation)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'WaypointLaneRelation (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYPOINTLANERELATION")
  (make-package "AUTOWARE_MAP_MSGS::WAYPOINTLANERELATION"))

(in-package "ROS")
;;//! \htmlinclude WaypointLaneRelation.msg.html


(defclass autoware_map_msgs::WaypointLaneRelation
  :super ros::object
  :slots (_waypoint_id _lane_id _order ))

(defmethod autoware_map_msgs::WaypointLaneRelation
  (:init
   (&key
    ((:waypoint_id __waypoint_id) 0)
    ((:lane_id __lane_id) 0)
    ((:order __order) 0)
    )
   (send-super :init)
   (setq _waypoint_id (round __waypoint_id))
   (setq _lane_id (round __lane_id))
   (setq _order (round __order))
   self)
  (:waypoint_id
   (&optional __waypoint_id)
   (if __waypoint_id (setq _waypoint_id __waypoint_id)) _waypoint_id)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:order
   (&optional __order)
   (if __order (setq _order __order)) _order)
  (:serialization-length
   ()
   (+
    ;; int32 _waypoint_id
    4
    ;; int32 _lane_id
    4
    ;; int32 _order
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _waypoint_id
       (write-long _waypoint_id s)
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;; int32 _order
       (write-long _order s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _waypoint_id
     (setq _waypoint_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _order
     (setq _order (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::WaypointLaneRelation :md5sum-) "b8f61b7c5089da0aa24b1fd1cd929398")
(setf (get autoware_map_msgs::WaypointLaneRelation :datatype-) "autoware_map_msgs/WaypointLaneRelation")
(setf (get autoware_map_msgs::WaypointLaneRelation :definition-)
      "# This represents the connection between waypoints and lanes

# Id of refering Waypoint object
int32 waypoint_id

# Id of Lane object which refering waypoint belongs to 
int32 lane_id

# order of the waypoint in the lane. 
# e.g. starting waypoint of the lane will have order of 0. 
int32 order

")



(provide :autoware_map_msgs/WaypointLaneRelation "b8f61b7c5089da0aa24b1fd1cd929398")


