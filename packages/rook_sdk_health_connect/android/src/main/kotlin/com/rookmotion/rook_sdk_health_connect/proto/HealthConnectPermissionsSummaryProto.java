// Generated by the protocol buffer compiler.  DO NOT EDIT!
// NO CHECKED-IN PROTOBUF GENCODE
// source: protos.proto
// Protobuf Java Version: 4.28.3

package com.rookmotion.rook_sdk_health_connect.proto;

/**
 * Protobuf type {@code HealthConnectPermissionsSummaryProto}
 */
public  final class HealthConnectPermissionsSummaryProto extends
    com.google.protobuf.GeneratedMessageLite<
        HealthConnectPermissionsSummaryProto, HealthConnectPermissionsSummaryProto.Builder> implements
    // @@protoc_insertion_point(message_implements:HealthConnectPermissionsSummaryProto)
    HealthConnectPermissionsSummaryProtoOrBuilder {
  private HealthConnectPermissionsSummaryProto() {
  }
  public static final int DATATYPESGRANTED_FIELD_NUMBER = 1;
  private boolean dataTypesGranted_;
  /**
   * <code>bool dataTypesGranted = 1;</code>
   * @return The dataTypesGranted.
   */
  @java.lang.Override
  public boolean getDataTypesGranted() {
    return dataTypesGranted_;
  }
  /**
   * <code>bool dataTypesGranted = 1;</code>
   * @param value The dataTypesGranted to set.
   */
  private void setDataTypesGranted(boolean value) {
    
    dataTypesGranted_ = value;
  }
  /**
   * <code>bool dataTypesGranted = 1;</code>
   */
  private void clearDataTypesGranted() {

    dataTypesGranted_ = false;
  }

  public static final int DATATYPESPARTIALLYGRANTED_FIELD_NUMBER = 2;
  private boolean dataTypesPartiallyGranted_;
  /**
   * <code>bool dataTypesPartiallyGranted = 2;</code>
   * @return The dataTypesPartiallyGranted.
   */
  @java.lang.Override
  public boolean getDataTypesPartiallyGranted() {
    return dataTypesPartiallyGranted_;
  }
  /**
   * <code>bool dataTypesPartiallyGranted = 2;</code>
   * @param value The dataTypesPartiallyGranted to set.
   */
  private void setDataTypesPartiallyGranted(boolean value) {
    
    dataTypesPartiallyGranted_ = value;
  }
  /**
   * <code>bool dataTypesPartiallyGranted = 2;</code>
   */
  private void clearDataTypesPartiallyGranted() {

    dataTypesPartiallyGranted_ = false;
  }

  public static final int BACKGROUNDREADGRANTED_FIELD_NUMBER = 3;
  private boolean backgroundReadGranted_;
  /**
   * <code>bool backgroundReadGranted = 3;</code>
   * @return The backgroundReadGranted.
   */
  @java.lang.Override
  public boolean getBackgroundReadGranted() {
    return backgroundReadGranted_;
  }
  /**
   * <code>bool backgroundReadGranted = 3;</code>
   * @param value The backgroundReadGranted to set.
   */
  private void setBackgroundReadGranted(boolean value) {
    
    backgroundReadGranted_ = value;
  }
  /**
   * <code>bool backgroundReadGranted = 3;</code>
   */
  private void clearBackgroundReadGranted() {

    backgroundReadGranted_ = false;
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(
      java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(
      java.nio.ByteBuffer data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(
      byte[] data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input, extensionRegistry);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseDelimitedFrom(java.io.InputStream input)
      throws java.io.IOException {
    return parseDelimitedFrom(DEFAULT_INSTANCE, input);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseDelimitedFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(
      com.google.protobuf.CodedInputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto parseFrom(
      com.google.protobuf.CodedInputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input, extensionRegistry);
  }

  public static Builder newBuilder() {
    return (Builder) DEFAULT_INSTANCE.createBuilder();
  }
  public static Builder newBuilder(com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto prototype) {
    return DEFAULT_INSTANCE.createBuilder(prototype);
  }

  /**
   * Protobuf type {@code HealthConnectPermissionsSummaryProto}
   */
  public static final class Builder extends
      com.google.protobuf.GeneratedMessageLite.Builder<
        com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto, Builder> implements
      // @@protoc_insertion_point(builder_implements:HealthConnectPermissionsSummaryProto)
      com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProtoOrBuilder {
    // Construct using com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto.newBuilder()
    private Builder() {
      super(DEFAULT_INSTANCE);
    }


    /**
     * <code>bool dataTypesGranted = 1;</code>
     * @return The dataTypesGranted.
     */
    @java.lang.Override
    public boolean getDataTypesGranted() {
      return instance.getDataTypesGranted();
    }
    /**
     * <code>bool dataTypesGranted = 1;</code>
     * @param value The dataTypesGranted to set.
     * @return This builder for chaining.
     */
    public Builder setDataTypesGranted(boolean value) {
      copyOnWrite();
      instance.setDataTypesGranted(value);
      return this;
    }
    /**
     * <code>bool dataTypesGranted = 1;</code>
     * @return This builder for chaining.
     */
    public Builder clearDataTypesGranted() {
      copyOnWrite();
      instance.clearDataTypesGranted();
      return this;
    }

    /**
     * <code>bool dataTypesPartiallyGranted = 2;</code>
     * @return The dataTypesPartiallyGranted.
     */
    @java.lang.Override
    public boolean getDataTypesPartiallyGranted() {
      return instance.getDataTypesPartiallyGranted();
    }
    /**
     * <code>bool dataTypesPartiallyGranted = 2;</code>
     * @param value The dataTypesPartiallyGranted to set.
     * @return This builder for chaining.
     */
    public Builder setDataTypesPartiallyGranted(boolean value) {
      copyOnWrite();
      instance.setDataTypesPartiallyGranted(value);
      return this;
    }
    /**
     * <code>bool dataTypesPartiallyGranted = 2;</code>
     * @return This builder for chaining.
     */
    public Builder clearDataTypesPartiallyGranted() {
      copyOnWrite();
      instance.clearDataTypesPartiallyGranted();
      return this;
    }

    /**
     * <code>bool backgroundReadGranted = 3;</code>
     * @return The backgroundReadGranted.
     */
    @java.lang.Override
    public boolean getBackgroundReadGranted() {
      return instance.getBackgroundReadGranted();
    }
    /**
     * <code>bool backgroundReadGranted = 3;</code>
     * @param value The backgroundReadGranted to set.
     * @return This builder for chaining.
     */
    public Builder setBackgroundReadGranted(boolean value) {
      copyOnWrite();
      instance.setBackgroundReadGranted(value);
      return this;
    }
    /**
     * <code>bool backgroundReadGranted = 3;</code>
     * @return This builder for chaining.
     */
    public Builder clearBackgroundReadGranted() {
      copyOnWrite();
      instance.clearBackgroundReadGranted();
      return this;
    }

    // @@protoc_insertion_point(builder_scope:HealthConnectPermissionsSummaryProto)
  }
  @java.lang.Override
  @java.lang.SuppressWarnings({"unchecked", "fallthrough"})
  protected final java.lang.Object dynamicMethod(
      com.google.protobuf.GeneratedMessageLite.MethodToInvoke method,
      java.lang.Object arg0, java.lang.Object arg1) {
    switch (method) {
      case NEW_MUTABLE_INSTANCE: {
        return new com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto();
      }
      case NEW_BUILDER: {
        return new Builder();
      }
      case BUILD_MESSAGE_INFO: {
          java.lang.Object[] objects = new java.lang.Object[] {
            "dataTypesGranted_",
            "dataTypesPartiallyGranted_",
            "backgroundReadGranted_",
          };
          java.lang.String info =
              "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0007\u0002\u0007" +
              "\u0003\u0007";
          return newMessageInfo(DEFAULT_INSTANCE, info, objects);
      }
      // fall through
      case GET_DEFAULT_INSTANCE: {
        return DEFAULT_INSTANCE;
      }
      case GET_PARSER: {
        com.google.protobuf.Parser<com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto> parser = PARSER;
        if (parser == null) {
          synchronized (com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto.class) {
            parser = PARSER;
            if (parser == null) {
              parser =
                  new DefaultInstanceBasedParser<com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto>(
                      DEFAULT_INSTANCE);
              PARSER = parser;
            }
          }
        }
        return parser;
    }
    case GET_MEMOIZED_IS_INITIALIZED: {
      return (byte) 1;
    }
    case SET_MEMOIZED_IS_INITIALIZED: {
      return null;
    }
    }
    throw new UnsupportedOperationException();
  }


  // @@protoc_insertion_point(class_scope:HealthConnectPermissionsSummaryProto)
  private static final com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto DEFAULT_INSTANCE;
  static {
    HealthConnectPermissionsSummaryProto defaultInstance = new HealthConnectPermissionsSummaryProto();
    // New instances are implicitly immutable so no need to make
    // immutable.
    DEFAULT_INSTANCE = defaultInstance;
    com.google.protobuf.GeneratedMessageLite.registerDefaultInstance(
      HealthConnectPermissionsSummaryProto.class, defaultInstance);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static volatile com.google.protobuf.Parser<HealthConnectPermissionsSummaryProto> PARSER;

  public static com.google.protobuf.Parser<HealthConnectPermissionsSummaryProto> parser() {
    return DEFAULT_INSTANCE.getParserForType();
  }
}

