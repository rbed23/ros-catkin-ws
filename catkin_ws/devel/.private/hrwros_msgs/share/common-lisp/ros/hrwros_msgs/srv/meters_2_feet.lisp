; Auto-generated. Do not edit!


(cl:in-package hrwros_msgs-srv)


;//! \htmlinclude meters_2_feet-request.msg.html

(cl:defclass <meters_2_feet-request> (roslisp-msg-protocol:ros-message)
  ((measurement_meters
    :reader measurement_meters
    :initarg :measurement_meters
    :type cl:float
    :initform 0.0))
)

(cl:defclass meters_2_feet-request (<meters_2_feet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <meters_2_feet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'meters_2_feet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<meters_2_feet-request> is deprecated: use hrwros_msgs-srv:meters_2_feet-request instead.")))

(cl:ensure-generic-function 'measurement_meters-val :lambda-list '(m))
(cl:defmethod measurement_meters-val ((m <meters_2_feet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:measurement_meters-val is deprecated.  Use hrwros_msgs-srv:measurement_meters instead.")
  (measurement_meters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <meters_2_feet-request>) ostream)
  "Serializes a message object of type '<meters_2_feet-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'measurement_meters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <meters_2_feet-request>) istream)
  "Deserializes a message object of type '<meters_2_feet-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measurement_meters) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<meters_2_feet-request>)))
  "Returns string type for a service object of type '<meters_2_feet-request>"
  "hrwros_msgs/meters_2_feetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'meters_2_feet-request)))
  "Returns string type for a service object of type 'meters_2_feet-request"
  "hrwros_msgs/meters_2_feetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<meters_2_feet-request>)))
  "Returns md5sum for a message object of type '<meters_2_feet-request>"
  "d1036d55dafbbfcc5e557511312e2fdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'meters_2_feet-request)))
  "Returns md5sum for a message object of type 'meters_2_feet-request"
  "d1036d55dafbbfcc5e557511312e2fdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<meters_2_feet-request>)))
  "Returns full string definition for message of type '<meters_2_feet-request>"
  (cl:format cl:nil "float64 measurement_meters # Request field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'meters_2_feet-request)))
  "Returns full string definition for message of type 'meters_2_feet-request"
  (cl:format cl:nil "float64 measurement_meters # Request field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <meters_2_feet-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <meters_2_feet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'meters_2_feet-request
    (cl:cons ':measurement_meters (measurement_meters msg))
))
;//! \htmlinclude meters_2_feet-response.msg.html

(cl:defclass <meters_2_feet-response> (roslisp-msg-protocol:ros-message)
  ((measurement_feet
    :reader measurement_feet
    :initarg :measurement_feet
    :type cl:float
    :initform 0.0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass meters_2_feet-response (<meters_2_feet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <meters_2_feet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'meters_2_feet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrwros_msgs-srv:<meters_2_feet-response> is deprecated: use hrwros_msgs-srv:meters_2_feet-response instead.")))

(cl:ensure-generic-function 'measurement_feet-val :lambda-list '(m))
(cl:defmethod measurement_feet-val ((m <meters_2_feet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:measurement_feet-val is deprecated.  Use hrwros_msgs-srv:measurement_feet instead.")
  (measurement_feet m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <meters_2_feet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrwros_msgs-srv:success-val is deprecated.  Use hrwros_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <meters_2_feet-response>) ostream)
  "Serializes a message object of type '<meters_2_feet-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'measurement_feet))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <meters_2_feet-response>) istream)
  "Deserializes a message object of type '<meters_2_feet-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measurement_feet) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<meters_2_feet-response>)))
  "Returns string type for a service object of type '<meters_2_feet-response>"
  "hrwros_msgs/meters_2_feetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'meters_2_feet-response)))
  "Returns string type for a service object of type 'meters_2_feet-response"
  "hrwros_msgs/meters_2_feetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<meters_2_feet-response>)))
  "Returns md5sum for a message object of type '<meters_2_feet-response>"
  "d1036d55dafbbfcc5e557511312e2fdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'meters_2_feet-response)))
  "Returns md5sum for a message object of type 'meters_2_feet-response"
  "d1036d55dafbbfcc5e557511312e2fdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<meters_2_feet-response>)))
  "Returns full string definition for message of type '<meters_2_feet-response>"
  (cl:format cl:nil "float64 measurement_feet   # Response field~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'meters_2_feet-response)))
  "Returns full string definition for message of type 'meters_2_feet-response"
  (cl:format cl:nil "float64 measurement_feet   # Response field~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <meters_2_feet-response>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <meters_2_feet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'meters_2_feet-response
    (cl:cons ':measurement_feet (measurement_feet msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'meters_2_feet)))
  'meters_2_feet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'meters_2_feet)))
  'meters_2_feet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'meters_2_feet)))
  "Returns string type for a service object of type '<meters_2_feet>"
  "hrwros_msgs/meters_2_feet")