// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: protos.proto

// Protobuf Java Version: 3.25.3
package com.rookmotion.rook_sdk_health_connect.proto;

public interface DataSourceProtoOrBuilder extends
    // @@protoc_insertion_point(interface_extends:DataSourceProto)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>string name = 1;</code>
   * @return The name.
   */
  java.lang.String getName();
  /**
   * <code>string name = 1;</code>
   * @return The bytes for name.
   */
  com.google.protobuf.ByteString
      getNameBytes();

  /**
   * <code>string description = 2;</code>
   * @return The description.
   */
  java.lang.String getDescription();
  /**
   * <code>string description = 2;</code>
   * @return The bytes for description.
   */
  com.google.protobuf.ByteString
      getDescriptionBytes();

  /**
   * <code>string image = 3;</code>
   * @return The image.
   */
  java.lang.String getImage();
  /**
   * <code>string image = 3;</code>
   * @return The bytes for image.
   */
  com.google.protobuf.ByteString
      getImageBytes();

  /**
   * <code>bool connected = 4;</code>
   * @return The connected.
   */
  boolean getConnected();

  /**
   * <code>string authorizationUrl = 5;</code>
   * @return The authorizationUrl.
   */
  java.lang.String getAuthorizationUrl();
  /**
   * <code>string authorizationUrl = 5;</code>
   * @return The bytes for authorizationUrl.
   */
  com.google.protobuf.ByteString
      getAuthorizationUrlBytes();

  /**
   * <code>bool authorizationUrlIsNull = 6;</code>
   * @return The authorizationUrlIsNull.
   */
  boolean getAuthorizationUrlIsNull();
}