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

class EchoedRangeMeasurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.message_id = null;
      this.requester_id = null;
      this.responder_id = null;
      this.precision_range = null;
      this.precision_range_error = null;
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
      if (initObj.hasOwnProperty('requester_id')) {
        this.requester_id = initObj.requester_id
      }
      else {
        this.requester_id = 0;
      }
      if (initObj.hasOwnProperty('responder_id')) {
        this.responder_id = initObj.responder_id
      }
      else {
        this.responder_id = 0;
      }
      if (initObj.hasOwnProperty('precision_range')) {
        this.precision_range = initObj.precision_range
      }
      else {
        this.precision_range = 0;
      }
      if (initObj.hasOwnProperty('precision_range_error')) {
        this.precision_range_error = initObj.precision_range_error
      }
      else {
        this.precision_range_error = 0;
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
    // Serializes a message object of type EchoedRangeMeasurement
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [message_id]
    bufferOffset = _serializer.uint16(obj.message_id, buffer, bufferOffset);
    // Serialize message field [requester_id]
    bufferOffset = _serializer.uint32(obj.requester_id, buffer, bufferOffset);
    // Serialize message field [responder_id]
    bufferOffset = _serializer.uint32(obj.responder_id, buffer, bufferOffset);
    // Serialize message field [precision_range]
    bufferOffset = _serializer.uint32(obj.precision_range, buffer, bufferOffset);
    // Serialize message field [precision_range_error]
    bufferOffset = _serializer.uint16(obj.precision_range_error, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint32(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EchoedRangeMeasurement
    let len;
    let data = new EchoedRangeMeasurement(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [requester_id]
    data.requester_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [responder_id]
    data.responder_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [precision_range]
    data.precision_range = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [precision_range_error]
    data.precision_range_error = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pulson_ros/EchoedRangeMeasurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e6826463afd1ec35691a83318a58e78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EchoedRangeMeasurement(null);
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

    if (msg.requester_id !== undefined) {
      resolved.requester_id = msg.requester_id;
    }
    else {
      resolved.requester_id = 0
    }

    if (msg.responder_id !== undefined) {
      resolved.responder_id = msg.responder_id;
    }
    else {
      resolved.responder_id = 0
    }

    if (msg.precision_range !== undefined) {
      resolved.precision_range = msg.precision_range;
    }
    else {
      resolved.precision_range = 0
    }

    if (msg.precision_range_error !== undefined) {
      resolved.precision_range_error = msg.precision_range_error;
    }
    else {
      resolved.precision_range_error = 0
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

module.exports = EchoedRangeMeasurement;
