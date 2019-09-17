// Auto-generated. Do not edit!

// (in-package pulson_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RangeNetNDBEntry = require('./RangeNetNDBEntry.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RangeNetNDB {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.host_node = null;
      this.message_id = null;
      this.number_of_neighbor_entries = null;
      this.database = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('host_node')) {
        this.host_node = initObj.host_node
      }
      else {
        this.host_node = 0;
      }
      if (initObj.hasOwnProperty('message_id')) {
        this.message_id = initObj.message_id
      }
      else {
        this.message_id = 0;
      }
      if (initObj.hasOwnProperty('number_of_neighbor_entries')) {
        this.number_of_neighbor_entries = initObj.number_of_neighbor_entries
      }
      else {
        this.number_of_neighbor_entries = 0;
      }
      if (initObj.hasOwnProperty('database')) {
        this.database = initObj.database
      }
      else {
        this.database = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RangeNetNDB
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [host_node]
    bufferOffset = _serializer.uint32(obj.host_node, buffer, bufferOffset);
    // Serialize message field [message_id]
    bufferOffset = _serializer.uint16(obj.message_id, buffer, bufferOffset);
    // Serialize message field [number_of_neighbor_entries]
    bufferOffset = _serializer.uint8(obj.number_of_neighbor_entries, buffer, bufferOffset);
    // Serialize message field [database]
    // Serialize the length for message field [database]
    bufferOffset = _serializer.uint32(obj.database.length, buffer, bufferOffset);
    obj.database.forEach((val) => {
      bufferOffset = RangeNetNDBEntry.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RangeNetNDB
    let len;
    let data = new RangeNetNDB(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [host_node]
    data.host_node = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [number_of_neighbor_entries]
    data.number_of_neighbor_entries = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [database]
    // Deserialize array length for message field [database]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.database = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.database[i] = RangeNetNDBEntry.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 34 * object.database.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pulson_ros/RangeNetNDB';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e383cdc325496d8c4ee7600a42ab6f0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RangeNetNDB(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.host_node !== undefined) {
      resolved.host_node = msg.host_node;
    }
    else {
      resolved.host_node = 0
    }

    if (msg.message_id !== undefined) {
      resolved.message_id = msg.message_id;
    }
    else {
      resolved.message_id = 0
    }

    if (msg.number_of_neighbor_entries !== undefined) {
      resolved.number_of_neighbor_entries = msg.number_of_neighbor_entries;
    }
    else {
      resolved.number_of_neighbor_entries = 0
    }

    if (msg.database !== undefined) {
      resolved.database = new Array(msg.database.length);
      for (let i = 0; i < resolved.database.length; ++i) {
        resolved.database[i] = RangeNetNDBEntry.Resolve(msg.database[i]);
      }
    }
    else {
      resolved.database = []
    }

    return resolved;
    }
};

module.exports = RangeNetNDB;
