;; Auto-generated. Do not edit!


(when (boundp 'pulson_ros::RangeNetNDBEntry)
  (if (not (find-package "PULSON_ROS"))
    (make-package "PULSON_ROS"))
  (shadow 'RangeNetNDBEntry (find-package "PULSON_ROS")))
(unless (find-package "PULSON_ROS::RANGENETNDBENTRY")
  (make-package "PULSON_ROS::RANGENETNDBENTRY"))

(in-package "ROS")
;;//! \htmlinclude RangeNetNDBEntry.msg.html


(defclass pulson_ros::RangeNetNDBEntry
  :super ros::object
  :slots (_node_id _range_status _antenna_mode _stopwatch_time _range _range_error _range_velocity _range_measurement_type _flags _stats_age_ms _range_update_timestamp_ms _last_heard_timestamp_ms _added_to_ndb_timestamp_ms ))

(defmethod pulson_ros::RangeNetNDBEntry
  (:init
   (&key
    ((:node_id __node_id) 0)
    ((:range_status __range_status) 0)
    ((:antenna_mode __antenna_mode) 0)
    ((:stopwatch_time __stopwatch_time) 0)
    ((:range __range) 0)
    ((:range_error __range_error) 0)
    ((:range_velocity __range_velocity) 0)
    ((:range_measurement_type __range_measurement_type) 0)
    ((:flags __flags) 0)
    ((:stats_age_ms __stats_age_ms) 0)
    ((:range_update_timestamp_ms __range_update_timestamp_ms) 0)
    ((:last_heard_timestamp_ms __last_heard_timestamp_ms) 0)
    ((:added_to_ndb_timestamp_ms __added_to_ndb_timestamp_ms) 0)
    )
   (send-super :init)
   (setq _node_id (round __node_id))
   (setq _range_status (round __range_status))
   (setq _antenna_mode (round __antenna_mode))
   (setq _stopwatch_time (round __stopwatch_time))
   (setq _range (round __range))
   (setq _range_error (round __range_error))
   (setq _range_velocity (round __range_velocity))
   (setq _range_measurement_type (round __range_measurement_type))
   (setq _flags (round __flags))
   (setq _stats_age_ms (round __stats_age_ms))
   (setq _range_update_timestamp_ms (round __range_update_timestamp_ms))
   (setq _last_heard_timestamp_ms (round __last_heard_timestamp_ms))
   (setq _added_to_ndb_timestamp_ms (round __added_to_ndb_timestamp_ms))
   self)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:range_status
   (&optional __range_status)
   (if __range_status (setq _range_status __range_status)) _range_status)
  (:antenna_mode
   (&optional __antenna_mode)
   (if __antenna_mode (setq _antenna_mode __antenna_mode)) _antenna_mode)
  (:stopwatch_time
   (&optional __stopwatch_time)
   (if __stopwatch_time (setq _stopwatch_time __stopwatch_time)) _stopwatch_time)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:range_error
   (&optional __range_error)
   (if __range_error (setq _range_error __range_error)) _range_error)
  (:range_velocity
   (&optional __range_velocity)
   (if __range_velocity (setq _range_velocity __range_velocity)) _range_velocity)
  (:range_measurement_type
   (&optional __range_measurement_type)
   (if __range_measurement_type (setq _range_measurement_type __range_measurement_type)) _range_measurement_type)
  (:flags
   (&optional __flags)
   (if __flags (setq _flags __flags)) _flags)
  (:stats_age_ms
   (&optional __stats_age_ms)
   (if __stats_age_ms (setq _stats_age_ms __stats_age_ms)) _stats_age_ms)
  (:range_update_timestamp_ms
   (&optional __range_update_timestamp_ms)
   (if __range_update_timestamp_ms (setq _range_update_timestamp_ms __range_update_timestamp_ms)) _range_update_timestamp_ms)
  (:last_heard_timestamp_ms
   (&optional __last_heard_timestamp_ms)
   (if __last_heard_timestamp_ms (setq _last_heard_timestamp_ms __last_heard_timestamp_ms)) _last_heard_timestamp_ms)
  (:added_to_ndb_timestamp_ms
   (&optional __added_to_ndb_timestamp_ms)
   (if __added_to_ndb_timestamp_ms (setq _added_to_ndb_timestamp_ms __added_to_ndb_timestamp_ms)) _added_to_ndb_timestamp_ms)
  (:serialization-length
   ()
   (+
    ;; uint32 _node_id
    4
    ;; uint8 _range_status
    1
    ;; uint8 _antenna_mode
    1
    ;; uint16 _stopwatch_time
    2
    ;; uint32 _range
    4
    ;; uint16 _range_error
    2
    ;; uint16 _range_velocity
    2
    ;; uint8 _range_measurement_type
    1
    ;; uint8 _flags
    1
    ;; uint32 _stats_age_ms
    4
    ;; uint32 _range_update_timestamp_ms
    4
    ;; uint32 _last_heard_timestamp_ms
    4
    ;; uint32 _added_to_ndb_timestamp_ms
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _node_id
       (write-long _node_id s)
     ;; uint8 _range_status
       (write-byte _range_status s)
     ;; uint8 _antenna_mode
       (write-byte _antenna_mode s)
     ;; uint16 _stopwatch_time
       (write-word _stopwatch_time s)
     ;; uint32 _range
       (write-long _range s)
     ;; uint16 _range_error
       (write-word _range_error s)
     ;; uint16 _range_velocity
       (write-word _range_velocity s)
     ;; uint8 _range_measurement_type
       (write-byte _range_measurement_type s)
     ;; uint8 _flags
       (write-byte _flags s)
     ;; uint32 _stats_age_ms
       (write-long _stats_age_ms s)
     ;; uint32 _range_update_timestamp_ms
       (write-long _range_update_timestamp_ms s)
     ;; uint32 _last_heard_timestamp_ms
       (write-long _last_heard_timestamp_ms s)
     ;; uint32 _added_to_ndb_timestamp_ms
       (write-long _added_to_ndb_timestamp_ms s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _range_status
     (setq _range_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _antenna_mode
     (setq _antenna_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _stopwatch_time
     (setq _stopwatch_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _range
     (setq _range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _range_error
     (setq _range_error (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _range_velocity
     (setq _range_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _range_measurement_type
     (setq _range_measurement_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _flags
     (setq _flags (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _stats_age_ms
     (setq _stats_age_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _range_update_timestamp_ms
     (setq _range_update_timestamp_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _last_heard_timestamp_ms
     (setq _last_heard_timestamp_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _added_to_ndb_timestamp_ms
     (setq _added_to_ndb_timestamp_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pulson_ros::RangeNetNDBEntry :md5sum-) "3ea217cb13c698c1f1001d8eec88468e")
(setf (get pulson_ros::RangeNetNDBEntry :datatype-) "pulson_ros/RangeNetNDBEntry")
(setf (get pulson_ros::RangeNetNDBEntry :definition-)
      "uint32 node_id

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



(provide :pulson_ros/RangeNetNDBEntry "3ea217cb13c698c1f1001d8eec88468e")


