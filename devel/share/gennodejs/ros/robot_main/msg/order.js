// Auto-generated. Do not edit!

// (in-package robot_main.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_coordinate_x = null;
      this.target_coordinate_y = null;
    }
    else {
      if (initObj.hasOwnProperty('target_coordinate_x')) {
        this.target_coordinate_x = initObj.target_coordinate_x
      }
      else {
        this.target_coordinate_x = 0;
      }
      if (initObj.hasOwnProperty('target_coordinate_y')) {
        this.target_coordinate_y = initObj.target_coordinate_y
      }
      else {
        this.target_coordinate_y = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type order
    // Serialize message field [target_coordinate_x]
    bufferOffset = _serializer.int32(obj.target_coordinate_x, buffer, bufferOffset);
    // Serialize message field [target_coordinate_y]
    bufferOffset = _serializer.int32(obj.target_coordinate_y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type order
    let len;
    let data = new order(null);
    // Deserialize message field [target_coordinate_x]
    data.target_coordinate_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_coordinate_y]
    data.target_coordinate_y = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_main/order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c85ee4726e19a286fd142a1dc905754d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 target_coordinate_x
    int32 target_coordinate_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new order(null);
    if (msg.target_coordinate_x !== undefined) {
      resolved.target_coordinate_x = msg.target_coordinate_x;
    }
    else {
      resolved.target_coordinate_x = 0
    }

    if (msg.target_coordinate_y !== undefined) {
      resolved.target_coordinate_y = msg.target_coordinate_y;
    }
    else {
      resolved.target_coordinate_y = 0
    }

    return resolved;
    }
};

module.exports = order;
