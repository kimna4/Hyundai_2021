;; Auto-generated. Do not edit!


(when (boundp 'autoware_map_msgs::Signal)
  (if (not (find-package "AUTOWARE_MAP_MSGS"))
    (make-package "AUTOWARE_MAP_MSGS"))
  (shadow 'Signal (find-package "AUTOWARE_MAP_MSGS")))
(unless (find-package "AUTOWARE_MAP_MSGS::SIGNAL")
  (make-package "AUTOWARE_MAP_MSGS::SIGNAL"))

(in-package "ROS")
;;//! \htmlinclude Signal.msg.html


(defclass autoware_map_msgs::Signal
  :super ros::object
  :slots (_signal_id ))

(defmethod autoware_map_msgs::Signal
  (:init
   (&key
    ((:signal_id __signal_id) 0)
    )
   (send-super :init)
   (setq _signal_id (round __signal_id))
   self)
  (:signal_id
   (&optional __signal_id)
   (if __signal_id (setq _signal_id __signal_id)) _signal_id)
  (:serialization-length
   ()
   (+
    ;; int32 _signal_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _signal_id
       (write-long _signal_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _signal_id
     (setq _signal_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get autoware_map_msgs::Signal :md5sum-) "ce22ff7abffe33a847c3be7603063bea")
(setf (get autoware_map_msgs::Signal :datatype-) "autoware_map_msgs/Signal")
(setf (get autoware_map_msgs::Signal :definition-)
      "# This represents traffic signal(traffic light) in a map.

# Id of this Signal(traffic light) object. Must be unique among all signals in a map. 
int32 signal_id

")



(provide :autoware_map_msgs/Signal "ce22ff7abffe33a847c3be7603063bea")


