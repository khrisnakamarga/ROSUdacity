// Auto-generated. Do not edit!

// (in-package pulson_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RangeMeasurement = require('./RangeMeasurement.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RangeArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ranges = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RangeArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ranges]
    // Serialize the length for message field [ranges]
    bufferOffset = _serializer.uint32(obj.ranges.length, buffer, bufferOffset);
    obj.ranges.forEach((val) => {
      bufferOffset = RangeMeasurement.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RangeArray
    let len;
    let data = new RangeArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ranges]
    // Deserialize array length for message field [ranges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ranges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ranges[i] = RangeMeasurement.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.ranges.forEach((val) => {
      length += RangeMeasurement.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pulson_ros/RangeArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23e3f5e6eddc2c1c710e256861e37d57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RangeArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = new Array(msg.ranges.length);
      for (let i = 0; i < resolved.ranges.length; ++i) {
        resolved.ranges[i] = RangeMeasurement.Resolve(msg.ranges[i]);
      }
    }
    else {
      resolved.ranges = []
    }

    return resolved;
    }
};

module.exports = RangeArray;
