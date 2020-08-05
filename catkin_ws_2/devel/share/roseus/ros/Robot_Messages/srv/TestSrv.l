;; Auto-generated. Do not edit!


(when (boundp 'Robot_Messages::TestSrv)
  (if (not (find-package "ROBOT_MESSAGES"))
    (make-package "ROBOT_MESSAGES"))
  (shadow 'TestSrv (find-package "ROBOT_MESSAGES")))
(unless (find-package "ROBOT_MESSAGES::TESTSRV")
  (make-package "ROBOT_MESSAGES::TESTSRV"))
(unless (find-package "ROBOT_MESSAGES::TESTSRVREQUEST")
  (make-package "ROBOT_MESSAGES::TESTSRVREQUEST"))
(unless (find-package "ROBOT_MESSAGES::TESTSRVRESPONSE")
  (make-package "ROBOT_MESSAGES::TESTSRVRESPONSE"))

(in-package "ROS")





(defclass Robot_Messages::TestSrvRequest
  :super ros::object
  :slots (_a _b ))

(defmethod Robot_Messages::TestSrvRequest
  (:init
   (&key
    ((:a __a) (instance ros::time :init))
    ((:b __b) 0.0)
    )
   (send-super :init)
   (setq _a __a)
   (setq _b (float __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; time _a
    8
    ;; float64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _a
       (write-long (send _a :sec) s) (write-long (send _a :nsec) s)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _a
     (send _a :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _a :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass Robot_Messages::TestSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod Robot_Messages::TestSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass Robot_Messages::TestSrv
  :super ros::object
  :slots ())

(setf (get Robot_Messages::TestSrv :md5sum-) "43bbf4bb5cd2c8d90af552c736d2ab6d")
(setf (get Robot_Messages::TestSrv :datatype-) "Robot_Messages/TestSrv")
(setf (get Robot_Messages::TestSrv :request) Robot_Messages::TestSrvRequest)
(setf (get Robot_Messages::TestSrv :response) Robot_Messages::TestSrvResponse)

(defmethod Robot_Messages::TestSrvRequest
  (:response () (instance Robot_Messages::TestSrvResponse :init)))

(setf (get Robot_Messages::TestSrvRequest :md5sum-) "43bbf4bb5cd2c8d90af552c736d2ab6d")
(setf (get Robot_Messages::TestSrvRequest :datatype-) "Robot_Messages/TestSrvRequest")
(setf (get Robot_Messages::TestSrvRequest :definition-)
      "# set urdf joint effort
time a           # joint to apply wrench (linear force and torque)
float64 b              # effort to apply

---
bool success                
  

")

(setf (get Robot_Messages::TestSrvResponse :md5sum-) "43bbf4bb5cd2c8d90af552c736d2ab6d")
(setf (get Robot_Messages::TestSrvResponse :datatype-) "Robot_Messages/TestSrvResponse")
(setf (get Robot_Messages::TestSrvResponse :definition-)
      "# set urdf joint effort
time a           # joint to apply wrench (linear force and torque)
float64 b              # effort to apply

---
bool success                
  

")



(provide :Robot_Messages/TestSrv "43bbf4bb5cd2c8d90af552c736d2ab6d")


