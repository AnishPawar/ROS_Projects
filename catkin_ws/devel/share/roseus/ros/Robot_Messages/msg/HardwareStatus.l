;; Auto-generated. Do not edit!


(when (boundp 'Robot_Messages::HardwareStatus)
  (if (not (find-package "ROBOT_MESSAGES"))
    (make-package "ROBOT_MESSAGES"))
  (shadow 'HardwareStatus (find-package "ROBOT_MESSAGES")))
(unless (find-package "ROBOT_MESSAGES::HARDWARESTATUS")
  (make-package "ROBOT_MESSAGES::HARDWARESTATUS"))

(in-package "ROS")
;;//! \htmlinclude HardwareStatus.msg.html


(defclass Robot_Messages::HardwareStatus
  :super ros::object
  :slots (_temprature _motor_status _debug_msg ))

(defmethod Robot_Messages::HardwareStatus
  (:init
   (&key
    ((:temprature __temprature) 0.0)
    ((:motor_status __motor_status) nil)
    ((:debug_msg __debug_msg) "")
    )
   (send-super :init)
   (setq _temprature (float __temprature))
   (setq _motor_status __motor_status)
   (setq _debug_msg (string __debug_msg))
   self)
  (:temprature
   (&optional __temprature)
   (if __temprature (setq _temprature __temprature)) _temprature)
  (:motor_status
   (&optional __motor_status)
   (if __motor_status (setq _motor_status __motor_status)) _motor_status)
  (:debug_msg
   (&optional __debug_msg)
   (if __debug_msg (setq _debug_msg __debug_msg)) _debug_msg)
  (:serialization-length
   ()
   (+
    ;; float64 _temprature
    8
    ;; bool _motor_status
    1
    ;; string _debug_msg
    4 (length _debug_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _temprature
       (sys::poke _temprature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _motor_status
       (if _motor_status (write-byte -1 s) (write-byte 0 s))
     ;; string _debug_msg
       (write-long (length _debug_msg) s) (princ _debug_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _temprature
     (setq _temprature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _motor_status
     (setq _motor_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _debug_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _debug_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get Robot_Messages::HardwareStatus :md5sum-) "882ce153f5082c30d832d8d4f8e9fe20")
(setf (get Robot_Messages::HardwareStatus :datatype-) "Robot_Messages/HardwareStatus")
(setf (get Robot_Messages::HardwareStatus :definition-)
      "float64 temprature
bool motor_status
string debug_msg

")



(provide :Robot_Messages/HardwareStatus "882ce153f5082c30d832d8d4f8e9fe20")


