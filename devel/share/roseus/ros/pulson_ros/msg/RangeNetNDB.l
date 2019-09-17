;; Auto-generated. Do not edit!


(when (boundp 'pulson_ros::RangeNetNDB)
  (if (not (find-package "PULSON_ROS"))
    (make-package "PULSON_ROS"))
  (shadow 'RangeNetNDB (find-package "PULSON_ROS")))
(unless (find-package "PULSON_ROS::RANGENETNDB")
  (make-package "PULSON_ROS::RANGENETNDB"))

(in-package "ROS")
;;//! \htmlinclude RangeNetNDB.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pulson_ros::RangeNetNDB
  :super ros::object
  :slots (_header _host_node _message_id _number_of_neighbor_entries _database ))

(defmethod pulson_ros::RangeNetNDB
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:host_node __host_node) 0)
    ((:message_id __message_id) 0)
    ((:number_of_neighbor_entries __number_of_neighbor_entries) 0)
    ((:database __database) (let (r) (dotimes (i 0) (push (instance pulson_ros::RangeNetNDBEntry :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _host_node (round __host_node))
   (setq _message_id (round __message_id))
   (setq _number_of_neighbor_entries (round __number_of_neighbor_entries))
   (setq _database __database)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:host_node
   (&optional __host_node)
   (if __host_node (setq _host_node __host_node)) _host_node)
  (:message_id
   (&optional __message_id)
   (if __message_id (setq _message_id __message_id)) _message_id)
  (:number_of_neighbor_entries
   (&optional __number_of_neighbor_entries)
   (if __number_of_neighbor_entries (setq _number_of_neighbor_entries __number_of_neighbor_entries)) _number_of_neighbor_entries)
  (:database
   (&rest __database)
   (if (keywordp (car __database))
       (send* _database __database)
     (progn
       (if __database (setq _database (car __database)))
       _database)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _host_node
    4
    ;; uint16 _message_id
    2
    ;; uint8 _number_of_neighbor_entries
    1
    ;; pulson_ros/RangeNetNDBEntry[] _database
    (apply #'+ (send-all _database :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _host_node
       (write-long _host_node s)
     ;; uint16 _message_id
       (write-word _message_id s)
     ;; uint8 _number_of_neighbor_entries
       (write-byte _number_of_neighbor_entries s)
     ;; pulson_ros/RangeNetNDBEntry[] _database
     (write-long (length _database) s)
     (dolist (elem _database)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _host_node
     (setq _host_node (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _message_id
     (setq _message_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _number_of_neighbor_entries
     (setq _number_of_neighbor_entries (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; pulson_ros/RangeNetNDBEntry[] _database
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _database (let (r) (dotimes (i n) (push (instance pulson_ros::RangeNetNDBEntry :init) r)) r))
     (dolist (elem- _database)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pulson_ros::RangeNetNDB :md5sum-) "e383cdc325496d8c4ee7600a42ab6f0e")
(setf (get pulson_ros::RangeNetNDB :datatype-) "pulson_ros/RangeNetNDB")
(setf (get pulson_ros::RangeNetNDB :definition-)
      "Header header

uint32 host_node
uint16 message_id
uint8 number_of_neighbor_entries

pulson_ros/RangeNetNDBEntry[] database

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
MSG: pulson_ros/RangeNetNDBEntry
uint32 node_id

uint8 range_status
uint8 antenna_mode

uint16 stopwatch_time

uint32 range
uint16 range_error

uint16 range_velocity

uint8 range_measurement_type

uint8 flags

uint32 stats_age_ms

uint32 range_update_timestamp_ms
uint32 last_heard_timestamp_ms
uint32 added_to_ndb_timestamp_ms

")



(provide :pulson_ros/RangeNetNDB "e383cdc325496d8c4ee7600a42ab6f0e")


