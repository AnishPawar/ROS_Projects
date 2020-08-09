; Auto-generated. Do not edit!


(cl:in-package Robot_Messages-srv)


;//! \htmlinclude BatterySrv-request.msg.html

(cl:defclass <BatterySrv-request> (roslisp-msg-protocol:ros-message)
  ((Percentage
    :reader Percentage
    :initarg :Percentage
    :type cl:integer
    :initform 0))
)

(cl:defclass BatterySrv-request (<BatterySrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatterySrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatterySrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Robot_Messages-srv:<BatterySrv-request> is deprecated: use Robot_Messages-srv:BatterySrv-request instead.")))

(cl:ensure-generic-function 'Percentage-val :lambda-list '(m))
(cl:defmethod Percentage-val ((m <BatterySrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robot_Messages-srv:Percentage-val is deprecated.  Use Robot_Messages-srv:Percentage instead.")
  (Percentage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatterySrv-request>) ostream)
  "Serializes a message object of type '<BatterySrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'Percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatterySrv-request>) istream)
  "Deserializes a message object of type '<BatterySrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Percentage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatterySrv-request>)))
  "Returns string type for a service object of type '<BatterySrv-request>"
  "Robot_Messages/BatterySrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatterySrv-request)))
  "Returns string type for a service object of type 'BatterySrv-request"
  "Robot_Messages/BatterySrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatterySrv-request>)))
  "Returns md5sum for a message object of type '<BatterySrv-request>"
  "ff61be9533183da287c1479b1594d5c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatterySrv-request)))
  "Returns md5sum for a message object of type 'BatterySrv-request"
  "ff61be9533183da287c1479b1594d5c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatterySrv-request>)))
  "Returns full string definition for message of type '<BatterySrv-request>"
  (cl:format cl:nil "int32 Percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatterySrv-request)))
  "Returns full string definition for message of type 'BatterySrv-request"
  (cl:format cl:nil "int32 Percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatterySrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatterySrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BatterySrv-request
    (cl:cons ':Percentage (Percentage msg))
))
;//! \htmlinclude BatterySrv-response.msg.html

(cl:defclass <BatterySrv-response> (roslisp-msg-protocol:ros-message)
  ((Return
    :reader Return
    :initarg :Return
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BatterySrv-response (<BatterySrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatterySrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatterySrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Robot_Messages-srv:<BatterySrv-response> is deprecated: use Robot_Messages-srv:BatterySrv-response instead.")))

(cl:ensure-generic-function 'Return-val :lambda-list '(m))
(cl:defmethod Return-val ((m <BatterySrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robot_Messages-srv:Return-val is deprecated.  Use Robot_Messages-srv:Return instead.")
  (Return m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatterySrv-response>) ostream)
  "Serializes a message object of type '<BatterySrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Return) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatterySrv-response>) istream)
  "Deserializes a message object of type '<BatterySrv-response>"
    (cl:setf (cl:slot-value msg 'Return) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatterySrv-response>)))
  "Returns string type for a service object of type '<BatterySrv-response>"
  "Robot_Messages/BatterySrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatterySrv-response)))
  "Returns string type for a service object of type 'BatterySrv-response"
  "Robot_Messages/BatterySrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatterySrv-response>)))
  "Returns md5sum for a message object of type '<BatterySrv-response>"
  "ff61be9533183da287c1479b1594d5c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatterySrv-response)))
  "Returns md5sum for a message object of type 'BatterySrv-response"
  "ff61be9533183da287c1479b1594d5c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatterySrv-response>)))
  "Returns full string definition for message of type '<BatterySrv-response>"
  (cl:format cl:nil "bool Return~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatterySrv-response)))
  "Returns full string definition for message of type 'BatterySrv-response"
  (cl:format cl:nil "bool Return~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatterySrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatterySrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BatterySrv-response
    (cl:cons ':Return (Return msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BatterySrv)))
  'BatterySrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BatterySrv)))
  'BatterySrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatterySrv)))
  "Returns string type for a service object of type '<BatterySrv>"
  "Robot_Messages/BatterySrv")