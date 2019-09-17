// Auto-generated. Do not edit!

// (in-package pulson_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RangeNetNDBEntry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_id = null;
      this.range_status = null;
      this.antenna_mode = null;
      this.stopwatch_time = null;
      this.range = null;
      this.range_error = null;
      this.range_velocity = null;
      this.range_measurement_type = null;
      this.flags = null;
      this.stats_age_ms = null;
      this.range_update_timestamp_ms = null;
      this.last_heard_timestamp_ms = null;
      this.added_to_ndb_timestamp_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = 0;
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
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0;
      }
      if (initObj.hasOwnProperty('range_error')) {
        this.range_error = initObj.range_error
      }
      else {
        this.range_error = 0;
      }
      if (initObj.hasOwnProperty('range_velocity')) {
        this.range_velocity = initObj.range_velocity
      }
      else {
        this.range_velocity = 0;
      }
      if (initObj.hasOwnProperty('range_measurement_type')) {
        this.range_measurement_type = initObj.range_measurement_type
      }
      else {
        this.range_measurement_type = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
      if (initObj.hasOwnProperty('stats_age_ms')) {
        this.stats_age_ms = initObj.stats_age_ms
      }
      else {
        this.stats_age_ms = 0;
      }
      if (initObj.hasOwnProperty('range_update_timestamp_ms')) {
        this.range_update_timestamp_ms = initObj.range_update_timestamp_ms
      }
      else {
        this.range_update_timestamp_ms = 0;
      }
      if (initObj.hasOwnProperty('last_heard_timestamp_ms')) {
        this.last_heard_timestamp_ms = initObj.last_heard_timestamp_ms
      }
      else {
        this.last_heard_timestamp_ms = 0;
      }
      if (initObj.hasOwnProperty('added_to_ndb_timestamp_ms')) {
        this.added_to_ndb_timestamp_ms = initObj.added_to_ndb_timestamp_ms
      }
      else {
        this.added_to_ndb_timestamp_ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RangeNetNDBEntry
    // Serialize message field [node_id]
    bufferOffset = _serializer.uint32(obj.node_id, buffer, bufferOffset);
    // Serialize message field [range_status]
    bufferOffset = _serializer.uint8(obj.range_status, buffer, bufferOffset);
    // Serialize message field [antenna_mode]
    bufferOffset = _serializer.uint8(obj.antenna_mode, buffer, bufferOffset);
    // Serialize message field [stopwatch_time]
    bufferOffset = _serializer.uint16(obj.stopwatch_time, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.uint32(obj.range, buffer, bufferOffset);
    // Serialize message field [range_error]
    bufferOffset = _serializer.uint16(obj.range_error, buffer, bufferOffset);
    // Serialize message field [range_velocity]
    bufferOffset = _serializer.uint16(obj.range_velocity, buffer, bufferOffset);
    // Serialize message field [range_measurement_type]
    bufferOffset = _serializer.uint8(obj.range_measurement_type, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    // Serialize message field [stats_age_ms]
    bufferOffset = _serializer.uint32(obj.stats_age_ms, buffer, bufferOffset);
    // Serialize message field [range_update_timestamp_ms]
    bufferOffset = _serializer.uint32(obj.range_update_timestamp_ms, buffer, bufferOffset);
    // Serialize message field [last_heard_timestamp_ms]
    bufferOffset = _serializer.uint32(obj.last_heard_timestamp_ms, buffer, bufferOffset);
    // Serialize message field [added_to_ndb_timestamp_ms]
    bufferOffset = _serializer.uint32(obj.added_to_ndb_timestamp_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RangeNetNDBEntry
    let len;
    let data = new RangeNetNDBEntry(null);
    // Deserialize message field [node_id]
    data.node_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [range_status]
    data.range_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [antenna_mode]
    data.antenna_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stopwatch_time]
    data.stopwatch_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [range_error]
    data.range_error = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range_velocity]
    data.range_velocity = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range_measurement_type]
    data.range_measurement_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stats_age_ms]
    data.stats_age_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [range_update_timestamp_ms]
    data.range_update_timestamp_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [last_heard_timestamp_ms]
    data.last_heard_timestamp_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [added_to_ndb_timestamp_ms]
    data.added_to_ndb_timestamp_ms = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pulson_ros/RangeNetNDBEntry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ea217cb13c698c1f1001d8eec88468e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RangeNetNDBEntry(null);
    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = 0
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

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0
    }

    if (msg.range_error !== undefined) {
      resolved.range_error = msg.range_error;
    }
    else {
      resolved.range_error = 0
    }

    if (msg.range_velocity !== undefined) {
      resolved.range_velocity = msg.range_velocity;
    }
    else {
      resolved.range_velocity = 0
    }

    if (msg.range_measurement_type !== undefined) {
      resolved.range_measurement_type = msg.range_measurement_type;
    }
    else {
      resolved.range_measurement_type = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    if (msg.stats_age_ms !== undefined) {
      resolved.stats_age_ms = msg.stats_age_ms;
    }
    else {
      resolved.stats_age_ms = 0
    }

    if (msg.range_update_timestamp_ms !== undefined) {
      resolved.range_update_timestamp_ms = msg.range_update_timestamp_ms;
    }
    else {
      resolved.range_update_timestamp_ms = 0
    }

    if (msg.last_heard_timestamp_ms !== undefined) {
      resolved.last_heard_timestamp_ms = msg.last_heard_timestamp_ms;
    }
    else {
      resolved.last_heard_timestamp_ms = 0
    }

    if (msg.added_to_ndb_timestamp_ms !== undefined) {
      resolved.added_to_ndb_timestamp_ms = msg.added_to_ndb_timestamp_ms;
    }
    else {
      resolved.added_to_ndb_timestamp_ms = 0
    }

    return resolved;
    }
};

module.exports = RangeNetNDBEntry;
