; Auto-generated. Do not edit!


(cl:in-package pulson_ros-msg)


;//! \htmlinclude RangeArray.msg.html

(cl:defclass <RangeArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector pulson_ros-msg:RangeMeasurement)
   :initform (cl:make-array 0 :element-type 'pulson_ros-msg:RangeMeasurement :initial-element (cl:make-instance 'pulson_ros-msg:RangeMeasurement))))
)

(cl:defclass RangeArray (<RangeArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RangeArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RangeArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pulson_ros-msg:<RangeArray> is deprecated: use pulson_ros-msg:RangeArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RangeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:header-val is deprecated.  Use pulson_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <RangeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pulson_ros-msg:ranges-val is deprecated.  Use pulson_ros-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RangeArray>) ostream)
  "Serializes a message object of type '<RangeArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RangeArray>) istream)
  "Deserializes a message object of type '<RangeArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pulson_ros-msg:RangeMeasurement))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RangeArray>)))
  "Returns string type for a message object of type '<RangeArray>"
  "pulson_ros/RangeArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RangeArray)))
  "Returns string type for a message object of type 'RangeArray"
  "pulson_ros/RangeArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RangeArray>)))
  "Returns md5sum for a message object of type '<RangeArray>"
  "23e3f5e6eddc2c1c710e256861e37d57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RangeArray)))
  "Returns md5sum for a message object of type 'RangeArray"
  "23e3f5e6eddc2c1c710e256861e37d57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RangeArray>)))
  "Returns full string definition for message of type '<RangeArray>"
  (cl:format cl:nil "Header header~%pulson_ros/RangeMeasurement[] ranges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pulson_ros/RangeMeasurement~%Header header~%~%uint16 message_id~%uint32 responder_id~%~%uint8 range_status~%uint8 antenna_mode~%~%uint16 stopwatch_time~%~%uint32 precision_range~%uint32 coarse_range~%uint32 filtered_range~%~%uint16 precision_range_error~%uint16 coarse_range_error~%uint16 filtered_range_error~%~%int16 filtered_velocity~%uint16 filtered_velocity_error~%~%uint32 timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RangeArray)))
  "Returns full string definition for message of type 'RangeArray"
  (cl:format cl:nil "Header header~%pulson_ros/RangeMeasurement[] ranges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pulson_ros/RangeMeasurement~%Header header~%~%uint16 message_id~%uint32 responder_id~%~%uint8 range_status~%uint8 antenna_mode~%~%uint16 stopwatch_time~%~%uint32 precision_range~%uint32 coarse_range~%uint32 filtered_range~%~%uint16 precision_range_error~%uint16 coarse_range_error~%uint16 filtered_range_error~%~%int16 filtered_velocity~%uint16 filtered_velocity_error~%~%uint32 timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RangeArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RangeArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RangeArray
    (cl:cons ':header (header msg))
    (cl:cons ':ranges (ranges msg))
))
