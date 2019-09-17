; Auto-generated. Do not edit!


(cl:in-package pulson_ros-msg)


;//! \htmlinclude EchoedRangeMeasurement.msg.html

(cl:defclass <EchoedRangeMeasurement> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (message_id
    :reader message_id
    :initarg :message_id
    :type cl:fixnum
    :initform 0)
   (requester_id
    :reader requester_id
    :initarg :requester_id
    :type cl:integer
    :initform 0)
   (responder_id
    :reader responder_id
    :initarg :responder_id
    :type cl:integer
    :initform 0)
   (precision_range
    :reader precision_range
    :initarg :precision_range
    :type cl:integer
    :initform 0)
   (precision_range_error
    :reader precision_range_error
    :initarg :precision_range_error
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0))
)

(cl:defclass EchoedRangeMeasurement (<EchoedRangeMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EchoedRangeMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EchoedRangeMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pulson_ros-msg:<EchoedRangeMeasurement> is deprecated: use pulson_ros-msg:EchoedRangeMeasurement instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EchoedRangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:header-val is deprecated.  Use pulson_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <EchoedRangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:message_id-val is deprecated.  Use pulson_ros-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'requester_id-val :lambda-list '(m))
(cl:defmethod requester_id-val ((m <EchoedRangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:requester_id-val is deprecated.  Use pulson_ros-msg:requester_id instead.")
  (requester_id m))

(cl:ensure-generic-function 'responder_id-val :lambda-list '(m))
(cl:defmethod responder_id-val ((m <EchoedRangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:responder_id-val is deprecated.  Use pulson_ros-msg:responder_id instead.")
  (responder_id m))

(cl:ensure-generic-function 'precision_range-val :lambda-list '(m))
(cl:defmethod precision_range-val ((m <EchoedRangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:precision_range-val is deprecated.  Use pulson_ros-msg:precision_range instead.")
  (precision_range m))

(cl:ensure-generic-function 'precision_range_error-val :lambda-list '(m))
(cl:defmethod precision_range_error-val ((m <EchoedRangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:precision_range_error-val is deprecated.  Use pulson_ros-msg:precision_range_error instead.")
  (precision_range_error m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <EchoedRangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:timestamp-val is deprecated.  Use pulson_ros-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EchoedRangeMeasurement>) ostream)
  "Serializes a message object of type '<EchoedRangeMeasurement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'requester_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'requester_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'requester_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'requester_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'precision_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'precision_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'precision_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'precision_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'precision_range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'precision_range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EchoedRangeMeasurement>) istream)
  "Deserializes a message object of type '<EchoedRangeMeasurement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'requester_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'requester_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'requester_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'requester_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'precision_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'precision_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'precision_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'precision_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'precision_range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'precision_range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EchoedRangeMeasurement>)))
  "Returns string type for a message object of type '<EchoedRangeMeasurement>"
  "pulson_ros/EchoedRangeMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EchoedRangeMeasurement)))
  "Returns string type for a message object of type 'EchoedRangeMeasurement"
  "pulson_ros/EchoedRangeMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EchoedRangeMeasurement>)))
  "Returns md5sum for a message object of type '<EchoedRangeMeasurement>"
  "8e6826463afd1ec35691a83318a58e78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EchoedRangeMeasurement)))
  "Returns md5sum for a message object of type 'EchoedRangeMeasurement"
  "8e6826463afd1ec35691a83318a58e78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EchoedRangeMeasurement>)))
  "Returns full string definition for message of type '<EchoedRangeMeasurement>"
  (cl:format cl:nil "Header header~%~%uint16 message_id~%~%uint32 requester_id~%uint32 responder_id~%~%uint32 precision_range~%uint16 precision_range_error~%~%uint32 timestamp~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EchoedRangeMeasurement)))
  "Returns full string definition for message of type 'EchoedRangeMeasurement"
  (cl:format cl:nil "Header header~%~%uint16 message_id~%~%uint32 requester_id~%uint32 responder_id~%~%uint32 precision_range~%uint16 precision_range_error~%~%uint32 timestamp~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EchoedRangeMeasurement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4
     4
     4
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EchoedRangeMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'EchoedRangeMeasurement
    (cl:cons ':header (header msg))
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':requester_id (requester_id msg))
    (cl:cons ':responder_id (responder_id msg))
    (cl:cons ':precision_range (precision_range msg))
    (cl:cons ':precision_range_error (precision_range_error msg))
    (cl:cons ':timestamp (timestamp msg))
))
