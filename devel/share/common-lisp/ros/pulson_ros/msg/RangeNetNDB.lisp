; Auto-generated. Do not edit!


(cl:in-package pulson_ros-msg)


;//! \htmlinclude RangeNetNDB.msg.html

(cl:defclass <RangeNetNDB> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (host_node
    :reader host_node
    :initarg :host_node
    :type cl:integer
    :initform 0)
   (message_id
    :reader message_id
    :initarg :message_id
    :type cl:fixnum
    :initform 0)
   (number_of_neighbor_entries
    :reader number_of_neighbor_entries
    :initarg :number_of_neighbor_entries
    :type cl:fixnum
    :initform 0)
   (database
    :reader database
    :initarg :database
    :type (cl:vector pulson_ros-msg:RangeNetNDBEntry)
   :initform (cl:make-array 0 :element-type 'pulson_ros-msg:RangeNetNDBEntry :initial-element (cl:make-instance 'pulson_ros-msg:RangeNetNDBEntry))))
)

(cl:defclass RangeNetNDB (<RangeNetNDB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RangeNetNDB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RangeNetNDB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pulson_ros-msg:<RangeNetNDB> is deprecated: use pulson_ros-msg:RangeNetNDB instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RangeNetNDB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:header-val is deprecated.  Use pulson_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'host_node-val :lambda-list '(m))
(cl:defmethod host_node-val ((m <RangeNetNDB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:host_node-val is deprecated.  Use pulson_ros-msg:host_node instead.")
  (host_node m))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <RangeNetNDB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:message_id-val is deprecated.  Use pulson_ros-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'number_of_neighbor_entries-val :lambda-list '(m))
(cl:defmethod number_of_neighbor_entries-val ((m <RangeNetNDB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:number_of_neighbor_entries-val is deprecated.  Use pulson_ros-msg:number_of_neighbor_entries instead.")
  (number_of_neighbor_entries m))

(cl:ensure-generic-function 'database-val :lambda-list '(m))
(cl:defmethod database-val ((m <RangeNetNDB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:database-val is deprecated.  Use pulson_ros-msg:database instead.")
  (database m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RangeNetNDB>) ostream)
  "Serializes a message object of type '<RangeNetNDB>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'host_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'host_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'host_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'host_node)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_neighbor_entries)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'database))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'database))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RangeNetNDB>) istream)
  "Deserializes a message object of type '<RangeNetNDB>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'host_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'host_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'host_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'host_node)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'message_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_neighbor_entries)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'database) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'database)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pulson_ros-msg:RangeNetNDBEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RangeNetNDB>)))
  "Returns string type for a message object of type '<RangeNetNDB>"
  "pulson_ros/RangeNetNDB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RangeNetNDB)))
  "Returns string type for a message object of type 'RangeNetNDB"
  "pulson_ros/RangeNetNDB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RangeNetNDB>)))
  "Returns md5sum for a message object of type '<RangeNetNDB>"
  "e383cdc325496d8c4ee7600a42ab6f0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RangeNetNDB)))
  "Returns md5sum for a message object of type 'RangeNetNDB"
  "e383cdc325496d8c4ee7600a42ab6f0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RangeNetNDB>)))
  "Returns full string definition for message of type '<RangeNetNDB>"
  (cl:format cl:nil "Header header~%~%uint32 host_node~%uint16 message_id~%uint8 number_of_neighbor_entries~%~%pulson_ros/RangeNetNDBEntry[] database~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pulson_ros/RangeNetNDBEntry~%uint32 node_id~%~%uint8 range_status~%uint8 antenna_mode~%~%uint16 stopwatch_time~%~%uint32 range~%uint16 range_error~%~%uint16 range_velocity~%~%uint8 range_measurement_type~%~%uint8 flags~%~%uint32 stats_age_ms~%~%uint32 range_update_timestamp_ms~%uint32 last_heard_timestamp_ms~%uint32 added_to_ndb_timestamp_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RangeNetNDB)))
  "Returns full string definition for message of type 'RangeNetNDB"
  (cl:format cl:nil "Header header~%~%uint32 host_node~%uint16 message_id~%uint8 number_of_neighbor_entries~%~%pulson_ros/RangeNetNDBEntry[] database~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pulson_ros/RangeNetNDBEntry~%uint32 node_id~%~%uint8 range_status~%uint8 antenna_mode~%~%uint16 stopwatch_time~%~%uint32 range~%uint16 range_error~%~%uint16 range_velocity~%~%uint8 range_measurement_type~%~%uint8 flags~%~%uint32 stats_age_ms~%~%uint32 range_update_timestamp_ms~%uint32 last_heard_timestamp_ms~%uint32 added_to_ndb_timestamp_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RangeNetNDB>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     2
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'database) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RangeNetNDB>))
  "Converts a ROS message object to a list"
  (cl:list 'RangeNetNDB
    (cl:cons ':header (header msg))
    (cl:cons ':host_node (host_node msg))
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':number_of_neighbor_entries (number_of_neighbor_entries msg))
    (cl:cons ':database (database msg))
))
