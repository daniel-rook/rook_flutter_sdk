// Generated by the protocol buffer compiler.  DO NOT EDIT!
// NO CHECKED-IN PROTOBUF GENCODE
// source: protos.proto
// Protobuf Java Version: 4.28.3

package com.rookmotion.rook_sdk_health_connect.proto;

/**
 * Protobuf type {@code ResultSyncStatusProto}
 */
public  final class ResultSyncStatusProto extends
    com.google.protobuf.GeneratedMessageLite<
        ResultSyncStatusProto, ResultSyncStatusProto.Builder> implements
    // @@protoc_insertion_point(message_implements:ResultSyncStatusProto)
    ResultSyncStatusProtoOrBuilder {
  private ResultSyncStatusProto() {
  }
  private int resultCase_ = 0;
  private java.lang.Object result_;
  public enum ResultCase {
    SYNCSTATUSPROTO(1),
    PLUGINEXCEPTIONPROTO(2),
    RESULT_NOT_SET(0);
    private final int value;
    private ResultCase(int value) {
      this.value = value;
    }
    /**
     * @deprecated Use {@link #forNumber(int)} instead.
     */
    @java.lang.Deprecated
    public static ResultCase valueOf(int value) {
      return forNumber(value);
    }

    public static ResultCase forNumber(int value) {
      switch (value) {
        case 1: return SYNCSTATUSPROTO;
        case 2: return PLUGINEXCEPTIONPROTO;
        case 0: return RESULT_NOT_SET;
        default: return null;
      }
    }
    public int getNumber() {
      return this.value;
    }
  };

  @java.lang.Override
  public ResultCase
  getResultCase() {
    return ResultCase.forNumber(
        resultCase_);
  }

  private void clearResult() {
    resultCase_ = 0;
    result_ = null;
  }

  public static final int SYNCSTATUSPROTO_FIELD_NUMBER = 1;
  /**
   * <code>.SyncStatusProto syncStatusProto = 1;</code>
   * @return Whether the syncStatusProto field is set.
   */
  @java.lang.Override
  public boolean hasSyncStatusProto() {
    return resultCase_ == 1;
  }
  /**
   * <code>.SyncStatusProto syncStatusProto = 1;</code>
   * @return The enum numeric value on the wire for syncStatusProto.
   */
  @java.lang.Override
  public int getSyncStatusProtoValue() {
    if (resultCase_ == 1) {
      return (java.lang.Integer) result_;
    }
    return 0;
  }
  /**
   * <code>.SyncStatusProto syncStatusProto = 1;</code>
   * @return The syncStatusProto.
   */
  @java.lang.Override
  public com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto getSyncStatusProto() {
    if (resultCase_ == 1) {
      com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto result = com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto.forNumber((java.lang.Integer) result_);
      return result == null ? com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto.UNRECOGNIZED : result;
    }
    return com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto.SYNCED;
  }
  /**
   * <code>.SyncStatusProto syncStatusProto = 1;</code>
   * @param value The enum numeric value on the wire for syncStatusProto to set.
   */
  private void setSyncStatusProtoValue(int value) {
    resultCase_ = 1;
    result_ = value;
  }
  /**
   * <code>.SyncStatusProto syncStatusProto = 1;</code>
   * @param value The syncStatusProto to set.
   */
  private void setSyncStatusProto(com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto value) {
    result_ = value.getNumber();
    resultCase_ = 1;
  }
  /**
   * <code>.SyncStatusProto syncStatusProto = 1;</code>
   */
  private void clearSyncStatusProto() {
    if (resultCase_ == 1) {
      resultCase_ = 0;
      result_ = null;
    }
  }

  public static final int PLUGINEXCEPTIONPROTO_FIELD_NUMBER = 2;
  /**
   * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
   */
  @java.lang.Override
  public boolean hasPluginExceptionProto() {
    return resultCase_ == 2;
  }
  /**
   * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
   */
  @java.lang.Override
  public com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto getPluginExceptionProto() {
    if (resultCase_ == 2) {
       return (com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto) result_;
    }
    return com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto.getDefaultInstance();
  }
  /**
   * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
   */
  private void setPluginExceptionProto(com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto value) {
    value.getClass();
  result_ = value;
    resultCase_ = 2;
  }
  /**
   * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
   */
  private void mergePluginExceptionProto(com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto value) {
    value.getClass();
  if (resultCase_ == 2 &&
        result_ != com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto.getDefaultInstance()) {
      result_ = com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto.newBuilder((com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto) result_)
          .mergeFrom(value).buildPartial();
    } else {
      result_ = value;
    }
    resultCase_ = 2;
  }
  /**
   * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
   */
  private void clearPluginExceptionProto() {
    if (resultCase_ == 2) {
      resultCase_ = 0;
      result_ = null;
    }
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(
      java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(
      java.nio.ByteBuffer data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(
      byte[] data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input, extensionRegistry);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseDelimitedFrom(java.io.InputStream input)
      throws java.io.IOException {
    return parseDelimitedFrom(DEFAULT_INSTANCE, input);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseDelimitedFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(
      com.google.protobuf.CodedInputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto parseFrom(
      com.google.protobuf.CodedInputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input, extensionRegistry);
  }

  public static Builder newBuilder() {
    return (Builder) DEFAULT_INSTANCE.createBuilder();
  }
  public static Builder newBuilder(com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto prototype) {
    return DEFAULT_INSTANCE.createBuilder(prototype);
  }

  /**
   * Protobuf type {@code ResultSyncStatusProto}
   */
  public static final class Builder extends
      com.google.protobuf.GeneratedMessageLite.Builder<
        com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto, Builder> implements
      // @@protoc_insertion_point(builder_implements:ResultSyncStatusProto)
      com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProtoOrBuilder {
    // Construct using com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto.newBuilder()
    private Builder() {
      super(DEFAULT_INSTANCE);
    }

    @java.lang.Override
    public ResultCase
        getResultCase() {
      return instance.getResultCase();
    }

    public Builder clearResult() {
      copyOnWrite();
      instance.clearResult();
      return this;
    }


    /**
     * <code>.SyncStatusProto syncStatusProto = 1;</code>
     * @return Whether the syncStatusProto field is set.
     */
    @java.lang.Override
    public boolean hasSyncStatusProto() {
      return instance.hasSyncStatusProto();
    }
    /**
     * <code>.SyncStatusProto syncStatusProto = 1;</code>
     * @return The enum numeric value on the wire for syncStatusProto.
     */
    @java.lang.Override
    public int getSyncStatusProtoValue() {
      return instance.getSyncStatusProtoValue();
    }
    /**
     * <code>.SyncStatusProto syncStatusProto = 1;</code>
     * @param value The enum numeric value on the wire for syncStatusProto to set.
     * @return This builder for chaining.
     */
    public Builder setSyncStatusProtoValue(int value) {
      copyOnWrite();
      instance.setSyncStatusProtoValue(value);
      return this;
    }
    /**
     * <code>.SyncStatusProto syncStatusProto = 1;</code>
     * @return The syncStatusProto.
     */
    @java.lang.Override
    public com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto getSyncStatusProto() {
      return instance.getSyncStatusProto();
    }
    /**
     * <code>.SyncStatusProto syncStatusProto = 1;</code>
     * @param value The syncStatusProto to set.
     * @return This builder for chaining.
     */
    public Builder setSyncStatusProto(com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto value) {
      copyOnWrite();
      instance.setSyncStatusProto(value);
      return this;
    }
    /**
     * <code>.SyncStatusProto syncStatusProto = 1;</code>
     * @return This builder for chaining.
     */
    public Builder clearSyncStatusProto() {
      copyOnWrite();
      instance.clearSyncStatusProto();
      return this;
    }

    /**
     * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
     */
    @java.lang.Override
    public boolean hasPluginExceptionProto() {
      return instance.hasPluginExceptionProto();
    }
    /**
     * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
     */
    @java.lang.Override
    public com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto getPluginExceptionProto() {
      return instance.getPluginExceptionProto();
    }
    /**
     * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
     */
    public Builder setPluginExceptionProto(com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto value) {
      copyOnWrite();
      instance.setPluginExceptionProto(value);
      return this;
    }
    /**
     * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
     */
    public Builder setPluginExceptionProto(
        com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto.Builder builderForValue) {
      copyOnWrite();
      instance.setPluginExceptionProto(builderForValue.build());
      return this;
    }
    /**
     * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
     */
    public Builder mergePluginExceptionProto(com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto value) {
      copyOnWrite();
      instance.mergePluginExceptionProto(value);
      return this;
    }
    /**
     * <code>.PluginExceptionProto pluginExceptionProto = 2;</code>
     */
    public Builder clearPluginExceptionProto() {
      copyOnWrite();
      instance.clearPluginExceptionProto();
      return this;
    }

    // @@protoc_insertion_point(builder_scope:ResultSyncStatusProto)
  }
  @java.lang.Override
  @java.lang.SuppressWarnings({"unchecked", "fallthrough"})
  protected final java.lang.Object dynamicMethod(
      com.google.protobuf.GeneratedMessageLite.MethodToInvoke method,
      java.lang.Object arg0, java.lang.Object arg1) {
    switch (method) {
      case NEW_MUTABLE_INSTANCE: {
        return new com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto();
      }
      case NEW_BUILDER: {
        return new Builder();
      }
      case BUILD_MESSAGE_INFO: {
          java.lang.Object[] objects = new java.lang.Object[] {
            "result_",
            "resultCase_",
            com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto.class,
          };
          java.lang.String info =
              "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001?\u0000\u0002<" +
              "\u0000";
          return newMessageInfo(DEFAULT_INSTANCE, info, objects);
      }
      // fall through
      case GET_DEFAULT_INSTANCE: {
        return DEFAULT_INSTANCE;
      }
      case GET_PARSER: {
        com.google.protobuf.Parser<com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto> parser = PARSER;
        if (parser == null) {
          synchronized (com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto.class) {
            parser = PARSER;
            if (parser == null) {
              parser =
                  new DefaultInstanceBasedParser<com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto>(
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


  // @@protoc_insertion_point(class_scope:ResultSyncStatusProto)
  private static final com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto DEFAULT_INSTANCE;
  static {
    ResultSyncStatusProto defaultInstance = new ResultSyncStatusProto();
    // New instances are implicitly immutable so no need to make
    // immutable.
    DEFAULT_INSTANCE = defaultInstance;
    com.google.protobuf.GeneratedMessageLite.registerDefaultInstance(
      ResultSyncStatusProto.class, defaultInstance);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static volatile com.google.protobuf.Parser<ResultSyncStatusProto> PARSER;

  public static com.google.protobuf.Parser<ResultSyncStatusProto> parser() {
    return DEFAULT_INSTANCE.getParserForType();
  }
}

