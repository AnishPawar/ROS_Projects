;; Auto-generated. Do not edit!


(when (boundp 'custom_msgs::HardwareStatus)
  (if (not (find-package "CUSTOM_MSGS"))
    (make-package "CUSTOM_MSGS"))
  (shadow 'HardwareStatus (find-package "CUSTOM_MSGS")))
(unless (find-package "CUSTOM_MSGS::HARDWARESTATUS")
  (make-package "CUSTOM_MSGS::HARDWARESTATUS"))

(in-package "ROS")
;;//! \htmlinclude HardwareStatus.msg.html


(defclass custom_msgs::HardwareStatus
  :super ros::object
  :slots (_temprature _motor_stat _debug_message ))

(defmethod custom_msgs::HardwareStatus
  (:init
   (&key
    ((:temprature __temprature) 0)
    ((:motor_stat __motor_stat) nil)
    ((:debug_message __debug_message) "")
    )
   (send-super :init)
   (setq _temprature (round __temprature))
   (setq _motor_stat __motor_stat)
   (setq _debug_message (string __debug_message))
   self)
  (:temprature
   (&optional __temprature)
   (if __temprature (setq _temprature __temprature)) _temprature)
  (:motor_stat
   (&optional __motor_stat)
   (if __motor_stat (setq _motor_stat __motor_stat)) _motor_stat)
  (:debug_message
   (&optional __debug_message)
   (if __debug_message (setq _debug_message __debug_message)) _debug_message)
  (:serialization-length
   ()
   (+
    ;; int64 _temprature
    8
    ;; bool _motor_stat
    1
    ;; string _debug_message
    4 (length _debug_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _temprature
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _temprature (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _temprature) (= (length (_temprature . bv)) 2)) ;; bignum
              (write-long (ash (elt (_temprature . bv) 0) 0) s)
              (write-long (ash (elt (_temprature . bv) 1) -1) s))
             ((and (class _temprature) (= (length (_temprature . bv)) 1)) ;; big1
              (write-long (elt (_temprature . bv) 0) s)
              (write-long (if (>= _temprature 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _temprature s)(write-long (if (>= _temprature 0) 0 #xffffffff) s)))
     ;; bool _motor_stat
       (if _motor_stat (write-byte -1 s) (write-byte 0 s))
     ;; string _debug_message
       (write-long (length _debug_message) s) (princ _debug_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _temprature
#+(or :alpha :irix6 :x86_64)
      (setf _temprature (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _temprature (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; bool _motor_stat
     (setq _motor_stat (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _debug_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _debug_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get custom_msgs::HardwareStatus :md5sum-) "f537432f8f1c04503d008c5851a94e1d")
(setf (get custom_msgs::HardwareStatus :datatype-) "custom_msgs/HardwareStatus")
(setf (get custom_msgs::HardwareStatus :definition-)
      "int64 temprature
bool motor_stat
string debug_message

")



(provide :custom_msgs/HardwareStatus "f537432f8f1c04503d008c5851a94e1d")


