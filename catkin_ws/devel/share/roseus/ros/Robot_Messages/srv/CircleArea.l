;; Auto-generated. Do not edit!


(when (boundp 'Robot_Messages::CircleArea)
  (if (not (find-package "ROBOT_MESSAGES"))
    (make-package "ROBOT_MESSAGES"))
  (shadow 'CircleArea (find-package "ROBOT_MESSAGES")))
(unless (find-package "ROBOT_MESSAGES::CIRCLEAREA")
  (make-package "ROBOT_MESSAGES::CIRCLEAREA"))
(unless (find-package "ROBOT_MESSAGES::CIRCLEAREAREQUEST")
  (make-package "ROBOT_MESSAGES::CIRCLEAREAREQUEST"))
(unless (find-package "ROBOT_MESSAGES::CIRCLEAREARESPONSE")
  (make-package "ROBOT_MESSAGES::CIRCLEAREARESPONSE"))

(in-package "ROS")





(defclass Robot_Messages::CircleAreaRequest
  :super ros::object
  :slots (_radius ))

(defmethod Robot_Messages::CircleAreaRequest
  (:init
   (&key
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _radius (float __radius))
   self)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass Robot_Messages::CircleAreaResponse
  :super ros::object
  :slots (_area ))

(defmethod Robot_Messages::CircleAreaResponse
  (:init
   (&key
    ((:area __area) 0.0)
    )
   (send-super :init)
   (setq _area (float __area))
   self)
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:serialization-length
   ()
   (+
    ;; float64 _area
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass Robot_Messages::CircleArea
  :super ros::object
  :slots ())

(setf (get Robot_Messages::CircleArea :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get Robot_Messages::CircleArea :datatype-) "Robot_Messages/CircleArea")
(setf (get Robot_Messages::CircleArea :request) Robot_Messages::CircleAreaRequest)
(setf (get Robot_Messages::CircleArea :response) Robot_Messages::CircleAreaResponse)

(defmethod Robot_Messages::CircleAreaRequest
  (:response () (instance Robot_Messages::CircleAreaResponse :init)))

(setf (get Robot_Messages::CircleAreaRequest :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get Robot_Messages::CircleAreaRequest :datatype-) "Robot_Messages/CircleAreaRequest")
(setf (get Robot_Messages::CircleAreaRequest :definition-)
      "float64 radius
---
float64 area

")

(setf (get Robot_Messages::CircleAreaResponse :md5sum-) "c314357897f85c5c2498418b07dbcead")
(setf (get Robot_Messages::CircleAreaResponse :datatype-) "Robot_Messages/CircleAreaResponse")
(setf (get Robot_Messages::CircleAreaResponse :definition-)
      "float64 radius
---
float64 area

")



(provide :Robot_Messages/CircleArea "c314357897f85c5c2498418b07dbcead")


