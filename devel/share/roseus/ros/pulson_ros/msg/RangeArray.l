;; Auto-generated. Do not edit!


(when (boundp 'pulson_ros::RangeArray)
  (if (not (find-package "PULSON_ROS"))
    (make-package "PULSON_ROS"))
  (shadow 'RangeArray (find-package "PULSON_ROS")))
(unless (find-package "PULSON_ROS::RANGEARRAY")
  (make-package "PULSON_ROS::RANGEARRAY"))

(in-package "ROS")
;;//! \htmlinclude RangeArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pulson_ros::RangeArray
  :super ros::object
  :slots (_header _ranges ))

(defmethod pulson_ros::RangeArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ranges __ranges) (let (r) (dotimes (i 0) (push (instance pulson_ros::RangeMeasurement :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ranges __ranges)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ranges
   (&rest __ranges)
   (if (keywordp (car __ranges))
       (send* _ranges __ranges)
     (progn
       (if __ranges (setq _ranges (car __ranges)))
       _ranges)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pulson_ros/RangeMeasurement[] _ranges
    (apply #'+ (send-all _ranges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pulson_ros/RangeMeasurement[] _ranges
     (write-long (length _ranges) s)
     (dolist (elem _ranges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pulson_ros/RangeMeasurement[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (let (r) (dotimes (i n) (push (instance pulson_ros::RangeMeasurement :init) r)) r))
     (dolist (elem- _ranges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pulson_ros::RangeArray :md5sum-) "23e3f5e6eddc2c1c710e256861e37d57")
(setf (get pulson_ros::RangeArray :datatype-) "pulson_ros/RangeArray")
(setf (get pulson_ros::RangeArray :definition-)
      "Header header
pulson_ros/RangeMeasurement[] ranges

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

================================================================================
MSG: pulson_ros/RangeMeasurement
Header header

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

")



(provide :pulson_ros/RangeArray "23e3f5e6eddc2c1c710e256861e37d57")


