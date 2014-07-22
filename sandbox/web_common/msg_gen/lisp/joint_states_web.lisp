; Auto-generated. Do not edit!


(cl:in-package web_common-msg)


;//! \htmlinclude joint_states_web.msg.html

(cl:defclass <joint_states_web> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (slider_value
    :reader slider_value
    :initarg :slider_value
    :type cl:float
    :initform 0.0))
)

(cl:defclass joint_states_web (<joint_states_web>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joint_states_web>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joint_states_web)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name web_common-msg:<joint_states_web> is deprecated: use web_common-msg:joint_states_web instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <joint_states_web>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader web_common-msg:joint_name-val is deprecated.  Use web_common-msg:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'slider_value-val :lambda-list '(m))
(cl:defmethod slider_value-val ((m <joint_states_web>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader web_common-msg:slider_value-val is deprecated.  Use web_common-msg:slider_value instead.")
  (slider_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joint_states_web>) ostream)
  "Serializes a message object of type '<joint_states_web>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slider_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joint_states_web>) istream)
  "Deserializes a message object of type '<joint_states_web>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slider_value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joint_states_web>)))
  "Returns string type for a message object of type '<joint_states_web>"
  "web_common/joint_states_web")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joint_states_web)))
  "Returns string type for a message object of type 'joint_states_web"
  "web_common/joint_states_web")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joint_states_web>)))
  "Returns md5sum for a message object of type '<joint_states_web>"
  "b6cdca4dd65b6ba92d59750ce618b6ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joint_states_web)))
  "Returns md5sum for a message object of type 'joint_states_web"
  "b6cdca4dd65b6ba92d59750ce618b6ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joint_states_web>)))
  "Returns full string definition for message of type '<joint_states_web>"
  (cl:format cl:nil "string joint_name~%float32 slider_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joint_states_web)))
  "Returns full string definition for message of type 'joint_states_web"
  (cl:format cl:nil "string joint_name~%float32 slider_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joint_states_web>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joint_states_web>))
  "Converts a ROS message object to a list"
  (cl:list 'joint_states_web
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':slider_value (slider_value msg))
))
