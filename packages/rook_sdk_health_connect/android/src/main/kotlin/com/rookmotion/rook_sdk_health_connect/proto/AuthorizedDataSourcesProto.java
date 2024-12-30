// Generated by the protocol buffer compiler.  DO NOT EDIT!
// NO CHECKED-IN PROTOBUF GENCODE
// source: protos.proto
// Protobuf Java Version: 4.28.3

package com.rookmotion.rook_sdk_health_connect.proto;

/**
 * Protobuf type {@code AuthorizedDataSourcesProto}
 */
public  final class AuthorizedDataSourcesProto extends
    com.google.protobuf.GeneratedMessageLite<
        AuthorizedDataSourcesProto, AuthorizedDataSourcesProto.Builder> implements
    // @@protoc_insertion_point(message_implements:AuthorizedDataSourcesProto)
    AuthorizedDataSourcesProtoOrBuilder {
  private AuthorizedDataSourcesProto() {
  }
  public static final int OURA_FIELD_NUMBER = 1;
  private boolean oura_;
  /**
   * <code>bool oura = 1;</code>
   * @return The oura.
   */
  @java.lang.Override
  public boolean getOura() {
    return oura_;
  }
  /**
   * <code>bool oura = 1;</code>
   * @param value The oura to set.
   */
  private void setOura(boolean value) {
    
    oura_ = value;
  }
  /**
   * <code>bool oura = 1;</code>
   */
  private void clearOura() {

    oura_ = false;
  }

  public static final int POLAR_FIELD_NUMBER = 2;
  private boolean polar_;
  /**
   * <code>bool polar = 2;</code>
   * @return The polar.
   */
  @java.lang.Override
  public boolean getPolar() {
    return polar_;
  }
  /**
   * <code>bool polar = 2;</code>
   * @param value The polar to set.
   */
  private void setPolar(boolean value) {
    
    polar_ = value;
  }
  /**
   * <code>bool polar = 2;</code>
   */
  private void clearPolar() {

    polar_ = false;
  }

  public static final int WHOOP_FIELD_NUMBER = 3;
  private boolean whoop_;
  /**
   * <code>bool whoop = 3;</code>
   * @return The whoop.
   */
  @java.lang.Override
  public boolean getWhoop() {
    return whoop_;
  }
  /**
   * <code>bool whoop = 3;</code>
   * @param value The whoop to set.
   */
  private void setWhoop(boolean value) {
    
    whoop_ = value;
  }
  /**
   * <code>bool whoop = 3;</code>
   */
  private void clearWhoop() {

    whoop_ = false;
  }

  public static final int FITBIT_FIELD_NUMBER = 4;
  private boolean fitbit_;
  /**
   * <code>bool fitbit = 4;</code>
   * @return The fitbit.
   */
  @java.lang.Override
  public boolean getFitbit() {
    return fitbit_;
  }
  /**
   * <code>bool fitbit = 4;</code>
   * @param value The fitbit to set.
   */
  private void setFitbit(boolean value) {
    
    fitbit_ = value;
  }
  /**
   * <code>bool fitbit = 4;</code>
   */
  private void clearFitbit() {

    fitbit_ = false;
  }

  public static final int GARMIN_FIELD_NUMBER = 5;
  private boolean garmin_;
  /**
   * <code>bool garmin = 5;</code>
   * @return The garmin.
   */
  @java.lang.Override
  public boolean getGarmin() {
    return garmin_;
  }
  /**
   * <code>bool garmin = 5;</code>
   * @param value The garmin to set.
   */
  private void setGarmin(boolean value) {
    
    garmin_ = value;
  }
  /**
   * <code>bool garmin = 5;</code>
   */
  private void clearGarmin() {

    garmin_ = false;
  }

  public static final int WITHINGS_FIELD_NUMBER = 6;
  private boolean withings_;
  /**
   * <code>bool withings = 6;</code>
   * @return The withings.
   */
  @java.lang.Override
  public boolean getWithings() {
    return withings_;
  }
  /**
   * <code>bool withings = 6;</code>
   * @param value The withings to set.
   */
  private void setWithings(boolean value) {
    
    withings_ = value;
  }
  /**
   * <code>bool withings = 6;</code>
   */
  private void clearWithings() {

    withings_ = false;
  }

  public static final int APPLEHEALTH_FIELD_NUMBER = 7;
  private boolean appleHealth_;
  /**
   * <code>bool appleHealth = 7;</code>
   * @return The appleHealth.
   */
  @java.lang.Override
  public boolean getAppleHealth() {
    return appleHealth_;
  }
  /**
   * <code>bool appleHealth = 7;</code>
   * @param value The appleHealth to set.
   */
  private void setAppleHealth(boolean value) {
    
    appleHealth_ = value;
  }
  /**
   * <code>bool appleHealth = 7;</code>
   */
  private void clearAppleHealth() {

    appleHealth_ = false;
  }

  public static final int HEALTHCONNECT_FIELD_NUMBER = 8;
  private boolean healthConnect_;
  /**
   * <code>bool healthConnect = 8;</code>
   * @return The healthConnect.
   */
  @java.lang.Override
  public boolean getHealthConnect() {
    return healthConnect_;
  }
  /**
   * <code>bool healthConnect = 8;</code>
   * @param value The healthConnect to set.
   */
  private void setHealthConnect(boolean value) {
    
    healthConnect_ = value;
  }
  /**
   * <code>bool healthConnect = 8;</code>
   */
  private void clearHealthConnect() {

    healthConnect_ = false;
  }

  public static final int ANDROID_FIELD_NUMBER = 9;
  private boolean android_;
  /**
   * <code>bool android = 9;</code>
   * @return The android.
   */
  @java.lang.Override
  public boolean getAndroid() {
    return android_;
  }
  /**
   * <code>bool android = 9;</code>
   * @param value The android to set.
   */
  private void setAndroid(boolean value) {
    
    android_ = value;
  }
  /**
   * <code>bool android = 9;</code>
   */
  private void clearAndroid() {

    android_ = false;
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(
      java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(
      java.nio.ByteBuffer data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(
      byte[] data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, data, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input, extensionRegistry);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseDelimitedFrom(java.io.InputStream input)
      throws java.io.IOException {
    return parseDelimitedFrom(DEFAULT_INSTANCE, input);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseDelimitedFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return parseDelimitedFrom(DEFAULT_INSTANCE, input, extensionRegistry);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(
      com.google.protobuf.CodedInputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input);
  }
  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto parseFrom(
      com.google.protobuf.CodedInputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageLite.parseFrom(
        DEFAULT_INSTANCE, input, extensionRegistry);
  }

  public static Builder newBuilder() {
    return (Builder) DEFAULT_INSTANCE.createBuilder();
  }
  public static Builder newBuilder(com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto prototype) {
    return DEFAULT_INSTANCE.createBuilder(prototype);
  }

  /**
   * Protobuf type {@code AuthorizedDataSourcesProto}
   */
  public static final class Builder extends
      com.google.protobuf.GeneratedMessageLite.Builder<
        com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto, Builder> implements
      // @@protoc_insertion_point(builder_implements:AuthorizedDataSourcesProto)
      com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProtoOrBuilder {
    // Construct using com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto.newBuilder()
    private Builder() {
      super(DEFAULT_INSTANCE);
    }


    /**
     * <code>bool oura = 1;</code>
     * @return The oura.
     */
    @java.lang.Override
    public boolean getOura() {
      return instance.getOura();
    }
    /**
     * <code>bool oura = 1;</code>
     * @param value The oura to set.
     * @return This builder for chaining.
     */
    public Builder setOura(boolean value) {
      copyOnWrite();
      instance.setOura(value);
      return this;
    }
    /**
     * <code>bool oura = 1;</code>
     * @return This builder for chaining.
     */
    public Builder clearOura() {
      copyOnWrite();
      instance.clearOura();
      return this;
    }

    /**
     * <code>bool polar = 2;</code>
     * @return The polar.
     */
    @java.lang.Override
    public boolean getPolar() {
      return instance.getPolar();
    }
    /**
     * <code>bool polar = 2;</code>
     * @param value The polar to set.
     * @return This builder for chaining.
     */
    public Builder setPolar(boolean value) {
      copyOnWrite();
      instance.setPolar(value);
      return this;
    }
    /**
     * <code>bool polar = 2;</code>
     * @return This builder for chaining.
     */
    public Builder clearPolar() {
      copyOnWrite();
      instance.clearPolar();
      return this;
    }

    /**
     * <code>bool whoop = 3;</code>
     * @return The whoop.
     */
    @java.lang.Override
    public boolean getWhoop() {
      return instance.getWhoop();
    }
    /**
     * <code>bool whoop = 3;</code>
     * @param value The whoop to set.
     * @return This builder for chaining.
     */
    public Builder setWhoop(boolean value) {
      copyOnWrite();
      instance.setWhoop(value);
      return this;
    }
    /**
     * <code>bool whoop = 3;</code>
     * @return This builder for chaining.
     */
    public Builder clearWhoop() {
      copyOnWrite();
      instance.clearWhoop();
      return this;
    }

    /**
     * <code>bool fitbit = 4;</code>
     * @return The fitbit.
     */
    @java.lang.Override
    public boolean getFitbit() {
      return instance.getFitbit();
    }
    /**
     * <code>bool fitbit = 4;</code>
     * @param value The fitbit to set.
     * @return This builder for chaining.
     */
    public Builder setFitbit(boolean value) {
      copyOnWrite();
      instance.setFitbit(value);
      return this;
    }
    /**
     * <code>bool fitbit = 4;</code>
     * @return This builder for chaining.
     */
    public Builder clearFitbit() {
      copyOnWrite();
      instance.clearFitbit();
      return this;
    }

    /**
     * <code>bool garmin = 5;</code>
     * @return The garmin.
     */
    @java.lang.Override
    public boolean getGarmin() {
      return instance.getGarmin();
    }
    /**
     * <code>bool garmin = 5;</code>
     * @param value The garmin to set.
     * @return This builder for chaining.
     */
    public Builder setGarmin(boolean value) {
      copyOnWrite();
      instance.setGarmin(value);
      return this;
    }
    /**
     * <code>bool garmin = 5;</code>
     * @return This builder for chaining.
     */
    public Builder clearGarmin() {
      copyOnWrite();
      instance.clearGarmin();
      return this;
    }

    /**
     * <code>bool withings = 6;</code>
     * @return The withings.
     */
    @java.lang.Override
    public boolean getWithings() {
      return instance.getWithings();
    }
    /**
     * <code>bool withings = 6;</code>
     * @param value The withings to set.
     * @return This builder for chaining.
     */
    public Builder setWithings(boolean value) {
      copyOnWrite();
      instance.setWithings(value);
      return this;
    }
    /**
     * <code>bool withings = 6;</code>
     * @return This builder for chaining.
     */
    public Builder clearWithings() {
      copyOnWrite();
      instance.clearWithings();
      return this;
    }

    /**
     * <code>bool appleHealth = 7;</code>
     * @return The appleHealth.
     */
    @java.lang.Override
    public boolean getAppleHealth() {
      return instance.getAppleHealth();
    }
    /**
     * <code>bool appleHealth = 7;</code>
     * @param value The appleHealth to set.
     * @return This builder for chaining.
     */
    public Builder setAppleHealth(boolean value) {
      copyOnWrite();
      instance.setAppleHealth(value);
      return this;
    }
    /**
     * <code>bool appleHealth = 7;</code>
     * @return This builder for chaining.
     */
    public Builder clearAppleHealth() {
      copyOnWrite();
      instance.clearAppleHealth();
      return this;
    }

    /**
     * <code>bool healthConnect = 8;</code>
     * @return The healthConnect.
     */
    @java.lang.Override
    public boolean getHealthConnect() {
      return instance.getHealthConnect();
    }
    /**
     * <code>bool healthConnect = 8;</code>
     * @param value The healthConnect to set.
     * @return This builder for chaining.
     */
    public Builder setHealthConnect(boolean value) {
      copyOnWrite();
      instance.setHealthConnect(value);
      return this;
    }
    /**
     * <code>bool healthConnect = 8;</code>
     * @return This builder for chaining.
     */
    public Builder clearHealthConnect() {
      copyOnWrite();
      instance.clearHealthConnect();
      return this;
    }

    /**
     * <code>bool android = 9;</code>
     * @return The android.
     */
    @java.lang.Override
    public boolean getAndroid() {
      return instance.getAndroid();
    }
    /**
     * <code>bool android = 9;</code>
     * @param value The android to set.
     * @return This builder for chaining.
     */
    public Builder setAndroid(boolean value) {
      copyOnWrite();
      instance.setAndroid(value);
      return this;
    }
    /**
     * <code>bool android = 9;</code>
     * @return This builder for chaining.
     */
    public Builder clearAndroid() {
      copyOnWrite();
      instance.clearAndroid();
      return this;
    }

    // @@protoc_insertion_point(builder_scope:AuthorizedDataSourcesProto)
  }
  @java.lang.Override
  @java.lang.SuppressWarnings({"unchecked", "fallthrough"})
  protected final java.lang.Object dynamicMethod(
      com.google.protobuf.GeneratedMessageLite.MethodToInvoke method,
      java.lang.Object arg0, java.lang.Object arg1) {
    switch (method) {
      case NEW_MUTABLE_INSTANCE: {
        return new com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto();
      }
      case NEW_BUILDER: {
        return new Builder();
      }
      case BUILD_MESSAGE_INFO: {
          java.lang.Object[] objects = new java.lang.Object[] {
            "oura_",
            "polar_",
            "whoop_",
            "fitbit_",
            "garmin_",
            "withings_",
            "appleHealth_",
            "healthConnect_",
            "android_",
          };
          java.lang.String info =
              "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0000\u0000\u0001\u0007\u0002\u0007\u0003\u0007" +
              "\u0004\u0007\u0005\u0007\u0006\u0007\u0007\u0007\b\u0007\t\u0007";
          return newMessageInfo(DEFAULT_INSTANCE, info, objects);
      }
      // fall through
      case GET_DEFAULT_INSTANCE: {
        return DEFAULT_INSTANCE;
      }
      case GET_PARSER: {
        com.google.protobuf.Parser<com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto> parser = PARSER;
        if (parser == null) {
          synchronized (com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto.class) {
            parser = PARSER;
            if (parser == null) {
              parser =
                  new DefaultInstanceBasedParser<com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto>(
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


  // @@protoc_insertion_point(class_scope:AuthorizedDataSourcesProto)
  private static final com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto DEFAULT_INSTANCE;
  static {
    AuthorizedDataSourcesProto defaultInstance = new AuthorizedDataSourcesProto();
    // New instances are implicitly immutable so no need to make
    // immutable.
    DEFAULT_INSTANCE = defaultInstance;
    com.google.protobuf.GeneratedMessageLite.registerDefaultInstance(
      AuthorizedDataSourcesProto.class, defaultInstance);
  }

  public static com.rookmotion.rook_sdk_health_connect.proto.AuthorizedDataSourcesProto getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static volatile com.google.protobuf.Parser<AuthorizedDataSourcesProto> PARSER;

  public static com.google.protobuf.Parser<AuthorizedDataSourcesProto> parser() {
    return DEFAULT_INSTANCE.getParserForType();
  }
}

