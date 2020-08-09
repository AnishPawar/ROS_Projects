;; Auto-generated. Do not edit!


(when (boundp 'Robot_Messages::BatterySrv)
  (if (not (find-package "ROBOT_MESSAGES"))
    (make-package "ROBOT_MESSAGES"))
  (shadow 'BatterySrv (find-package "ROBOT_MESSAGES")))
(unless (find-package "ROBOT_MESSAGES::BATTERYSRV")
  (make-package "ROBOT_MESSAGES::BATTERYSRV"))
(unless (find-package "ROBOT_MESSAGES::BATTERYSRVREQUEST")
  (make-package "ROBOT_MESSAGES::BATTERYSRVREQUEST"))
(unless (find-package "ROBOT_MESSAGES::BATTERYSRVRESPONSE")
  (make-package "ROBOT_MESSAGES::BATTERYSRVRESPONSE"))

(in-package "ROS")





(defclass Robot_Messages::BatterySrvRequest
  :super ros::object
  :slots (_Percentage ))

(defmethod Robot_Messages::BatterySrvRequest
  (:init
   (&key
    ((:Percentage __Percentage) 0)
    )
   (send-super :init)
   (setq _Percentage (round __Percentage))
   self)
  (:Percentage
   (&optional __Percentage)
   (if __Percentage (setq _Percentage __Percentage)) _Percentage)
  (:serialization-length
   ()
   (+
    ;; int32 _Percentage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _Percentage
       (write-long _Percentage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _Percentage
     (setq _Percentage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass Robot_Messages::BatterySrvResponse
  :super ros::object
  :slots (_Return ))

(defmethod Robot_Messages::BatterySrvResponse
  (:init
   (&key
    ((:Return __Return) nil)
    )
   (send-super :init)
   (setq _Return __Return)
   self)
  (:Return
   (&optional __Return)
   (if __Return (setq _Return __Return)) _Return)
  (:serialization-length
   ()
   (+
    ;; bool _Return
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Return
       (if _Return (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Return
     (setq _Return (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass Robot_Messages::BatterySrv
  :super ros::object
  :slots ())

(setf (get Robot_Messages::BatterySrv :md5sum-) "ff61be9533183da287c1479b1594d5c3")
(setf (get Robot_Messages::BatterySrv :datatype-) "Robot_Messages/BatterySrv")
(setf (get Robot_Messages::BatterySrv :request) Robot_Messages::BatterySrvRequest)
(setf (get Robot_Messages::BatterySrv :response) Robot_Messages::BatterySrvResponse)

(defmethod Robot_Messages::BatterySrvRequest
  (:response () (instance Robot_Messages::BatterySrvResponse :init)))

(setf (get Robot_Messages::BatterySrvRequest :md5sum-) "ff61be9533183da287c1479b1594d5c3")
(setf (get Robot_Messages::BatterySrvRequest :datatype-) "Robot_Messages/BatterySrvRequest")
(setf (get Robot_Messages::BatterySrvRequest :definition-)
      "int32 Percentage
---
bool Return

")

(setf (get Robot_Messages::BatterySrvResponse :md5sum-) "ff61be9533183da287c1479b1594d5c3")
(setf (get Robot_Messages::BatterySrvResponse :datatype-) "Robot_Messages/BatterySrvResponse")
(setf (get Robot_Messages::BatterySrvResponse :definition-)
      "int32 Percentage
---
bool Return

")



(provide :Robot_Messages/BatterySrv "ff61be9533183da287c1479b1594d5c3")


