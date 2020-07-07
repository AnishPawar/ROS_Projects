; Auto-generated. Do not edit!


(cl:in-package custom_msgs-msg)


;//! \htmlinclude CustomMessage.msg.html

(cl:defclass <CustomMessage> (roslisp-msg-protocol:ros-message)
  ((temprature
    :reader temprature
    :initarg :temprature
    :type cl:integer
    :initform 0)
   (motor_stat
    :reader motor_stat
    :initarg :motor_stat
    :type cl:boolean
    :initform cl:nil)
   (debug_message
    :reader debug_message
    :initarg :debug_message
    :type cl:string
    :initform ""))
)

(cl:defclass CustomMessage (<CustomMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custom_msgs-msg:<CustomMessage> is deprecated: use custom_msgs-msg:CustomMessage instead.")))

(cl:ensure-generic-function 'temprature-val :lambda-list '(m))
(cl:defmethod temprature-val ((m <CustomMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:temprature-val is deprecated.  Use custom_msgs-msg:temprature instead.")
  (temprature m))

(cl:ensure-generic-function 'motor_stat-val :lambda-list '(m))
(cl:defmethod motor_stat-val ((m <CustomMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:motor_stat-val is deprecated.  Use custom_msgs-msg:motor_stat instead.")
  (motor_stat m))

(cl:ensure-generic-function 'debug_message-val :lambda-list '(m))
(cl:defmethod debug_message-val ((m <CustomMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custom_msgs-msg:debug_message-val is deprecated.  Use custom_msgs-msg:debug_message instead.")
  (debug_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomMessage>) ostream)
  "Serializes a message object of type '<CustomMessage>"
  (cl:let* ((signed (cl:slot-value msg 'temprature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_stat) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'debug_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'debug_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomMessage>) istream)
  "Deserializes a message object of type '<CustomMessage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temprature) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'motor_stat) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'debug_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'debug_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomMessage>)))
  "Returns string type for a message object of type '<CustomMessage>"
  "custom_msgs/CustomMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMessage)))
  "Returns string type for a message object of type 'CustomMessage"
  "custom_msgs/CustomMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomMessage>)))
  "Returns md5sum for a message object of type '<CustomMessage>"
  "f537432f8f1c04503d008c5851a94e1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomMessage)))
  "Returns md5sum for a message object of type 'CustomMessage"
  "f537432f8f1c04503d008c5851a94e1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomMessage>)))
  "Returns full string definition for message of type '<CustomMessage>"
  (cl:format cl:nil "int64 temprature~%bool motor_stat~%string debug_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomMessage)))
  "Returns full string definition for message of type 'CustomMessage"
  (cl:format cl:nil "int64 temprature~%bool motor_stat~%string debug_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomMessage>))
  (cl:+ 0
     8
     1
     4 (cl:length (cl:slot-value msg 'debug_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomMessage
    (cl:cons ':temprature (temprature msg))
    (cl:cons ':motor_stat (motor_stat msg))
    (cl:cons ':debug_message (debug_message msg))
))
