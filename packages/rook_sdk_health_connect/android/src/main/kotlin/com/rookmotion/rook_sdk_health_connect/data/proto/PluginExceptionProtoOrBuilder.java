// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: protos.proto

// Protobuf Java Version: 3.25.3
package com.rookmotion.rook_sdk_health_connect.data.proto;

public interface PluginExceptionProtoOrBuilder extends
    // @@protoc_insertion_point(interface_extends:PluginExceptionProto)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>sint32 id = 1;</code>
   * @return The id.
   */
  int getId();

  /**
   * <code>sint32 code = 2;</code>
   * @return The code.
   */
  int getCode();

  /**
   * <code>string message = 3;</code>
   * @return The message.
   */
  java.lang.String getMessage();
  /**
   * <code>string message = 3;</code>
   * @return The bytes for message.
   */
  com.google.protobuf.ByteString
      getMessageBytes();
}