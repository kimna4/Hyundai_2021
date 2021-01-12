;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::WaypointSignalRelation)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'WaypointSignalRelation (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYPOINTSIGNALRELATION")
  (make-package "AUTOWARE_MAP_MSGS::WAYPOINTSIGNALRELATION"))

(in-package "ROS")
;;//! \htmlinclude WaypointSignalRelation.msg.html


(defclass autoware_map_msgs::WaypointSignalRelation
  :super ros::object
  :slots (_waypoint_id _signal_id ))

(defmethod autoware_map_msgs::WaypointSignalRelation
  (:init
   (&key
    ((:waypoint_id __waypoint_id) 0)
    ((:signal_id __signal_id) 0)
    )
   (send-super :init)
   (setq _waypoint_id (round __waypoint_id))
   (setq _signal_id (round __signal_id))
   self)
  (:waypoint_id
   (&optional __waypoint_id)
   (if __waypoint_id (setq _waypoint_id __waypoint_id)) _waypoint_id)
  (:signal_id
   (&optional __signal_id)
   (if __signal_id (setq _signal_id __signal_id)) _signal_id)
  (:serialization-length
   ()
   (+
    ;; int32 _waypoint_id
    4
    ;; int32 _signal_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _waypoint_id
       (write-long _waypoint_id s)
     ;; int32 _signal_id
       (write-long _signal_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _waypoint_id
     (setq _waypoint_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _signal_id
     (setq _signal_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::WaypointSignalRelation :md5sum-) "9a749ec1d79492c8755da84a458f508b")
(setf (get autoware_map_msgs::WaypointSignalRelation :datatype-) "autoware_map_msgs/WaypointSignalRelation")
(setf (get autoware_map_msgs::WaypointSignalRelation :definition-)
      "# This represents the relationship between waypoint and traffic signal

# Id of refering Waypoint object
# Vehicle is meant to stop at this waypoint when refered traffic signal shows red signal
int32 waypoint_id

# Id of Signal object related to the waypoint. 
int32 signal_id

")



(provide :autoware_map_msgs/WaypointSignalRelation "9a749ec1d79492c8755da84a458f508b")


