;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::Point)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'Point (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::POINT")
  (make-package "AUTOWARE_MAP_MSGS::POINT"))

(in-package "ROS")
;;//! \htmlinclude Point.msg.html


(defclass autoware_map_msgs::Point
  :super ros::object
  :slots (_point_id _x _y _z _mgrs _epsg _pcd _lat _lng ))

(defmethod autoware_map_msgs::Point
  (:init
   (&key
    ((:point_id __point_id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:mgrs __mgrs) 0)
    ((:epsg __epsg) 0)
    ((:pcd __pcd) "")
    ((:lat __lat) 0.0)
    ((:lng __lng) 0.0)
    )
   (send-super :init)
   (setq _point_id (round __point_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _mgrs (round __mgrs))
   (setq _epsg (round __epsg))
   (setq _pcd (string __pcd))
   (setq _lat (float __lat))
   (setq _lng (float __lng))
   self)
  (:point_id
   (&optional __point_id)
   (if __point_id (setq _point_id __point_id)) _point_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:mgrs
   (&optional __mgrs)
   (if __mgrs (setq _mgrs __mgrs)) _mgrs)
  (:epsg
   (&optional __epsg)
   (if __epsg (setq _epsg __epsg)) _epsg)
  (:pcd
   (&optional __pcd)
   (if __pcd (setq _pcd __pcd)) _pcd)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lng
   (&optional __lng)
   (if __lng (setq _lng __lng)) _lng)
  (:serialization-length
   ()
   (+
    ;; int32 _point_id
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; int32 _mgrs
    4
    ;; int32 _epsg
    4
    ;; string _pcd
    4 (length _pcd)
    ;; float64 _lat
    8
    ;; float64 _lng
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _point_id
       (write-long _point_id s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _mgrs
       (write-long _mgrs s)
     ;; int32 _epsg
       (write-long _epsg s)
     ;; string _pcd
       (write-long (length _pcd) s) (princ _pcd s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lng
       (sys::poke _lng (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _point_id
     (setq _point_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _mgrs
     (setq _mgrs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _epsg
     (setq _epsg (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _pcd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pcd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lng
     (setq _lng (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get autoware_map_msgs::Point :md5sum-) "2eca464a653f0f18a5e4b6d3694d3d9c")
(setf (get autoware_map_msgs::Point :datatype-) "autoware_map_msgs/Point")
(setf (get autoware_map_msgs::Point :definition-)
      "# This represents a point in a map.

# Id of this Point object. Must be unique among all points in a map.
int32 point_id

# Position of a point in MGRS coordinate [m]
# x = northing
# y = easting
# z = elevation
float64 x
float64 y
float64 z

# Codes that describe coordinate of the x,y,z values. 
int32 mgrs
int32 epsg

# PCD file name which that is relevant. 
string pcd

# latitude and longitude in WGS84 coordinate in [deg]
float64 lat
float64 lng

")



(provide :autoware_map_msgs/Point "2eca464a653f0f18a5e4b6d3694d3d9c")


