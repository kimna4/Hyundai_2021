;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::LaneSignalLightRelation)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'LaneSignalLightRelation (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANESIGNALLIGHTRELATION")
  (make-package "AUTOWARE_MAP_MSGS::LANESIGNALLIGHTRELATION"))

(in-package "ROS")
;;//! \htmlinclude LaneSignalLightRelation.msg.html


(defclass autoware_map_msgs::LaneSignalLightRelation
  :super ros::object
  :slots (_lane_id _signal_light_id ))

(defmethod autoware_map_msgs::LaneSignalLightRelation
  (:init
   (&key
    ((:lane_id __lane_id) 0)
    ((:signal_light_id __signal_light_id) 0)
    )
   (send-super :init)
   (setq _lane_id (round __lane_id))
   (setq _signal_light_id (round __signal_light_id))
   self)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:signal_light_id
   (&optional __signal_light_id)
   (if __signal_light_id (setq _signal_light_id __signal_light_id)) _signal_light_id)
  (:serialization-length
   ()
   (+
    ;; int32 _lane_id
    4
    ;; int32 _signal_light_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;; int32 _signal_light_id
       (write-long _signal_light_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _signal_light_id
     (setq _signal_light_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::LaneSignalLightRelation :md5sum-) "56f58c04c9fd01d81da77e983aaab87b")
(setf (get autoware_map_msgs::LaneSignalLightRelation :datatype-) "autoware_map_msgs/LaneSignalLightRelation")
(setf (get autoware_map_msgs::LaneSignalLightRelation :definition-)
      "# This represents relation between a lane and a signal in a map.

# Id of refering Lane object
int32 lane_id

# Id of SignalLight object that must be recognized when vehicle is driving the refering lane. 
int32 signal_light_id

")



(provide :autoware_map_msgs/LaneSignalLightRelation "56f58c04c9fd01d81da77e983aaab87b")


