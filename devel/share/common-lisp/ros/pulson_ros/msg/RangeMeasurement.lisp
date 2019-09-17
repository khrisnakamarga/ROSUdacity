; Auto-generated. Do not edit!


(cl:in-package pulson_ros-msg)


;//! \htmlinclude RangeMeasurement.msg.html

(cl:defclass <RangeMeasurement> (roslisp-msg-protocol:ros-message)
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
   (responder_id
    :reader responder_id
    :initarg :responder_id
    :type cl:integer
    :initform 0)
   (range_status
    :reader range_status
    :initarg :range_status
    :type cl:fixnum
    :initform 0)
   (antenna_mode
    :reader antenna_mode
    :initarg :antenna_mode
    :type cl:fixnum
    :initform 0)
   (stopwatch_time
    :reader stopwatch_time
    :initarg :stopwatch_time
    :type cl:fixnum
    :initform 0)
   (precision_range
    :reader precision_range
    :initarg :precision_range
    :type cl:integer
    :initform 0)
   (coarse_range
    :reader coarse_range
    :initarg :coarse_range
    :type cl:integer
    :initform 0)
   (filtered_range
    :reader filtered_range
    :initarg :filtered_range
    :type cl:integer
    :initform 0)
   (precision_range_error
    :reader precision_range_error
    :initarg :precision_range_error
    :type cl:fixnum
    :initform 0)
   (coarse_range_error
    :reader coarse_range_error
    :initarg :coarse_range_error
    :type cl:fixnum
    :initform 0)
   (filtered_range_error
    :reader filtered_range_error
    :initarg :filtered_range_error
    :type cl:fixnum
    :initform 0)
   (filtered_velocity
    :reader filtered_velocity
    :initarg :filtered_velocity
    :type cl:fixnum
    :initform 0)
   (filtered_velocity_error
    :reader filtered_velocity_error
    :initarg :filtered_velocity_error
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0))
)

(cl:defclass RangeMeasurement (<RangeMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RangeMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RangeMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pulson_ros-msg:<RangeMeasurement> is deprecated: use pulson_ros-msg:RangeMeasurement instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:header-val is deprecated.  Use pulson_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:message_id-val is deprecated.  Use pulson_ros-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'responder_id-val :lambda-list '(m))
(cl:defmethod responder_id-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:responder_id-val is deprecated.  Use pulson_ros-msg:responder_id instead.")
  (responder_id m))

(cl:ensure-generic-function 'range_status-val :lambda-list '(m))
(cl:defmethod range_status-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:range_status-val is deprecated.  Use pulson_ros-msg:range_status instead.")
  (range_status m))

(cl:ensure-generic-function 'antenna_mode-val :lambda-list '(m))
(cl:defmethod antenna_mode-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:antenna_mode-val is deprecated.  Use pulson_ros-msg:antenna_mode instead.")
  (antenna_mode m))

(cl:ensure-generic-function 'stopwatch_time-val :lambda-list '(m))
(cl:defmethod stopwatch_time-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:stopwatch_time-val is deprecated.  Use pulson_ros-msg:stopwatch_time instead.")
  (stopwatch_time m))

(cl:ensure-generic-function 'precision_range-val :lambda-list '(m))
(cl:defmethod precision_range-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:precision_range-val is deprecated.  Use pulson_ros-msg:precision_range instead.")
  (precision_range m))

(cl:ensure-generic-function 'coarse_range-val :lambda-list '(m))
(cl:defmethod coarse_range-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:coarse_range-val is deprecated.  Use pulson_ros-msg:coarse_range instead.")
  (coarse_range m))

(cl:ensure-generic-function 'filtered_range-val :lambda-list '(m))
(cl:defmethod filtered_range-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:filtered_range-val is deprecated.  Use pulson_ros-msg:filtered_range instead.")
  (filtered_range m))

(cl:ensure-generic-function 'precision_range_error-val :lambda-list '(m))
(cl:defmethod precision_range_error-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:precision_range_error-val is deprecated.  Use pulson_ros-msg:precision_range_error instead.")
  (precision_range_error m))

(cl:ensure-generic-function 'coarse_range_error-val :lambda-list '(m))
(cl:defmethod coarse_range_error-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:coarse_range_error-val is deprecated.  Use pulson_ros-msg:coarse_range_error instead.")
  (coarse_range_error m))

(cl:ensure-generic-function 'filtered_range_error-val :lambda-list '(m))
(cl:defmethod filtered_range_error-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:filtered_range_error-val is deprecated.  Use pulson_ros-msg:filtered_range_error instead.")
  (filtered_range_error m))

(cl:ensure-generic-function 'filtered_velocity-val :lambda-list '(m))
(cl:defmethod filtered_velocity-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:filtered_velocity-val is deprecated.  Use pulson_ros-msg:filtered_velocity instead.")
  (filtered_velocity m))

(cl:ensure-generic-function 'filtered_velocity_error-val :lambda-list '(m))
(cl:defmethod filtered_velocity_error-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:filtered_velocity_error-val is deprecated.  Use pulson_ros-msg:filtered_velocity_error instead.")
  (filtered_velocity_error m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <RangeMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:timestamp-val is deprecated.  Use pulson_ros-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RangeMeasurement>) ostream)
  "Serializes a message object of type '<RangeMeasurement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'responder_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antenna_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopwatch_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stopwatch_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'precision_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'precision_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'precision_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'precision_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coarse_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'coarse_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'coarse_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'coarse_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filtered_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filtered_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filtered_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filtered_range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'precision_range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'precision_range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coarse_range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'coarse_range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filtered_range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filtered_range_error)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'filtered_velocity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filtered_velocity_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filtered_velocity_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RangeMeasurement>) istream)
  "Deserializes a message object of type '<RangeMeasurement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'responder_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antenna_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopwatch_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stopwatch_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'precision_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'precision_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'precision_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'precision_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coarse_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'coarse_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'coarse_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'coarse_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filtered_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filtered_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'filtered_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'filtered_range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'precision_range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'precision_range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coarse_range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'coarse_range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filtered_range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filtered_range_error)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filtered_velocity) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'filtered_velocity_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'filtered_velocity_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RangeMeasurement>)))
  "Returns string type for a message object of type '<RangeMeasurement>"
  "pulson_ros/RangeMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RangeMeasurement)))
  "Returns string type for a message object of type 'RangeMeasurement"
  "pulson_ros/RangeMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RangeMeasurement>)))
  "Returns md5sum for a message object of type '<RangeMeasurement>"
  "6487848ea565e546d9907169ef6fc53e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RangeMeasurement)))
  "Returns md5sum for a message object of type 'RangeMeasurement"
  "6487848ea565e546d9907169ef6fc53e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RangeMeasurement>)))
  "Returns full string definition for message of type '<RangeMeasurement>"
  (cl:format cl:nil "Header header~%~%uint16 message_id~%uint32 responder_id~%~%uint8 range_status~%uint8 antenna_mode~%~%uint16 stopwatch_time~%~%uint32 precision_range~%uint32 coarse_range~%uint32 filtered_range~%~%uint16 precision_range_error~%uint16 coarse_range_error~%uint16 filtered_range_error~%~%int16 filtered_velocity~%uint16 filtered_velocity_error~%~%uint32 timestamp~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RangeMeasurement)))
  "Returns full string definition for message of type 'RangeMeasurement"
  (cl:format cl:nil "Header header~%~%uint16 message_id~%uint32 responder_id~%~%uint8 range_status~%uint8 antenna_mode~%~%uint16 stopwatch_time~%~%uint32 precision_range~%uint32 coarse_range~%uint32 filtered_range~%~%uint16 precision_range_error~%uint16 coarse_range_error~%uint16 filtered_range_error~%~%int16 filtered_velocity~%uint16 filtered_velocity_error~%~%uint32 timestamp~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RangeMeasurement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4
     1
     1
     2
     4
     4
     4
     2
     2
     2
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RangeMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'RangeMeasurement
    (cl:cons ':header (header msg))
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':responder_id (responder_id msg))
    (cl:cons ':range_status (range_status msg))
    (cl:cons ':antenna_mode (antenna_mode msg))
    (cl:cons ':stopwatch_time (stopwatch_time msg))
    (cl:cons ':precision_range (precision_range msg))
    (cl:cons ':coarse_range (coarse_range msg))
    (cl:cons ':filtered_range (filtered_range msg))
    (cl:cons ':precision_range_error (precision_range_error msg))
    (cl:cons ':coarse_range_error (coarse_range_error msg))
    (cl:cons ':filtered_range_error (filtered_range_error msg))
    (cl:cons ':filtered_velocity (filtered_velocity msg))
    (cl:cons ':filtered_velocity_error (filtered_velocity_error msg))
    (cl:cons ':timestamp (timestamp msg))
))
