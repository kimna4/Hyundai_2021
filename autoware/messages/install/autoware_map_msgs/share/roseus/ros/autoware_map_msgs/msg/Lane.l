;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::Lane)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'Lane (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::LANE")
  (make-package "AUTOWARE_MAP_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html


(defclass autoware_map_msgs::Lane
  :super ros::object
  :slots (_lane_id _start_waypoint_id _end_waypoint_id _lane_number _num_of_lanes _speed_limit _length _width_limit _height_limit _weight_limit ))

(defmethod autoware_map_msgs::Lane
  (:init
   (&key
    ((:lane_id __lane_id) 0)
    ((:start_waypoint_id __start_waypoint_id) 0)
    ((:end_waypoint_id __end_waypoint_id) 0)
    ((:lane_number __lane_number) 0)
    ((:num_of_lanes __num_of_lanes) 0)
    ((:speed_limit __speed_limit) 0.0)
    ((:length __length) 0.0)
    ((:width_limit __width_limit) 0.0)
    ((:height_limit __height_limit) 0.0)
    ((:weight_limit __weight_limit) 0.0)
    )
   (send-super :init)
   (setq _lane_id (round __lane_id))
   (setq _start_waypoint_id (round __start_waypoint_id))
   (setq _end_waypoint_id (round __end_waypoint_id))
   (setq _lane_number (round __lane_number))
   (setq _num_of_lanes (round __num_of_lanes))
   (setq _speed_limit (float __speed_limit))
   (setq _length (float __length))
   (setq _width_limit (float __width_limit))
   (setq _height_limit (float __height_limit))
   (setq _weight_limit (float __weight_limit))
   self)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:start_waypoint_id
   (&optional __start_waypoint_id)
   (if __start_waypoint_id (setq _start_waypoint_id __start_waypoint_id)) _start_waypoint_id)
  (:end_waypoint_id
   (&optional __end_waypoint_id)
   (if __end_waypoint_id (setq _end_waypoint_id __end_waypoint_id)) _end_waypoint_id)
  (:lane_number
   (&optional __lane_number)
   (if __lane_number (setq _lane_number __lane_number)) _lane_number)
  (:num_of_lanes
   (&optional __num_of_lanes)
   (if __num_of_lanes (setq _num_of_lanes __num_of_lanes)) _num_of_lanes)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width_limit
   (&optional __width_limit)
   (if __width_limit (setq _width_limit __width_limit)) _width_limit)
  (:height_limit
   (&optional __height_limit)
   (if __height_limit (setq _height_limit __height_limit)) _height_limit)
  (:weight_limit
   (&optional __weight_limit)
   (if __weight_limit (setq _weight_limit __weight_limit)) _weight_limit)
  (:serialization-length
   ()
   (+
    ;; int32 _lane_id
    4
    ;; int32 _start_waypoint_id
    4
    ;; int32 _end_waypoint_id
    4
    ;; int32 _lane_number
    4
    ;; int32 _num_of_lanes
    4
    ;; float64 _speed_limit
    8
    ;; float64 _length
    8
    ;; float64 _width_limit
    8
    ;; float64 _height_limit
    8
    ;; float64 _weight_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;; int32 _start_waypoint_id
       (write-long _start_waypoint_id s)
     ;; int32 _end_waypoint_id
       (write-long _end_waypoint_id s)
     ;; int32 _lane_number
       (write-long _lane_number s)
     ;; int32 _num_of_lanes
       (write-long _num_of_lanes s)
     ;; float64 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width_limit
       (sys::poke _width_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height_limit
       (sys::poke _height_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _weight_limit
       (sys::poke _weight_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _start_waypoint_id
     (setq _start_waypoint_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _end_waypoint_id
     (setq _end_waypoint_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lane_number
     (setq _lane_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_of_lanes
     (setq _num_of_lanes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width_limit
     (setq _width_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height_limit
     (setq _height_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _weight_limit
     (setq _weight_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get autoware_map_msgs::Lane :md5sum-) "bfc9dc43edcd85ad77faeee0a34e6b3f")
(setf (get autoware_map_msgs::Lane :datatype-) "autoware_map_msgs/Lane")
(setf (get autoware_map_msgs::Lane :definition-)
      "# This represents a lane in a map.

# Id of this Lane object. Must be unique among all lane objects.
int32 lane_id

# Id of the first waypoint that belongs to this lane
int32 start_waypoint_id

# Id of the last waypoint that belongs to this lane
int32 end_waypoint_id

# This describes how many lanes there are in left side of this lane.
# E.g. If there are 2 lanes on the left side, then lane_number will be 2. 
# If the road is single lane, then this will be 0. 
# This will be always 0 in intersection. 
int32 lane_number

# Total number of lanes present in road. 
int32 num_of_lanes

# Speed limit of this lane in [km/h]
float64 speed_limit

# Length of this lane in [m]
# i.e. accumulated length from start_waypoint to end_waypoint of this lane
float64 length

# Maximum width of vehicle that can drive this lane in [m]
float64 width_limit

# Maximum height of vehicle that can drive this lane in [m]. 
float64 height_limit

# Maximum weight of vehicle that can drive this lane in [kg]. 
float64 weight_limit

")



(provide :autoware_map_msgs/Lane "bfc9dc43edcd85ad77faeee0a34e6b3f")


