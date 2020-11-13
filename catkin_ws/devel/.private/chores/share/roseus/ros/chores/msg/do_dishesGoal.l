;; Auto-generated. Do not edit!


(when (boundp 'chores::do_dishesGoal)
  (if (not (find-package "CHORES"))
    (make-package "CHORES"))
  (shadow 'do_dishesGoal (find-package "CHORES")))
(unless (find-package "CHORES::DO_DISHESGOAL")
  (make-package "CHORES::DO_DISHESGOAL"))

(in-package "ROS")
;;//! \htmlinclude do_dishesGoal.msg.html


(defclass chores::do_dishesGoal
  :super ros::object
  :slots (_dishwasher_id ))

(defmethod chores::do_dishesGoal
  (:init
   (&key
    ((:dishwasher_id __dishwasher_id) 0)
    )
   (send-super :init)
   (setq _dishwasher_id (round __dishwasher_id))
   self)
  (:dishwasher_id
   (&optional __dishwasher_id)
   (if __dishwasher_id (setq _dishwasher_id __dishwasher_id)) _dishwasher_id)
  (:serialization-length
   ()
   (+
    ;; uint32 _dishwasher_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _dishwasher_id
       (write-long _dishwasher_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _dishwasher_id
     (setq _dishwasher_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get chores::do_dishesGoal :md5sum-) "65bd9e09a531006f4ecdeabe719004b9")
(setf (get chores::do_dishesGoal :datatype-) "chores/do_dishesGoal")
(setf (get chores::do_dishesGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the goal
uint32 dishwasher_id  # Specify which dishwasher we want to use

")



(provide :chores/do_dishesGoal "65bd9e09a531006f4ecdeabe719004b9")

