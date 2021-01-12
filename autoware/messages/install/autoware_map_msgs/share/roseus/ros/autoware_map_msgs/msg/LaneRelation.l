;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::LaneRelation)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'LaneRelation (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANERELATION")
  (make-package "AUTOWARE_MAP_MSGS::LANERELATION"))

(in-package "ROS")
;;//! \htmlinclude LaneRelation.msg.html


(intern "*NONE*" (find-package "AUTOWARE_MAP_MSGS::LANERELATION"))
(shadow '*NONE* (find-package "AUTOWARE_MAP_MSGS::LANERELATION"))
(defconstant autoware_map_msgs::LaneRelation::*NONE* 0)
(intern "*LEFT*" (find-package "AUTOWARE_MAP_MSGS::LANERELATION"))
(shadow '*LEFT* (find-package "AUTOWARE_MAP_MSGS::LANERELATION"))
(defconstant autoware_map_msgs::LaneRelation::*LEFT* 1)
(intern "*RIGHT*" (find-package "AUTOWARE_MAP_MSGS::LANERELATION"))
(shadow '*RIGHT* (find-package "AUTOWARE_MAP_MSGS::LANERELATION"))
(defconstant autoware_map_msgs::LaneRelation::*RIGHT* 2)
(defclass autoware_map_msgs::LaneRelation
  :super ros::object
  :slots (_lane_id _next_lane_id _blinker ))

(defmethod autoware_map_msgs::LaneRelation
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

(setf (get autoware_map_msgs::LaneRelation :md5sum-) "b3dff6505b3e88becc76b5332fcd57ed")
(setf (get autoware_map_msgs::LaneRelation :datatype-) "autoware_map_msgs/LaneRelation")
(setf (get autoware_map_msgs::LaneRelation :definition-)
      "# This represents lane connections in a map.

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



(provide :autoware_map_msgs/LaneRelation "b3dff6505b3e88becc76b5332fcd57ed")


