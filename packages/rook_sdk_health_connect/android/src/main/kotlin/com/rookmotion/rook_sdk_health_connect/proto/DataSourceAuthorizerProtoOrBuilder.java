// Generated by the protocol buffer compiler.  DO NOT EDIT!
// NO CHECKED-IN PROTOBUF GENCODE
// source: protos.proto
// Protobuf Java Version: 4.28.3

package com.rookmotion.rook_sdk_health_connect.proto;

public interface DataSourceAuthorizerProtoOrBuilder extends
    // @@protoc_insertion_point(interface_extends:DataSourceAuthorizerProto)
    com.google.protobuf.MessageLiteOrBuilder {

  /**
   * <code>string dataSource = 1;</code>
   * @return The dataSource.
   */
  java.lang.String getDataSource();
  /**
   * <code>string dataSource = 1;</code>
   * @return The bytes for dataSource.
   */
  com.google.protobuf.ByteString
      getDataSourceBytes();

  /**
   * <code>bool authorized = 2;</code>
   * @return The authorized.
   */
  boolean getAuthorized();

  /**
   * <code>string authorizationUrl = 3;</code>
   * @return The authorizationUrl.
   */
  java.lang.String getAuthorizationUrl();
  /**
   * <code>string authorizationUrl = 3;</code>
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
