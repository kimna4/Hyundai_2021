;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::LaneAttributeRelation)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'LaneAttributeRelation (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION")
  (make-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))

(in-package "ROS")
;;//! \htmlinclude LaneAttributeRelation.msg.html


(intern "*PLANE*" (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(shadow '*PLANE* (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(defconstant autoware_map_msgs::LaneAttributeRelation::*PLANE* 1)
(intern "*INTERSECTION*" (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(shadow '*INTERSECTION* (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(defconstant autoware_map_msgs::LaneAttributeRelation::*INTERSECTION* 2)
(intern "*CROSS_WALK*" (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(shadow '*CROSS_WALK* (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(defconstant autoware_map_msgs::LaneAttributeRelation::*CROSS_WALK* 3)
(intern "*DISABLE_LANE_CHANGE*" (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(shadow '*DISABLE_LANE_CHANGE* (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(defconstant autoware_map_msgs::LaneAttributeRelation::*DISABLE_LANE_CHANGE* 4)
(intern "*DISABLE_PARKING*" (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(shadow '*DISABLE_PARKING* (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(defconstant autoware_map_msgs::LaneAttributeRelation::*DISABLE_PARKING* 5)
(intern "*RAILROAD*" (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(shadow '*RAILROAD* (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(defconstant autoware_map_msgs::LaneAttributeRelation::*RAILROAD* 6)
(intern "*PEDESTRIAN_SPACE*" (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(shadow '*PEDESTRIAN_SPACE* (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(defconstant autoware_map_msgs::LaneAttributeRelation::*PEDESTRIAN_SPACE* 7)
(intern "*PARKING_AREA*" (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(shadow '*PARKING_AREA* (find-package "AUTOWARE_MAP_MSGS::LANEATTRIBUTERELATION"))
(defconstant autoware_map_msgs::LaneAttributeRelation::*PARKING_AREA* 8)
(defclass autoware_map_msgs::LaneAttributeRelation
  :super ros::object
  :slots (_lane_id _attribute_type _area_id ))

(defmethod autoware_map_msgs::LaneAttributeRelation
  (:init
   (&key
    ((:lane_id __lane_id) 0)
    ((:attribute_type __attribute_type) 0)
    ((:area_id __area_id) 0)
    )
   (send-super :init)
   (setq _lane_id (round __lane_id))
   (setq _attribute_type (round __attribute_type))
   (setq _area_id (round __area_id))
   self)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:attribute_type
   (&optional __attribute_type)
   (if __attribute_type (setq _attribute_type __attribute_type)) _attribute_type)
  (:area_id
   (&optional __area_id)
   (if __area_id (setq _area_id __area_id)) _area_id)
  (:serialization-length
   ()
   (+
    ;; int32 _lane_id
    4
    ;; int32 _attribute_type
    4
    ;; int32 _area_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;; int32 _attribute_type
       (write-long _attribute_type s)
     ;; int32 _area_id
       (write-long _area_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _attribute_type
     (setq _attribute_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _area_id
     (setq _area_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::LaneAttributeRelation :md5sum-) "e65c2a2db848427c6061a3bc2aff585f")
(setf (get autoware_map_msgs::LaneAttributeRelation :datatype-) "autoware_map_msgs/LaneAttributeRelation")
(setf (get autoware_map_msgs::LaneAttributeRelation :definition-)
      "# This describes an attribute of lane in a map.

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



(provide :autoware_map_msgs/LaneAttributeRelation "e65c2a2db848427c6061a3bc2aff585f")


