;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::Area)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'Area (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::AREA")
  (make-package "AUTOWARE_MAP_MSGS::AREA"))

(in-package "ROS")
;;//! \htmlinclude Area.msg.html


(defclass autoware_map_msgs::Area
  :super ros::object
  :slots (_area_id _point_ids ))

(defmethod autoware_map_msgs::Area
  (:init
   (&key
    ((:area_id __area_id) 0)
    ((:point_ids __point_ids) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _area_id (round __area_id))
   (setq _point_ids __point_ids)
   self)
  (:area_id
   (&optional __area_id)
   (if __area_id (setq _area_id __area_id)) _area_id)
  (:point_ids
   (&optional __point_ids)
   (if __point_ids (setq _point_ids __point_ids)) _point_ids)
  (:serialization-length
   ()
   (+
    ;; int32 _area_id
    4
    ;; int32[] _point_ids
    (* 4    (length _point_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _area_id
       (write-long _area_id s)
     ;; int32[] _point_ids
     (write-long (length _point_ids) s)
     (dotimes (i (length _point_ids))
       (write-long (elt _point_ids i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _area_id
     (setq _area_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _point_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _point_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get autoware_map_msgs::Area :md5sum-) "4db5defc041fdd0f08efb2223b0af08a")
(setf (get autoware_map_msgs::Area :datatype-) "autoware_map_msgs/Area")
(setf (get autoware_map_msgs::Area :definition-)
      "# This represents a general purpose area obejct in map

# Id of this Area object. Must be unique within all area objects.
int32 area_id

# Vertices that describes this area. Must be in clockwise order.
int32[] point_ids

")



(provide :autoware_map_msgs/Area "4db5defc041fdd0f08efb2223b0af08a")


