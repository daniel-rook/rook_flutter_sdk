// Generated by the protocol buffer compiler.  DO NOT EDIT!
// NO CHECKED-IN PROTOBUF GENCODE
// source: protos.proto
// Protobuf Java Version: 4.28.3

package com.rookmotion.rook_sdk_health_connect.proto;

/**
 * Protobuf enum {@code BackgroundReadStatusProto}
 */
public enum BackgroundReadStatusProto
    implements com.google.protobuf.Internal.EnumLite {
  /**
   * <code>UNAVAILABLE = 0;</code>
   */
  UNAVAILABLE(0),
  /**
   * <code>PERMISSION_NOT_GRANTED = 1;</code>
   */
  PERMISSION_NOT_GRANTED(1),
  /**
   * <code>PERMISSION_GRANTED = 2;</code>
   */
  PERMISSION_GRANTED(2),
  UNRECOGNIZED(-1),
  ;

  /**
   * <code>UNAVAILABLE = 0;</code>
   */
  public static final int UNAVAILABLE_VALUE = 0;
  /**
   * <code>PERMISSION_NOT_GRANTED = 1;</code>
   */
  public static final int PERMISSION_NOT_GRANTED_VALUE = 1;
  /**
   * <code>PERMISSION_GRANTED = 2;</code>
   */
  public static final int PERMISSION_GRANTED_VALUE = 2;


  @java.lang.Override
  public final int getNumber() {
    if (this == UNRECOGNIZED) {
      throw new java.lang.IllegalArgumentException(
          "Can't get the number of an unknown enum value.");
    }
    return value;
  }

  /**
   * @param value The number of the enum to look for.
   * @return The enum associated with the given number.
   * @deprecated Use {@link #forNumber(int)} instead.
   */
  @java.lang.Deprecated
  public static BackgroundReadStatusProto valueOf(int value) {
    return forNumber(value);
  }

  public static BackgroundReadStatusProto forNumber(int value) {
    switch (value) {
      case 0: return UNAVAILABLE;
      case 1: return PERMISSION_NOT_GRANTED;
      case 2: return PERMISSION_GRANTED;
      default: return null;
    }
  }

  public static com.google.protobuf.Internal.EnumLiteMap<BackgroundReadStatusProto>
      internalGetValueMap() {
    return internalValueMap;
  }
  private static final com.google.protobuf.Internal.EnumLiteMap<
      BackgroundReadStatusProto> internalValueMap =
        new com.google.protobuf.Internal.EnumLiteMap<BackgroundReadStatusProto>() {
          @java.lang.Override
          public BackgroundReadStatusProto findValueByNumber(int number) {
            return BackgroundReadStatusProto.forNumber(number);
          }
        };

  public static com.google.protobuf.Internal.EnumVerifier 
      internalGetVerifier() {
    return BackgroundReadStatusProtoVerifier.INSTANCE;
  }

  private static final class BackgroundReadStatusProtoVerifier implements 
       com.google.protobuf.Internal.EnumVerifier { 
          static final com.google.protobuf.Internal.EnumVerifier           INSTANCE = new BackgroundReadStatusProtoVerifier();
          @java.lang.Override
          public boolean isInRange(int number) {
            return BackgroundReadStatusProto.forNumber(number) != null;
          }
        };

  private final int value;

  private BackgroundReadStatusProto(int value) {
    this.value = value;
  }

  // @@protoc_insertion_point(enum_scope:BackgroundReadStatusProto)
}

