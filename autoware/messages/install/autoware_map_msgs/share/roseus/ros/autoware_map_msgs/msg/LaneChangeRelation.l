;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::LaneChangeRelation)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'LaneChangeRelation (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANECHANGERELATION")
  (make-package "AUTOWARE_MAP_MSGS::LANECHANGERELATION"))

(in-package "ROS")
;;//! \htmlinclude LaneChangeRelation.msg.html


(intern "*NONE*" (find-package "AUTOWARE_MAP_MSGS::LANECHANGERELATION"))
(shadow '*NONE* (find-package "AUTOWARE_MAP_MSGS::LANECHANGERELATION"))
(defconstant autoware_map_msgs::LaneChangeRelation::*NONE* 0)
(intern "*LEFT*" (find-package "AUTOWARE_MAP_MSGS::LANECHANGERELATION"))
(shadow '*LEFT* (find-package "AUTOWARE_MAP_MSGS::LANECHANGERELATION"))
(defconstant autoware_map_msgs::LaneChangeRelation::*LEFT* 1)
(intern "*RIGHT*" (find-package "AUTOWARE_MAP_MSGS::LANECHANGERELATION"))
(shadow '*RIGHT* (find-package "AUTOWARE_MAP_MSGS::LANECHANGERELATION"))
(defconstant autoware_map_msgs::LaneChangeRelation::*RIGHT* 2)
(defclass autoware_map_msgs::LaneChangeRelation
  :super ros::object
  :slots (_lane_id _next_lane_id _blinker ))

(defmethod autoware_map_msgs::LaneChangeRelation
  (:init
   (&key
    ((:lane_id __lane_id) 0)
    ((:next_lane_id __next_lane_id) 0)
    ((:blinker __blinker) 0)
    )
   (send-super :init)
   (setq _lane_id (round __lane_id))
   (setq _next_lane_id (round __next_lane_id))
   (setq _blinker (round __blinker))
   self)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:next_lane_id
   (&optional __next_lane_id)
   (if __next_lane_id (setq _next_lane_id __next_lane_id)) _next_lane_id)
  (:blinker
   (&optional __blinker)
   (if __blinker (setq _blinker __blinker)) _blinker)
  (:serialization-length
   ()
   (+
    ;; int32 _lane_id
    4
    ;; int32 _next_lane_id
    4
    ;; int32 _blinker
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;; int32 _next_lane_id
       (write-long _next_lane_id s)
     ;; int32 _blinker
       (write-long _blinker s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _next_lane_id
     (setq _next_lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _blinker
     (setq _blinker (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::LaneChangeRelation :md5sum-) "b3dff6505b3e88becc76b5332fcd57ed")
(setf (get autoware_map_msgs::LaneChangeRelation :datatype-) "autoware_map_msgs/LaneChangeRelation")
(setf (get autoware_map_msgs::LaneChangeRelation :definition-)
      "# This represents lanes that are next to each other.
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



(provide :autoware_map_msgs/LaneChangeRelation "b3dff6505b3e88becc76b5332fcd57ed")


