;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::OppositeLaneRelation)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'OppositeLaneRelation (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::OPPOSITELANERELATION")
  (make-package "AUTOWARE_MAP_MSGS::OPPOSITELANERELATION"))

(in-package "ROS")
;;//! \htmlinclude OppositeLaneRelation.msg.html


(defclass autoware_map_msgs::OppositeLaneRelation
  :super ros::object
  :slots (_lane_id _opposite_lane_id ))

(defmethod autoware_map_msgs::OppositeLaneRelation
  (:init
   (&key
    ((:lane_id __lane_id) 0)
    ((:opposite_lane_id __opposite_lane_id) 0)
    )
   (send-super :init)
   (setq _lane_id (round __lane_id))
   (setq _opposite_lane_id (round __opposite_lane_id))
   self)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:opposite_lane_id
   (&optional __opposite_lane_id)
   (if __opposite_lane_id (setq _opposite_lane_id __opposite_lane_id)) _opposite_lane_id)
  (:serialization-length
   ()
   (+
    ;; int32 _lane_id
    4
    ;; int32 _opposite_lane_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;; int32 _opposite_lane_id
       (write-long _opposite_lane_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _opposite_lane_id
     (setq _opposite_lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::OppositeLaneRelation :md5sum-) "1cd180a4c94ee476a03a85a837390bf7")
(setf (get autoware_map_msgs::OppositeLaneRelation :datatype-) "autoware_map_msgs/OppositeLaneRelation")
(setf (get autoware_map_msgs::OppositeLaneRelation :definition-)
      "# This represents opposite lanes in a map.

# Id of refering Lane object
int32 lane_id

# Id of Lane object that is in opposite direction against refering lane. 
int32 opposite_lane_id

")



(provide :autoware_map_msgs/OppositeLaneRelation "1cd180a4c94ee476a03a85a837390bf7")


