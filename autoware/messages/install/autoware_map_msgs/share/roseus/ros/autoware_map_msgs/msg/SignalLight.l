;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::SignalLight)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'SignalLight (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT")
  (make-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))

(in-package "ROS")
;;//! \htmlinclude SignalLight.msg.html


(intern "*RED*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*RED* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*RED* 1)
(intern "*GREEN*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*GREEN* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*GREEN* 2)
(intern "*YELLOW*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*YELLOW* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*YELLOW* 3)
(intern "*RED_FLASHING*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*RED_FLASHING* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*RED_FLASHING* 4)
(intern "*GREEN_FLASHING*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*GREEN_FLASHING* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*GREEN_FLASHING* 5)
(intern "*YELLOW_FLASHING*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*YELLOW_FLASHING* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*YELLOW_FLASHING* 6)
(intern "*UNKOWN*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*UNKOWN* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*UNKOWN* 7)
(intern "*NONE*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*NONE* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*NONE* 0)
(intern "*UP*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*UP* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*UP* 1)
(intern "*UP_RIGHT*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*UP_RIGHT* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*UP_RIGHT* 2)
(intern "*RIGHT*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*RIGHT* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*RIGHT* 3)
(intern "*DOWN_RIGHT*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*DOWN_RIGHT* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*DOWN_RIGHT* 4)
(intern "*DOWN*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*DOWN* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*DOWN* 5)
(intern "*DOWN_LEFT*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*DOWN_LEFT* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*DOWN_LEFT* 6)
(intern "*LEFT*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*LEFT* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*LEFT* 7)
(intern "*UP_LEFT*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*UP_LEFT* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*UP_LEFT* 8)
(intern "*UNKNOWN*" (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(shadow '*UNKNOWN* (find-package "AUTOWARE_MAP_MSGS::SIGNALLIGHT"))
(defconstant autoware_map_msgs::SignalLight::*UNKNOWN* 9)
(defclass autoware_map_msgs::SignalLight
  :super ros::object
  :slots (_signal_light_id _signal_id _point_id _horizontal_angle _vertical_angle _color_type _arrow_type ))

(defmethod autoware_map_msgs::SignalLight
  (:init
   (&key
    ((:signal_light_id __signal_light_id) 0)
    ((:signal_id __signal_id) 0)
    ((:point_id __point_id) 0)
    ((:horizontal_angle __horizontal_angle) 0.0)
    ((:vertical_angle __vertical_angle) 0.0)
    ((:color_type __color_type) 0)
    ((:arrow_type __arrow_type) 0)
    )
   (send-super :init)
   (setq _signal_light_id (round __signal_light_id))
   (setq _signal_id (round __signal_id))
   (setq _point_id (round __point_id))
   (setq _horizontal_angle (float __horizontal_angle))
   (setq _vertical_angle (float __vertical_angle))
   (setq _color_type (round __color_type))
   (setq _arrow_type (round __arrow_type))
   self)
  (:signal_light_id
   (&optional __signal_light_id)
   (if __signal_light_id (setq _signal_light_id __signal_light_id)) _signal_light_id)
  (:signal_id
   (&optional __signal_id)
   (if __signal_id (setq _signal_id __signal_id)) _signal_id)
  (:point_id
   (&optional __point_id)
   (if __point_id (setq _point_id __point_id)) _point_id)
  (:horizontal_angle
   (&optional __horizontal_angle)
   (if __horizontal_angle (setq _horizontal_angle __horizontal_angle)) _horizontal_angle)
  (:vertical_angle
   (&optional __vertical_angle)
   (if __vertical_angle (setq _vertical_angle __vertical_angle)) _vertical_angle)
  (:color_type
   (&optional __color_type)
   (if __color_type (setq _color_type __color_type)) _color_type)
  (:arrow_type
   (&optional __arrow_type)
   (if __arrow_type (setq _arrow_type __arrow_type)) _arrow_type)
  (:serialization-length
   ()
   (+
    ;; int32 _signal_light_id
    4
    ;; int32 _signal_id
    4
    ;; int32 _point_id
    4
    ;; float64 _horizontal_angle
    8
    ;; float64 _vertical_angle
    8
    ;; int32 _color_type
    4
    ;; int32 _arrow_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _signal_light_id
       (write-long _signal_light_id s)
     ;; int32 _signal_id
       (write-long _signal_id s)
     ;; int32 _point_id
       (write-long _point_id s)
     ;; float64 _horizontal_angle
       (sys::poke _horizontal_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_angle
       (sys::poke _vertical_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _color_type
       (write-long _color_type s)
     ;; int32 _arrow_type
       (write-long _arrow_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _signal_light_id
     (setq _signal_light_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _signal_id
     (setq _signal_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _point_id
     (setq _point_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _horizontal_angle
     (setq _horizontal_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_angle
     (setq _vertical_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _color_type
     (setq _color_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _arrow_type
     (setq _arrow_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::SignalLight :md5sum-) "a38faee2ab9b5106b86c9785ffaff92d")
(setf (get autoware_map_msgs::SignalLight :datatype-) "autoware_map_msgs/SignalLight")
(setf (get autoware_map_msgs::SignalLight :definition-)
      "# This represents each lamps in signal light in a map.

# COLOR_TYPES
uint8 RED = 1
uint8 GREEN = 2
uint8 YELLOW = 3
uint8 RED_FLASHING = 4
uint8 GREEN_FLASHING = 5
uint8 YELLOW_FLASHING = 6
uint8 UNKOWN = 7

# ARROW_TYPES
uint8 NONE = 0
uint8 UP = 1
uint8 UP_RIGHT = 2
uint8 RIGHT = 3
uint8 DOWN_RIGHT = 4
uint8 DOWN = 5
uint8 DOWN_LEFT = 6
uint8 LEFT = 7
uint8 UP_LEFT = 8
uint8 UNKNOWN = 9

# Id of this SignalLight object. Must be uniqe among all SignalLight objects. 
int32 signal_light_id

# Id of Signal object which this SignalLight object belongs to
int32 signal_id

# Id of point that represents the position of this lamp. 
int32 point_id

# Horizontal direction which this SignalLight is facing in [deg].
# Angle is calculated from North in clockwise direction. 
float64 horizontal_angle

# Vertical direction which this SignalLight is facing in [deg].
# Angle is calculated from vertical rising direction. 
float64 vertical_angle

# Color of the lamp
# Must be one of COLOR_TYPES
int32 color_type

# Direction of the arrow (if the lamp has direction)
# Must be one of ARROW_TYPES
int32 arrow_type

")



(provide :autoware_map_msgs/SignalLight "a38faee2ab9b5106b86c9785ffaff92d")


