; Auto-generated. Do not edit!


(cl:in-package chores-msg)


;//! \htmlinclude fibonacciFeedback.msg.html

(cl:defclass <fibonacciFeedback> (roslisp-msg-protocol:ros-message)
  ((sequence
    :reader sequence
    :initarg :sequence
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass fibonacciFeedback (<fibonacciFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fibonacciFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fibonacciFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chores-msg:<fibonacciFeedback> is deprecated: use chores-msg:fibonacciFeedback instead.")))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <fibonacciFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chores-msg:sequence-val is deprecated.  Use chores-msg:sequence instead.")
  (sequence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fibonacciFeedback>) ostream)
  "Serializes a message object of type '<fibonacciFeedback>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sequence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'sequence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fibonacciFeedback>) istream)
  "Deserializes a message object of type '<fibonacciFeedback>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sequence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sequence)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fibonacciFeedback>)))
  "Returns string type for a message object of type '<fibonacciFeedback>"
  "chores/fibonacciFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fibonacciFeedback)))
  "Returns string type for a message object of type 'fibonacciFeedback"
  "chores/fibonacciFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fibonacciFeedback>)))
  "Returns md5sum for a message object of type '<fibonacciFeedback>"
  "b81e37d2a31925a0e8ae261a8699cb79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fibonacciFeedback)))
  "Returns md5sum for a message object of type 'fibonacciFeedback"
  "b81e37d2a31925a0e8ae261a8699cb79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fibonacciFeedback>)))
  "Returns full string definition for message of type '<fibonacciFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%int32[] sequence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fibonacciFeedback)))
  "Returns full string definition for message of type 'fibonacciFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%int32[] sequence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fibonacciFeedback>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sequence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fibonacciFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'fibonacciFeedback
    (cl:cons ':sequence (sequence msg))
))
