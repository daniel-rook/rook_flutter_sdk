// Generated by the protocol buffer compiler.  DO NOT EDIT!
// NO CHECKED-IN PROTOBUF GENCODE
// source: protos.proto
// Protobuf Java Version: 4.28.3

package com.rookmotion.rook_sdk_health_connect.proto;

public interface ResultBooleanProtoOrBuilder extends
    // @@protoc_insertion_point(interface_extends:ResultBooleanProto)
    com.google.protobuf.MessageLiteOrBuilder {

  /**
   * <code>bool success = 1;</code>
   * @return Whether the success field is set.
   */
  boolean hasSuccess();
  /**
   * <code>bool success = 1;</code>
   * @return The success.
   */
  boolean getSuccess();

  /**
   * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
   * @return Whether the pluginExceptionProto field is set.
   */
  boolean hasPluginExceptionProto();
  /**
   * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
   * @return The pluginExceptionProto.
   */
  com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto getPluginExceptionProto();

  public com.rookmotion.rook_sdk_health_connect.proto.ResultBooleanProto.ResultCase getResultCase();
}
