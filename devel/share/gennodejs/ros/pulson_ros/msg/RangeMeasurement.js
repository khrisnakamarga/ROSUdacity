// Auto-generated. Do not edit!

// (in-package pulson_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RangeMeasurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.message_id = null;
      this.responder_id = null;
      this.range_status = null;
      this.antenna_mode = null;
      this.stopwatch_time = null;
      this.precision_range = null;
      this.coarse_range = null;
      this.filtered_range = null;
      this.precision_range_error = null;
      this.coarse_range_error = null;
      this.filtered_range_error = null;
      this.filtered_velocity = null;
      this.filtered_velocity_error = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('message_id')) {
        this.message_id = initObj.message_id
      }
      else {
        this.message_id = 0;
      }
      if (initObj.hasOwnProperty('responder_id')) {
        this.responder_id = initObj.responder_id
      }
      else {
        this.responder_id = 0;
      }
      if (initObj.hasOwnProperty('range_status')) {
        this.range_status = initObj.range_status
      }
      else {
        this.range_status = 0;
      }
      if (initObj.hasOwnProperty('antenna_mode')) {
        this.antenna_mode = initObj.antenna_mode
      }
      else {
        this.antenna_mode = 0;
      }
      if (initObj.hasOwnProperty('stopwatch_time')) {
        this.stopwatch_time = initObj.stopwatch_time
      }
      else {
        this.stopwatch_time = 0;
      }
      if (initObj.hasOwnProperty('precision_range')) {
        this.precision_range = initObj.precision_range
      }
      else {
        this.precision_range = 0;
      }
      if (initObj.hasOwnProperty('coarse_range')) {
        this.coarse_range = initObj.coarse_range
      }
      else {
        this.coarse_range = 0;
      }
      if (initObj.hasOwnProperty('filtered_range')) {
        this.filtered_range = initObj.filtered_range
      }
      else {
        this.filtered_range = 0;
      }
      if (initObj.hasOwnProperty('precision_range_error')) {
        this.precision_range_error = initObj.precision_range_error
      }
      else {
        this.precision_range_error = 0;
      }
      if (initObj.hasOwnProperty('coarse_range_error')) {
        this.coarse_range_error = initObj.coarse_range_error
      }
      else {
        this.coarse_range_error = 0;
      }
      if (initObj.hasOwnProperty('filtered_range_error')) {
        this.filtered_range_error = initObj.filtered_range_error
      }
      else {
        this.filtered_range_error = 0;
      }
      if (initObj.hasOwnProperty('filtered_velocity')) {
        this.filtered_velocity = initObj.filtered_velocity
      }
      else {
        this.filtered_velocity = 0;
      }
      if (initObj.hasOwnProperty('filtered_velocity_error')) {
        this.filtered_velocity_error = initObj.filtered_velocity_error
      }
      else {
        this.filtered_velocity_error = 0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RangeMeasurement
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [message_id]
    bufferOffset = _serializer.uint16(obj.message_id, buffer, bufferOffset);
    // Serialize message field [responder_id]
    bufferOffset = _serializer.uint32(obj.responder_id, buffer, bufferOffset);
    // Serialize message field [range_status]
    bufferOffset = _serializer.uint8(obj.range_status, buffer, bufferOffset);
    // Serialize message field [antenna_mode]
    bufferOffset = _serializer.uint8(obj.antenna_mode, buffer, bufferOffset);
    // Serialize message field [stopwatch_time]
    bufferOffset = _serializer.uint16(obj.stopwatch_time, buffer, bufferOffset);
    // Serialize message field [precision_range]
    bufferOffset = _serializer.uint32(obj.precision_range, buffer, bufferOffset);
    // Serialize message field [coarse_range]
    bufferOffset = _serializer.uint32(obj.coarse_range, buffer, bufferOffset);
    // Serialize message field [filtered_range]
    bufferOffset = _serializer.uint32(obj.filtered_range, buffer, bufferOffset);
    // Serialize message field [precision_range_error]
    bufferOffset = _serializer.uint16(obj.precision_range_error, buffer, bufferOffset);
    // Serialize message field [coarse_range_error]
    bufferOffset = _serializer.uint16(obj.coarse_range_error, buffer, bufferOffset);
    // Serialize message field [filtered_range_error]
    bufferOffset = _serializer.uint16(obj.filtered_range_error, buffer, bufferOffset);
    // Serialize message field [filtered_velocity]
    bufferOffset = _serializer.int16(obj.filtered_velocity, buffer, bufferOffset);
    // Serialize message field [filtered_velocity_error]
    bufferOffset = _serializer.uint16(obj.filtered_velocity_error, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint32(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RangeMeasurement
    let len;
    let data = new RangeMeasurement(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [responder_id]
    data.responder_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [range_status]
    data.range_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [antenna_mode]
    data.antenna_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stopwatch_time]
    data.stopwatch_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [precision_range]
    data.precision_range = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [coarse_range]
    data.coarse_range = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [filtered_range]
    data.filtered_range = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [precision_range_error]
    data.precision_range_error = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [coarse_range_error]
    data.coarse_range_error = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [filtered_range_error]
    data.filtered_range_error = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [filtered_velocity]
    data.filtered_velocity = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [filtered_velocity_error]
    data.filtered_velocity_error = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pulson_ros/RangeMeasurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6487848ea565e546d9907169ef6fc53e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RangeMeasurement(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.message_id !== undefined) {
      resolved.message_id = msg.message_id;
    }
    else {
      resolved.message_id = 0
    }

    if (msg.responder_id !== undefined) {
      resolved.responder_id = msg.responder_id;
    }
    else {
      resolved.responder_id = 0
    }

    if (msg.range_status !== undefined) {
      resolved.range_status = msg.range_status;
    }
    else {
      resolved.range_status = 0
    }

    if (msg.antenna_mode !== undefined) {
      resolved.antenna_mode = msg.antenna_mode;
    }
    else {
      resolved.antenna_mode = 0
    }

    if (msg.stopwatch_time !== undefined) {
      resolved.stopwatch_time = msg.stopwatch_time;
    }
    else {
      resolved.stopwatch_time = 0
    }

    if (msg.precision_range !== undefined) {
      resolved.precision_range = msg.precision_range;
    }
    else {
      resolved.precision_range = 0
    }

    if (msg.coarse_range !== undefined) {
      resolved.coarse_range = msg.coarse_range;
    }
    else {
      resolved.coarse_range = 0
    }

    if (msg.filtered_range !== undefined) {
      resolved.filtered_range = msg.filtered_range;
    }
    else {
      resolved.filtered_range = 0
    }

    if (msg.precision_range_error !== undefined) {
      resolved.precision_range_error = msg.precision_range_error;
    }
    else {
      resolved.precision_range_error = 0
    }

    if (msg.coarse_range_error !== undefined) {
      resolved.coarse_range_error = msg.coarse_range_error;
    }
    else {
      resolved.coarse_range_error = 0
    }

    if (msg.filtered_range_error !== undefined) {
      resolved.filtered_range_error = msg.filtered_range_error;
    }
    else {
      resolved.filtered_range_error = 0
    }

    if (msg.filtered_velocity !== undefined) {
      resolved.filtered_velocity = msg.filtered_velocity;
    }
    else {
      resolved.filtered_velocity = 0
    }

    if (msg.filtered_velocity_error !== undefined) {
      resolved.filtered_velocity_error = msg.filtered_velocity_error;
    }
    else {
      resolved.filtered_velocity_error = 0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    return resolved;
    }
};

module.exports = RangeMeasurement;
