// Generated by the protocol buffer compiler.  DO NOT EDIT!
// NO CHECKED-IN PROTOBUF GENCODE
// source: protos.proto
// Protobuf Java Version: 4.28.3

package com.rookmotion.rook_sdk_health_connect.proto;

/**
 * Protobuf enum {@code HealthDataTypeProto}
 */
public enum HealthDataTypeProto
    implements com.google.protobuf.Internal.EnumLite {
  /**
   * <code>SLEEP_SUMMARY = 0;</code>
   */
  SLEEP_SUMMARY(0),
  /**
   * <code>PHYSICAL_SUMMARY = 1;</code>
   */
  PHYSICAL_SUMMARY(1),
  /**
   * <code>BODY_SUMMARY = 2;</code>
   */
  BODY_SUMMARY(2),
  /**
   * <code>PHYSICAL_EVENT = 3;</code>
   */
  PHYSICAL_EVENT(3),
  /**
   * <code>BLOOD_GLUCOSE_BODY_EVENT = 4;</code>
   */
  BLOOD_GLUCOSE_BODY_EVENT(4),
  /**
   * <code>BLOOD_PRESSURE_BODY_EVENT = 5;</code>
   */
  BLOOD_PRESSURE_BODY_EVENT(5),
  /**
   * <code>BODY_METRICS_EVENT = 6;</code>
   */
  BODY_METRICS_EVENT(6),
  /**
   * <code>HEART_RATE_BODY_EVENT = 7;</code>
   */
  HEART_RATE_BODY_EVENT(7),
  /**
   * <code>HEART_RATE_PHYSICAL_EVENT = 8;</code>
   */
  HEART_RATE_PHYSICAL_EVENT(8),
  /**
   * <code>HYDRATION_BODY_EVENT = 9;</code>
   */
  HYDRATION_BODY_EVENT(9),
  /**
   * <code>NUTRITION_BODY_EVENT = 10;</code>
   */
  NUTRITION_BODY_EVENT(10),
  /**
   * <code>OXYGENATION_BODY_EVENT = 11;</code>
   */
  OXYGENATION_BODY_EVENT(11),
  /**
   * <code>OXYGENATION_PHYSICAL_EVENT = 12;</code>
   */
  OXYGENATION_PHYSICAL_EVENT(12),
  /**
   * <code>TEMPERATURE_BODY_EVENT = 13;</code>
   */
  TEMPERATURE_BODY_EVENT(13),
  UNRECOGNIZED(-1),
  ;

  /**
   * <code>SLEEP_SUMMARY = 0;</code>
   */
  public static final int SLEEP_SUMMARY_VALUE = 0;
  /**
   * <code>PHYSICAL_SUMMARY = 1;</code>
   */
  public static final int PHYSICAL_SUMMARY_VALUE = 1;
  /**
   * <code>BODY_SUMMARY = 2;</code>
   */
  public static final int BODY_SUMMARY_VALUE = 2;
  /**
   * <code>PHYSICAL_EVENT = 3;</code>
   */
  public static final int PHYSICAL_EVENT_VALUE = 3;
  /**
   * <code>BLOOD_GLUCOSE_BODY_EVENT = 4;</code>
   */
  public static final int BLOOD_GLUCOSE_BODY_EVENT_VALUE = 4;
  /**
   * <code>BLOOD_PRESSURE_BODY_EVENT = 5;</code>
   */
  public static final int BLOOD_PRESSURE_BODY_EVENT_VALUE = 5;
  /**
   * <code>BODY_METRICS_EVENT = 6;</code>
   */
  public static final int BODY_METRICS_EVENT_VALUE = 6;
  /**
   * <code>HEART_RATE_BODY_EVENT = 7;</code>
   */
  public static final int HEART_RATE_BODY_EVENT_VALUE = 7;
  /**
   * <code>HEART_RATE_PHYSICAL_EVENT = 8;</code>
   */
  public static final int HEART_RATE_PHYSICAL_EVENT_VALUE = 8;
  /**
   * <code>HYDRATION_BODY_EVENT = 9;</code>
   */
  public static final int HYDRATION_BODY_EVENT_VALUE = 9;
  /**
   * <code>NUTRITION_BODY_EVENT = 10;</code>
   */
  public static final int NUTRITION_BODY_EVENT_VALUE = 10;
  /**
   * <code>OXYGENATION_BODY_EVENT = 11;</code>
   */
  public static final int OXYGENATION_BODY_EVENT_VALUE = 11;
  /**
   * <code>OXYGENATION_PHYSICAL_EVENT = 12;</code>
   */
  public static final int OXYGENATION_PHYSICAL_EVENT_VALUE = 12;
  /**
   * <code>TEMPERATURE_BODY_EVENT = 13;</code>
   */
  public static final int TEMPERATURE_BODY_EVENT_VALUE = 13;


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
  public static HealthDataTypeProto valueOf(int value) {
    return forNumber(value);
  }

  public static HealthDataTypeProto forNumber(int value) {
    switch (value) {
      case 0: return SLEEP_SUMMARY;
      case 1: return PHYSICAL_SUMMARY;
      case 2: return BODY_SUMMARY;
      case 3: return PHYSICAL_EVENT;
      case 4: return BLOOD_GLUCOSE_BODY_EVENT;
      case 5: return BLOOD_PRESSURE_BODY_EVENT;
      case 6: return BODY_METRICS_EVENT;
      case 7: return HEART_RATE_BODY_EVENT;
      case 8: return HEART_RATE_PHYSICAL_EVENT;
      case 9: return HYDRATION_BODY_EVENT;
      case 10: return NUTRITION_BODY_EVENT;
      case 11: return OXYGENATION_BODY_EVENT;
      case 12: return OXYGENATION_PHYSICAL_EVENT;
      case 13: return TEMPERATURE_BODY_EVENT;
      default: return null;
    }
  }

  public static com.google.protobuf.Internal.EnumLiteMap<HealthDataTypeProto>
      internalGetValueMap() {
    return internalValueMap;
  }
  private static final com.google.protobuf.Internal.EnumLiteMap<
      HealthDataTypeProto> internalValueMap =
        new com.google.protobuf.Internal.EnumLiteMap<HealthDataTypeProto>() {
          @java.lang.Override
          public HealthDataTypeProto findValueByNumber(int number) {
            return HealthDataTypeProto.forNumber(number);
          }
        };

  public static com.google.protobuf.Internal.EnumVerifier 
      internalGetVerifier() {
    return HealthDataTypeProtoVerifier.INSTANCE;
  }

  private static final class HealthDataTypeProtoVerifier implements 
       com.google.protobuf.Internal.EnumVerifier { 
          static final com.google.protobuf.Internal.EnumVerifier           INSTANCE = new HealthDataTypeProtoVerifier();
          @java.lang.Override
          public boolean isInRange(int number) {
            return HealthDataTypeProto.forNumber(number) != null;
          }
        };

  private final int value;

  private HealthDataTypeProto(int value) {
    this.value = value;
  }

  // @@protoc_insertion_point(enum_scope:HealthDataTypeProto)
}

