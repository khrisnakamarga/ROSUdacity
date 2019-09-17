;; Auto-generated. Do not edit!


(when (boundp 'pulson_ros::EchoedRangeMeasurement)
  (if (not (find-package "PULSON_ROS"))
    (make-package "PULSON_ROS"))
  (shadow 'EchoedRangeMeasurement (find-package "PULSON_ROS")))
(unless (find-package "PULSON_ROS::ECHOEDRANGEMEASUREMENT")
  (make-package "PULSON_ROS::ECHOEDRANGEMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude EchoedRangeMeasurement.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pulson_ros::EchoedRangeMeasurement
  :super ros::object
  :slots (_header _message_id _requester_id _responder_id _precision_range _precision_range_error _timestamp ))

(defmethod pulson_ros::EchoedRangeMeasurement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:message_id __message_id) 0)
    ((:requester_id __requester_id) 0)
    ((:responder_id __responder_id) 0)
    ((:precision_range __precision_range) 0)
    ((:precision_range_error __precision_range_error) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _message_id (round __message_id))
   (setq _requester_id (round __requester_id))
   (setq _responder_id (round __responder_id))
   (setq _precision_range (round __precision_range))
   (setq _precision_range_error (round __precision_range_error))
   (setq _timestamp (round __timestamp))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:message_id
   (&optional __message_id)
   (if __message_id (setq _message_id __message_id)) _message_id)
  (:requester_id
   (&optional __requester_id)
   (if __requester_id (setq _requester_id __requester_id)) _requester_id)
  (:responder_id
   (&optional __responder_id)
   (if __responder_id (setq _responder_id __responder_id)) _responder_id)
  (:precision_range
   (&optional __precision_range)
   (if __precision_range (setq _precision_range __precision_range)) _precision_range)
  (:precision_range_error
   (&optional __precision_range_error)
   (if __precision_range_error (setq _precision_range_error __precision_range_error)) _precision_range_error)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _message_id
    2
    ;; uint32 _requester_id
    4
    ;; uint32 _responder_id
    4
    ;; uint32 _precision_range
    4
    ;; uint16 _precision_range_error
    2
    ;; uint32 _timestamp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _message_id
       (write-word _message_id s)
     ;; uint32 _requester_id
       (write-long _requester_id s)
     ;; uint32 _responder_id
       (write-long _responder_id s)
     ;; uint32 _precision_range
       (write-long _precision_range s)
     ;; uint16 _precision_range_error
       (write-word _precision_range_error s)
     ;; uint32 _timestamp
       (write-long _timestamp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _message_id
     (setq _message_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _requester_id
     (setq _requester_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _responder_id
     (setq _responder_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _precision_range
     (setq _precision_range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _precision_range_error
     (setq _precision_range_error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pulson_ros::EchoedRangeMeasurement :md5sum-) "8e6826463afd1ec35691a83318a58e78")
(setf (get pulson_ros::EchoedRangeMeasurement :datatype-) "pulson_ros/EchoedRangeMeasurement")
(setf (get pulson_ros::EchoedRangeMeasurement :definition-)
      "Header header

uint16 message_id

uint32 requester_id
uint32 responder_id

uint32 precision_range
uint16 precision_range_error

uint32 timestamp

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :pulson_ros/EchoedRangeMeasurement "8e6826463afd1ec35691a83318a58e78")


