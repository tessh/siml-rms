; Auto-generated. Do not edit!


(cl:in-package web_common-msg)


;//! \htmlinclude min_max_joint.msg.html

(cl:defclass <min_max_joint> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (minval
    :reader minval
    :initarg :minval
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (maxval
    :reader maxval
    :initarg :maxval
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass min_max_joint (<min_max_joint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <min_max_joint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'min_max_joint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name web_common-msg:<min_max_joint> is deprecated: use web_common-msg:min_max_joint instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <min_max_joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader web_common-msg:name-val is deprecated.  Use web_common-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'minval-val :lambda-list '(m))
(cl:defmethod minval-val ((m <min_max_joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader web_common-msg:minval-val is deprecated.  Use web_common-msg:minval instead.")
  (minval m))

(cl:ensure-generic-function 'maxval-val :lambda-list '(m))
(cl:defmethod maxval-val ((m <min_max_joint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader web_common-msg:maxval-val is deprecated.  Use web_common-msg:maxval instead.")
  (maxval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <min_max_joint>) ostream)
  "Serializes a message object of type '<min_max_joint>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'minval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'minval))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'maxval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'maxval))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <min_max_joint>) istream)
  "Deserializes a message object of type '<min_max_joint>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'minval) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'minval)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'maxval) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'maxval)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<min_max_joint>)))
  "Returns string type for a message object of type '<min_max_joint>"
  "web_common/min_max_joint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'min_max_joint)))
  "Returns string type for a message object of type 'min_max_joint"
  "web_common/min_max_joint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<min_max_joint>)))
  "Returns md5sum for a message object of type '<min_max_joint>"
  "78bac6ec82d30f7d7c6ea1d1204cd27b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'min_max_joint)))
  "Returns md5sum for a message object of type 'min_max_joint"
  "78bac6ec82d30f7d7c6ea1d1204cd27b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<min_max_joint>)))
  "Returns full string definition for message of type '<min_max_joint>"
  (cl:format cl:nil "string[]  name~%float32[] minval~%float32[] maxval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'min_max_joint)))
  "Returns full string definition for message of type 'min_max_joint"
  (cl:format cl:nil "string[]  name~%float32[] minval~%float32[] maxval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <min_max_joint>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'minval) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'maxval) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <min_max_joint>))
  "Converts a ROS message object to a list"
  (cl:list 'min_max_joint
    (cl:cons ':name (name msg))
    (cl:cons ':minval (minval msg))
    (cl:cons ':maxval (maxval msg))
))
