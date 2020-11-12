;; Auto-generated. Do not edit!


(when (boundp 'hrwros_msgs::meters_2_feet)
  (if (not (find-package "HRWROS_MSGS"))
    (make-package "HRWROS_MSGS"))
  (shadow 'meters_2_feet (find-package "HRWROS_MSGS")))
(unless (find-package "HRWROS_MSGS::METERS_2_FEET")
  (make-package "HRWROS_MSGS::METERS_2_FEET"))
(unless (find-package "HRWROS_MSGS::METERS_2_FEETREQUEST")
  (make-package "HRWROS_MSGS::METERS_2_FEETREQUEST"))
(unless (find-package "HRWROS_MSGS::METERS_2_FEETRESPONSE")
  (make-package "HRWROS_MSGS::METERS_2_FEETRESPONSE"))

(in-package "ROS")





(defclass hrwros_msgs::meters_2_feetRequest
  :super ros::object
  :slots (_measurement_meters ))

(defmethod hrwros_msgs::meters_2_feetRequest
  (:init
   (&key
    ((:measurement_meters __measurement_meters) 0.0)
    )
   (send-super :init)
   (setq _measurement_meters (float __measurement_meters))
   self)
  (:measurement_meters
   (&optional __measurement_meters)
   (if __measurement_meters (setq _measurement_meters __measurement_meters)) _measurement_meters)
  (:serialization-length
   ()
   (+
    ;; float64 _measurement_meters
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _measurement_meters
       (sys::poke _measurement_meters (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _measurement_meters
     (setq _measurement_meters (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hrwros_msgs::meters_2_feetResponse
  :super ros::object
  :slots (_measurement_feet _success ))

(defmethod hrwros_msgs::meters_2_feetResponse
  (:init
   (&key
    ((:measurement_feet __measurement_feet) 0.0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _measurement_feet (float __measurement_feet))
   (setq _success __success)
   self)
  (:measurement_feet
   (&optional __measurement_feet)
   (if __measurement_feet (setq _measurement_feet __measurement_feet)) _measurement_feet)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _measurement_feet
    8
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _measurement_feet
       (sys::poke _measurement_feet (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _measurement_feet
     (setq _measurement_feet (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hrwros_msgs::meters_2_feet
  :super ros::object
  :slots ())

(setf (get hrwros_msgs::meters_2_feet :md5sum-) "d1036d55dafbbfcc5e557511312e2fdf")
(setf (get hrwros_msgs::meters_2_feet :datatype-) "hrwros_msgs/meters_2_feet")
(setf (get hrwros_msgs::meters_2_feet :request) hrwros_msgs::meters_2_feetRequest)
(setf (get hrwros_msgs::meters_2_feet :response) hrwros_msgs::meters_2_feetResponse)

(defmethod hrwros_msgs::meters_2_feetRequest
  (:response () (instance hrwros_msgs::meters_2_feetResponse :init)))

(setf (get hrwros_msgs::meters_2_feetRequest :md5sum-) "d1036d55dafbbfcc5e557511312e2fdf")
(setf (get hrwros_msgs::meters_2_feetRequest :datatype-) "hrwros_msgs/meters_2_feetRequest")
(setf (get hrwros_msgs::meters_2_feetRequest :definition-)
      "float64 measurement_meters # Request field
---
float64 measurement_feet   # Response field
bool success
")

(setf (get hrwros_msgs::meters_2_feetResponse :md5sum-) "d1036d55dafbbfcc5e557511312e2fdf")
(setf (get hrwros_msgs::meters_2_feetResponse :datatype-) "hrwros_msgs/meters_2_feetResponse")
(setf (get hrwros_msgs::meters_2_feetResponse :definition-)
      "float64 measurement_meters # Request field
---
float64 measurement_feet   # Response field
bool success
")



(provide :hrwros_msgs/meters_2_feet "d1036d55dafbbfcc5e557511312e2fdf")


