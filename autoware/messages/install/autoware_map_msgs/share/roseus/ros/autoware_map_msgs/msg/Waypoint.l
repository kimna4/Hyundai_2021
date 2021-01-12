;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::Waypoint)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'Waypoint (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::WAYPOINT")
  (make-package "AUTOWARE_MAP_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html


(defclass autoware_map_msgs::Waypoint
  :super ros::object
  :slots (_waypoint_id _point_id _velocity _stop_line _left_width _right_width _height ))

(defmethod autoware_map_msgs::Waypoint
  (:init
   (&key
    ((:waypoint_id __waypoint_id) 0)
    ((:point_id __point_id) 0)
    ((:velocity __velocity) 0.0)
    ((:stop_line __stop_line) 0)
    ((:left_width __left_width) 0.0)
    ((:right_width __right_width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _waypoint_id (round __waypoint_id))
   (setq _point_id (round __point_id))
   (setq _velocity (float __velocity))
   (setq _stop_line (round __stop_line))
   (setq _left_width (float __left_width))
   (setq _right_width (float __right_width))
   (setq _height (float __height))
   self)
  (:waypoint_id
   (&optional __waypoint_id)
   (if __waypoint_id (setq _waypoint_id __waypoint_id)) _waypoint_id)
  (:point_id
   (&optional __point_id)
   (if __point_id (setq _point_id __point_id)) _point_id)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:stop_line
   (&optional __stop_line)
   (if __stop_line (setq _stop_line __stop_line)) _stop_line)
  (:left_width
   (&optional __left_width)
   (if __left_width (setq _left_width __left_width)) _left_width)
  (:right_width
   (&optional __right_width)
   (if __right_width (setq _right_width __right_width)) _right_width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; int32 _waypoint_id
    4
    ;; int32 _point_id
    4
    ;; float64 _velocity
    8
    ;; int32 _stop_line
    4
    ;; float64 _left_width
    8
    ;; float64 _right_width
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _waypoint_id
       (write-long _waypoint_id s)
     ;; int32 _point_id
       (write-long _point_id s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _stop_line
       (write-long _stop_line s)
     ;; float64 _left_width
       (sys::poke _left_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_width
       (sys::poke _right_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _waypoint_id
     (setq _waypoint_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _point_id
     (setq _point_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _stop_line
     (setq _stop_line (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _left_width
     (setq _left_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_width
     (setq _right_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get autoware_map_msgs::Waypoint :md5sum-) "6a92fbf1608fe14a2a517fbd332e0c6a")
(setf (get autoware_map_msgs::Waypoint :datatype-) "autoware_map_msgs/Waypoint")
(setf (get autoware_map_msgs::Waypoint :definition-)
      "# This represents a waypoint in a map. 

# Id of this Waypoint object
int32 waypoint_id

# Id of Point that represents the position of this waypoint
int32 point_id

# reference velocity of this waypoint. [km/h]
float64 velocity

# describes whether vehicle must stop at this waypoint
# no_stop = 0, stop = 1
int32 stop_line

# distance to left border of the belonging lane in [m]
float64 left_width

# distance to right border of the belonging lane in [m]
float64 right_width

# height limit for the vehicle to drive this waypoint [m]
float64 height

")



(provide :autoware_map_msgs/Waypoint "6a92fbf1608fe14a2a517fbd332e0c6a")


