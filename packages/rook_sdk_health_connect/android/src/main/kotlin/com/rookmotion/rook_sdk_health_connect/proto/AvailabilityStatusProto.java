// Generated by the protocol buffer compiler.  DO NOT EDIT!
// NO CHECKED-IN PROTOBUF GENCODE
// source: protos.proto
// Protobuf Java Version: 4.28.3

package com.rookmotion.rook_sdk_health_connect.proto;

/**
 * Protobuf enum {@code AvailabilityStatusProto}
 */
public enum AvailabilityStatusProto
    implements com.google.protobuf.Internal.EnumLite {
  /**
   * <code>INSTALLED = 0;</code>
   */
  INSTALLED(0),
  /**
   * <code>NOT_INSTALLED = 1;</code>
   */
  NOT_INSTALLED(1),
  /**
   * <code>NOT_SUPPORTED = 2;</code>
   */
  NOT_SUPPORTED(2),
  UNRECOGNIZED(-1),
  ;

  /**
   * <code>INSTALLED = 0;</code>
   */
  public static final int INSTALLED_VALUE = 0;
  /**
   * <code>NOT_INSTALLED = 1;</code>
   */
  public static final int NOT_INSTALLED_VALUE = 1;
  /**
   * <code>NOT_SUPPORTED = 2;</code>
   */
  public static final int NOT_SUPPORTED_VALUE = 2;


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
  public static AvailabilityStatusProto valueOf(int value) {
    return forNumber(value);
  }

  public static AvailabilityStatusProto forNumber(int value) {
    switch (value) {
      case 0: return INSTALLED;
      case 1: return NOT_INSTALLED;
      case 2: return NOT_SUPPORTED;
      default: return null;
    }
  }

  public static com.google.protobuf.Internal.EnumLiteMap<AvailabilityStatusProto>
      internalGetValueMap() {
    return internalValueMap;
  }
  private static final com.google.protobuf.Internal.EnumLiteMap<
      AvailabilityStatusProto> internalValueMap =
        new com.google.protobuf.Internal.EnumLiteMap<AvailabilityStatusProto>() {
          @java.lang.Override
          public AvailabilityStatusProto findValueByNumber(int number) {
            return AvailabilityStatusProto.forNumber(number);
          }
        };

  public static com.google.protobuf.Internal.EnumVerifier 
      internalGetVerifier() {
    return AvailabilityStatusProtoVerifier.INSTANCE;
  }

  private static final class AvailabilityStatusProtoVerifier implements 
       com.google.protobuf.Internal.EnumVerifier { 
          static final com.google.protobuf.Internal.EnumVerifier           INSTANCE = new AvailabilityStatusProtoVerifier();
          @java.lang.Override
          public boolean isInRange(int number) {
            return AvailabilityStatusProto.forNumber(number) != null;
          }
        };

  private final int value;

  private AvailabilityStatusProto(int value) {
    this.value = value;
  }

  // @@protoc_insertion_point(enum_scope:AvailabilityStatusProto)
}

