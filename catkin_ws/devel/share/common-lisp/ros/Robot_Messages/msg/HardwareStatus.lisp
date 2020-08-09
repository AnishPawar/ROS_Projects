; Auto-generated. Do not edit!


(cl:in-package Robot_Messages-msg)


;//! \htmlinclude HardwareStatus.msg.html

(cl:defclass <HardwareStatus> (roslisp-msg-protocol:ros-message)
  ((temprature
    :reader temprature
    :initarg :temprature
    :type cl:float
    :initform 0.0)
   (motor_status
    :reader motor_status
    :initarg :motor_status
    :type cl:boolean
    :initform cl:nil)
   (debug_msg
    :reader debug_msg
    :initarg :debug_msg
    :type cl:string
    :initform ""))
)

(cl:defclass HardwareStatus (<HardwareStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HardwareStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HardwareStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Robot_Messages-msg:<HardwareStatus> is deprecated: use Robot_Messages-msg:HardwareStatus instead.")))

(cl:ensure-generic-function 'temprature-val :lambda-list '(m))
(cl:defmethod temprature-val ((m <HardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robot_Messages-msg:temprature-val is deprecated.  Use Robot_Messages-msg:temprature instead.")
  (temprature m))

(cl:ensure-generic-function 'motor_status-val :lambda-list '(m))
(cl:defmethod motor_status-val ((m <HardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robot_Messages-msg:motor_status-val is deprecated.  Use Robot_Messages-msg:motor_status instead.")
  (motor_status m))

(cl:ensure-generic-function 'debug_msg-val :lambda-list '(m))
(cl:defmethod debug_msg-val ((m <HardwareStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robot_Messages-msg:debug_msg-val is deprecated.  Use Robot_Messages-msg:debug_msg instead.")
  (debug_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HardwareStatus>) ostream)
  "Serializes a message object of type '<HardwareStatus>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'temprature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_status) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'debug_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'debug_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HardwareStatus>) istream)
  "Deserializes a message object of type '<HardwareStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temprature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'motor_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'debug_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'debug_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HardwareStatus>)))
  "Returns string type for a message object of type '<HardwareStatus>"
  "Robot_Messages/HardwareStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareStatus)))
  "Returns string type for a message object of type 'HardwareStatus"
  "Robot_Messages/HardwareStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HardwareStatus>)))
  "Returns md5sum for a message object of type '<HardwareStatus>"
  "882ce153f5082c30d832d8d4f8e9fe20")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HardwareStatus)))
  "Returns md5sum for a message object of type 'HardwareStatus"
  "882ce153f5082c30d832d8d4f8e9fe20")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HardwareStatus>)))
  "Returns full string definition for message of type '<HardwareStatus>"
  (cl:format cl:nil "float64 temprature~%bool motor_status~%string debug_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HardwareStatus)))
  "Returns full string definition for message of type 'HardwareStatus"
  (cl:format cl:nil "float64 temprature~%bool motor_status~%string debug_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HardwareStatus>))
  (cl:+ 0
     8
     1
     4 (cl:length (cl:slot-value msg 'debug_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HardwareStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HardwareStatus
    (cl:cons ':temprature (temprature msg))
    (cl:cons ':motor_status (motor_status msg))
    (cl:cons ':debug_msg (debug_msg msg))
))
