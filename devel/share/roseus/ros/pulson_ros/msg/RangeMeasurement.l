;; Auto-generated. Do not edit!


(when (boundp 'pulson_ros::RangeMeasurement)
  (if (not (find-package "PULSON_ROS"))
    (make-package "PULSON_ROS"))
  (shadow 'RangeMeasurement (find-package "PULSON_ROS")))
(unless (find-package "PULSON_ROS::RANGEMEASUREMENT")
  (make-package "PULSON_ROS::RANGEMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude RangeMeasurement.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pulson_ros::RangeMeasurement
  :super ros::object
  :slots (_header _message_id _responder_id _range_status _antenna_mode _stopwatch_time _precision_range _coarse_range _filtered_range _precision_range_error _coarse_range_error _filtered_range_error _filtered_velocity _filtered_velocity_error _timestamp ))

(defmethod pulson_ros::RangeMeasurement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:message_id __message_id) 0)
    ((:responder_id __responder_id) 0)
    ((:range_status __range_status) 0)
    ((:antenna_mode __antenna_mode) 0)
    ((:stopwatch_time __stopwatch_time) 0)
    ((:precision_range __precision_range) 0)
    ((:coarse_range __coarse_range) 0)
    ((:filtered_range __filtered_range) 0)
    ((:precision_range_error __precision_range_error) 0)
    ((:coarse_range_error __coarse_range_error) 0)
    ((:filtered_range_error __filtered_range_error) 0)
    ((:filtered_velocity __filtered_velocity) 0)
    ((:filtered_velocity_error __filtered_velocity_error) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _message_id (round __message_id))
   (setq _responder_id (round __responder_id))
   (setq _range_status (round __range_status))
   (setq _antenna_mode (round __antenna_mode))
   (setq _stopwatch_time (round __stopwatch_time))
   (setq _precision_range (round __precision_range))
   (setq _coarse_range (round __coarse_range))
   (setq _filtered_range (round __filtered_range))
   (setq _precision_range_error (round __precision_range_error))
   (setq _coarse_range_error (round __coarse_range_error))
   (setq _filtered_range_error (round __filtered_range_error))
   (setq _filtered_velocity (round __filtered_velocity))
   (setq _filtered_velocity_error (round __filtered_velocity_error))
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
  (:responder_id
   (&optional __responder_id)
   (if __responder_id (setq _responder_id __responder_id)) _responder_id)
  (:range_status
   (&optional __range_status)
   (if __range_status (setq _range_status __range_status)) _range_status)
  (:antenna_mode
   (&optional __antenna_mode)
   (if __antenna_mode (setq _antenna_mode __antenna_mode)) _antenna_mode)
  (:stopwatch_time
   (&optional __stopwatch_time)
   (if __stopwatch_time (setq _stopwatch_time __stopwatch_time)) _stopwatch_time)
  (:precision_range
   (&optional __precision_range)
   (if __precision_range (setq _precision_range __precision_range)) _precision_range)
  (:coarse_range
   (&optional __coarse_range)
   (if __coarse_range (setq _coarse_range __coarse_range)) _coarse_range)
  (:filtered_range
   (&optional __filtered_range)
   (if __filtered_range (setq _filtered_range __filtered_range)) _filtered_range)
  (:precision_range_error
   (&optional __precision_range_error)
   (if __precision_range_error (setq _precision_range_error __precision_range_error)) _precision_range_error)
  (:coarse_range_error
   (&optional __coarse_range_error)
   (if __coarse_range_error (setq _coarse_range_error __coarse_range_error)) _coarse_range_error)
  (:filtered_range_error
   (&optional __filtered_range_error)
   (if __filtered_range_error (setq _filtered_range_error __filtered_range_error)) _filtered_range_error)
  (:filtered_velocity
   (&optional __filtered_velocity)
   (if __filtered_velocity (setq _filtered_velocity __filtered_velocity)) _filtered_velocity)
  (:filtered_velocity_error
   (&optional __filtered_velocity_error)
   (if __filtered_velocity_error (setq _filtered_velocity_error __filtered_velocity_error)) _filtered_velocity_error)
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
    ;; uint32 _responder_id
    4
    ;; uint8 _range_status
    1
    ;; uint8 _antenna_mode
    1
    ;; uint16 _stopwatch_time
    2
    ;; uint32 _precision_range
    4
    ;; uint32 _coarse_range
    4
    ;; uint32 _filtered_range
    4
    ;; uint16 _precision_range_error
    2
    ;; uint16 _coarse_range_error
    2
    ;; uint16 _filtered_range_error
    2
    ;; int16 _filtered_velocity
    2
    ;; uint16 _filtered_velocity_error
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
     ;; uint32 _responder_id
       (write-long _responder_id s)
     ;; uint8 _range_status
       (write-byte _range_status s)
     ;; uint8 _antenna_mode
       (write-byte _antenna_mode s)
     ;; uint16 _stopwatch_time
       (write-word _stopwatch_time s)
     ;; uint32 _precision_range
       (write-long _precision_range s)
     ;; uint32 _coarse_range
       (write-long _coarse_range s)
     ;; uint32 _filtered_range
       (write-long _filtered_range s)
     ;; uint16 _precision_range_error
       (write-word _precision_range_error s)
     ;; uint16 _coarse_range_error
       (write-word _coarse_range_error s)
     ;; uint16 _filtered_range_error
       (write-word _filtered_range_error s)
     ;; int16 _filtered_velocity
       (write-word _filtered_velocity s)
     ;; uint16 _filtered_velocity_error
       (write-word _filtered_velocity_error s)
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
   ;; uint32 _responder_id
     (setq _responder_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _range_status
     (setq _range_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _antenna_mode
     (setq _antenna_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _stopwatch_time
     (setq _stopwatch_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _precision_range
     (setq _precision_range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _coarse_range
     (setq _coarse_range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _filtered_range
     (setq _filtered_range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _precision_range_error
     (setq _precision_range_error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _coarse_range_error
     (setq _coarse_range_error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _filtered_range_error
     (setq _filtered_range_error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _filtered_velocity
     (setq _filtered_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _filtered_velocity_error
     (setq _filtered_velocity_error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pulson_ros::RangeMeasurement :md5sum-) "6487848ea565e546d9907169ef6fc53e")
(setf (get pulson_ros::RangeMeasurement :datatype-) "pulson_ros/RangeMeasurement")
(setf (get pulson_ros::RangeMeasurement :definition-)
      "Header header

uint16 message_id
uint32 responder_id

uint8 range_status
uint8 antenna_mode

uint16 stopwatch_time

uint32 precision_range
uint32 coarse_range
uint32 filtered_range

uint16 precision_range_error
uint16 coarse_range_error
uint16 filtered_range_error

int16 filtered_velocity
uint16 filtered_velocity_error

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



(provide :pulson_ros/RangeMeasurement "6487848ea565e546d9907169ef6fc53e")


