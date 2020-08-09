; Auto-generated. Do not edit!


(cl:in-package Robot_Messages-srv)


;//! \htmlinclude TestSrv-request.msg.html

(cl:defclass <TestSrv-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:real
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass TestSrv-request (<TestSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Robot_Messages-srv:<TestSrv-request> is deprecated: use Robot_Messages-srv:TestSrv-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <TestSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robot_Messages-srv:a-val is deprecated.  Use Robot_Messages-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <TestSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robot_Messages-srv:b-val is deprecated.  Use Robot_Messages-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestSrv-request>) ostream)
  "Serializes a message object of type '<TestSrv-request>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'a)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'a) (cl:floor (cl:slot-value msg 'a)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestSrv-request>) istream)
  "Deserializes a message object of type '<TestSrv-request>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestSrv-request>)))
  "Returns string type for a service object of type '<TestSrv-request>"
  "Robot_Messages/TestSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestSrv-request)))
  "Returns string type for a service object of type 'TestSrv-request"
  "Robot_Messages/TestSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestSrv-request>)))
  "Returns md5sum for a message object of type '<TestSrv-request>"
  "43bbf4bb5cd2c8d90af552c736d2ab6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestSrv-request)))
  "Returns md5sum for a message object of type 'TestSrv-request"
  "43bbf4bb5cd2c8d90af552c736d2ab6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestSrv-request>)))
  "Returns full string definition for message of type '<TestSrv-request>"
  (cl:format cl:nil "# set urdf joint effort~%time a           # joint to apply wrench (linear force and torque)~%float64 b              # effort to apply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestSrv-request)))
  "Returns full string definition for message of type 'TestSrv-request"
  (cl:format cl:nil "# set urdf joint effort~%time a           # joint to apply wrench (linear force and torque)~%float64 b              # effort to apply~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestSrv-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestSrv-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude TestSrv-response.msg.html

(cl:defclass <TestSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TestSrv-response (<TestSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Robot_Messages-srv:<TestSrv-response> is deprecated: use Robot_Messages-srv:TestSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TestSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Robot_Messages-srv:success-val is deprecated.  Use Robot_Messages-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestSrv-response>) ostream)
  "Serializes a message object of type '<TestSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestSrv-response>) istream)
  "Deserializes a message object of type '<TestSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestSrv-response>)))
  "Returns string type for a service object of type '<TestSrv-response>"
  "Robot_Messages/TestSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestSrv-response)))
  "Returns string type for a service object of type 'TestSrv-response"
  "Robot_Messages/TestSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestSrv-response>)))
  "Returns md5sum for a message object of type '<TestSrv-response>"
  "43bbf4bb5cd2c8d90af552c736d2ab6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestSrv-response)))
  "Returns md5sum for a message object of type 'TestSrv-response"
  "43bbf4bb5cd2c8d90af552c736d2ab6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestSrv-response>)))
  "Returns full string definition for message of type '<TestSrv-response>"
  (cl:format cl:nil "bool success                ~%  ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestSrv-response)))
  "Returns full string definition for message of type 'TestSrv-response"
  (cl:format cl:nil "bool success                ~%  ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestSrv)))
  'TestSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestSrv)))
  'TestSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestSrv)))
  "Returns string type for a service object of type '<TestSrv>"
  "Robot_Messages/TestSrv")