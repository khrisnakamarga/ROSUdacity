; Auto-generated. Do not edit!


(cl:in-package pulson_ros-msg)


;//! \htmlinclude RangeNetNDBEntry.msg.html

(cl:defclass <RangeNetNDBEntry> (roslisp-msg-protocol:ros-message)
  ((node_id
    :reader node_id
    :initarg :node_id
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
   (range
    :reader range
    :initarg :range
    :type cl:integer
    :initform 0)
   (range_error
    :reader range_error
    :initarg :range_error
    :type cl:fixnum
    :initform 0)
   (range_velocity
    :reader range_velocity
    :initarg :range_velocity
    :type cl:fixnum
    :initform 0)
   (range_measurement_type
    :reader range_measurement_type
    :initarg :range_measurement_type
    :type cl:fixnum
    :initform 0)
   (flags
    :reader flags
    :initarg :flags
    :type cl:fixnum
    :initform 0)
   (stats_age_ms
    :reader stats_age_ms
    :initarg :stats_age_ms
    :type cl:integer
    :initform 0)
   (range_update_timestamp_ms
    :reader range_update_timestamp_ms
    :initarg :range_update_timestamp_ms
    :type cl:integer
    :initform 0)
   (last_heard_timestamp_ms
    :reader last_heard_timestamp_ms
    :initarg :last_heard_timestamp_ms
    :type cl:integer
    :initform 0)
   (added_to_ndb_timestamp_ms
    :reader added_to_ndb_timestamp_ms
    :initarg :added_to_ndb_timestamp_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass RangeNetNDBEntry (<RangeNetNDBEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RangeNetNDBEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RangeNetNDBEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pulson_ros-msg:<RangeNetNDBEntry> is deprecated: use pulson_ros-msg:RangeNetNDBEntry instead.")))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:node_id-val is deprecated.  Use pulson_ros-msg:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'range_status-val :lambda-list '(m))
(cl:defmethod range_status-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:range_status-val is deprecated.  Use pulson_ros-msg:range_status instead.")
  (range_status m))

(cl:ensure-generic-function 'antenna_mode-val :lambda-list '(m))
(cl:defmethod antenna_mode-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:antenna_mode-val is deprecated.  Use pulson_ros-msg:antenna_mode instead.")
  (antenna_mode m))

(cl:ensure-generic-function 'stopwatch_time-val :lambda-list '(m))
(cl:defmethod stopwatch_time-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:stopwatch_time-val is deprecated.  Use pulson_ros-msg:stopwatch_time instead.")
  (stopwatch_time m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:range-val is deprecated.  Use pulson_ros-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'range_error-val :lambda-list '(m))
(cl:defmethod range_error-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:range_error-val is deprecated.  Use pulson_ros-msg:range_error instead.")
  (range_error m))

(cl:ensure-generic-function 'range_velocity-val :lambda-list '(m))
(cl:defmethod range_velocity-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:range_velocity-val is deprecated.  Use pulson_ros-msg:range_velocity instead.")
  (range_velocity m))

(cl:ensure-generic-function 'range_measurement_type-val :lambda-list '(m))
(cl:defmethod range_measurement_type-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:range_measurement_type-val is deprecated.  Use pulson_ros-msg:range_measurement_type instead.")
  (range_measurement_type m))

(cl:ensure-generic-function 'flags-val :lambda-list '(m))
(cl:defmethod flags-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:flags-val is deprecated.  Use pulson_ros-msg:flags instead.")
  (flags m))

(cl:ensure-generic-function 'stats_age_ms-val :lambda-list '(m))
(cl:defmethod stats_age_ms-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:stats_age_ms-val is deprecated.  Use pulson_ros-msg:stats_age_ms instead.")
  (stats_age_ms m))

(cl:ensure-generic-function 'range_update_timestamp_ms-val :lambda-list '(m))
(cl:defmethod range_update_timestamp_ms-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:range_update_timestamp_ms-val is deprecated.  Use pulson_ros-msg:range_update_timestamp_ms instead.")
  (range_update_timestamp_ms m))

(cl:ensure-generic-function 'last_heard_timestamp_ms-val :lambda-list '(m))
(cl:defmethod last_heard_timestamp_ms-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:last_heard_timestamp_ms-val is deprecated.  Use pulson_ros-msg:last_heard_timestamp_ms instead.")
  (last_heard_timestamp_ms m))

(cl:ensure-generic-function 'added_to_ndb_timestamp_ms-val :lambda-list '(m))
(cl:defmethod added_to_ndb_timestamp_ms-val ((m <RangeNetNDBEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:added_to_ndb_timestamp_ms-val is deprecated.  Use pulson_ros-msg:added_to_ndb_timestamp_ms instead.")
  (added_to_ndb_timestamp_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RangeNetNDBEntry>) ostream)
  "Serializes a message object of type '<RangeNetNDBEntry>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antenna_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopwatch_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stopwatch_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'range)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_velocity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_velocity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_measurement_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stats_age_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stats_age_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stats_age_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stats_age_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_update_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_update_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'range_update_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'range_update_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_heard_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'last_heard_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'last_heard_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'last_heard_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'added_to_ndb_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'added_to_ndb_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'added_to_ndb_timestamp_ms)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'added_to_ndb_timestamp_ms)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RangeNetNDBEntry>) istream)
  "Deserializes a message object of type '<RangeNetNDBEntry>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'antenna_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopwatch_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stopwatch_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'range)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_velocity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_velocity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_measurement_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flags)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stats_age_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stats_age_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stats_age_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stats_age_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range_update_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'range_update_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'range_update_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'range_update_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_heard_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'last_heard_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'last_heard_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'last_heard_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'added_to_ndb_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'added_to_ndb_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'added_to_ndb_timestamp_ms)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'added_to_ndb_timestamp_ms)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RangeNetNDBEntry>)))
  "Returns string type for a message object of type '<RangeNetNDBEntry>"
  "pulson_ros/RangeNetNDBEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RangeNetNDBEntry)))
  "Returns string type for a message object of type 'RangeNetNDBEntry"
  "pulson_ros/RangeNetNDBEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RangeNetNDBEntry>)))
  "Returns md5sum for a message object of type '<RangeNetNDBEntry>"
  "3ea217cb13c698c1f1001d8eec88468e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RangeNetNDBEntry)))
  "Returns md5sum for a message object of type 'RangeNetNDBEntry"
  "3ea217cb13c698c1f1001d8eec88468e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RangeNetNDBEntry>)))
  "Returns full string definition for message of type '<RangeNetNDBEntry>"
  (cl:format cl:nil "uint32 node_id~%~%uint8 range_status~%uint8 antenna_mode~%~%uint16 stopwatch_time~%~%uint32 range~%uint16 range_error~%~%uint16 range_velocity~%~%uint8 range_measurement_type~%~%uint8 flags~%~%uint32 stats_age_ms~%~%uint32 range_update_timestamp_ms~%uint32 last_heard_timestamp_ms~%uint32 added_to_ndb_timestamp_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RangeNetNDBEntry)))
  "Returns full string definition for message of type 'RangeNetNDBEntry"
  (cl:format cl:nil "uint32 node_id~%~%uint8 range_status~%uint8 antenna_mode~%~%uint16 stopwatch_time~%~%uint32 range~%uint16 range_error~%~%uint16 range_velocity~%~%uint8 range_measurement_type~%~%uint8 flags~%~%uint32 stats_age_ms~%~%uint32 range_update_timestamp_ms~%uint32 last_heard_timestamp_ms~%uint32 added_to_ndb_timestamp_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RangeNetNDBEntry>))
  (cl:+ 0
     4
     1
     1
     2
     4
     2
     2
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RangeNetNDBEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'RangeNetNDBEntry
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':range_status (range_status msg))
    (cl:cons ':antenna_mode (antenna_mode msg))
    (cl:cons ':stopwatch_time (stopwatch_time msg))
    (cl:cons ':range (range msg))
    (cl:cons ':range_error (range_error msg))
    (cl:cons ':range_velocity (range_velocity msg))
    (cl:cons ':range_measurement_type (range_measurement_type msg))
    (cl:cons ':flags (flags msg))
    (cl:cons ':stats_age_ms (stats_age_ms msg))
    (cl:cons ':range_update_timestamp_ms (range_update_timestamp_ms msg))
    (cl:cons ':last_heard_timestamp_ms (last_heard_timestamp_ms msg))
    (cl:cons ':added_to_ndb_timestamp_ms (added_to_ndb_timestamp_ms msg))
))
