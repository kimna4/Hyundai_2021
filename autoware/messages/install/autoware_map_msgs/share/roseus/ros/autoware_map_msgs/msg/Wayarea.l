;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::Wayarea)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'Wayarea (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYAREA")
  (make-package "AUTOWARE_MAP_MSGS::WAYAREA"))

(in-package "ROS")
;;//! \htmlinclude Wayarea.msg.html


(defclass autoware_map_msgs::Wayarea
  :super ros::object
  :slots (_wayarea_id _area_id ))

(defmethod autoware_map_msgs::Wayarea
  (:init
   (&key
    ((:wayarea_id __wayarea_id) 0)
    ((:area_id __area_id) 0)
    )
   (send-super :init)
   (setq _wayarea_id (round __wayarea_id))
   (setq _area_id (round __area_id))
   self)
  (:wayarea_id
   (&optional __wayarea_id)
   (if __wayarea_id (setq _wayarea_id __wayarea_id)) _wayarea_id)
  (:area_id
   (&optional __area_id)
   (if __area_id (setq _area_id __area_id)) _area_id)
  (:serialization-length
   ()
   (+
    ;; int32 _wayarea_id
    4
    ;; int32 _area_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _wayarea_id
       (write-long _wayarea_id s)
     ;; int32 _area_id
       (write-long _area_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _wayarea_id
     (setq _wayarea_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _area_id
     (setq _area_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::Wayarea :md5sum-) "be1e5d0a2815399e87eaebee2e34cb4f")
(setf (get autoware_map_msgs::Wayarea :datatype-) "autoware_map_msgs/Wayarea")
(setf (get autoware_map_msgs::Wayarea :definition-)
      "# This represents a wayarea in a map.
# Way area is an area where vehicle are traversable. 

# Id of this Wayarea object. Must unique among all Wayareas in a map
int32 wayarea_id

# Id of Area object that represents this wayarea. 
int32 area_id

")



(provide :autoware_map_msgs/Wayarea "be1e5d0a2815399e87eaebee2e34cb4f")


