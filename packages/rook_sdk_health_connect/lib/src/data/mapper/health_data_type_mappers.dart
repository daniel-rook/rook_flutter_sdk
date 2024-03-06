import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_data_type.dart';

extension HealthDataTypeMappers on HCHealthDataType {
  HealthDataTypeProto toProto() {
    return switch (this) {
      HCHealthDataType.sleepSummary => HealthDataTypeProto.SLEEP_SUMMARY,
      HCHealthDataType.physicalSummary => HealthDataTypeProto.PHYSICAL_SUMMARY,
      HCHealthDataType.bodySummary => HealthDataTypeProto.BODY_SUMMARY,
      HCHealthDataType.physicalEvent => HealthDataTypeProto.PHYSICAL_EVENT,
      HCHealthDataType.bloodGlucoseBodyEvent =>
        HealthDataTypeProto.BLOOD_GLUCOSE_BODY_EVENT,
      HCHealthDataType.bloodPressureBodyEvent =>
        HealthDataTypeProto.BLOOD_PRESSURE_BODY_EVENT,
      HCHealthDataType.bodyMetricsEvent =>
        HealthDataTypeProto.BODY_METRICS_EVENT,
      HCHealthDataType.heartRateBodyEvent =>
        HealthDataTypeProto.HEART_RATE_BODY_EVENT,
      HCHealthDataType.heartRatePhysicalEvent =>
        HealthDataTypeProto.HEART_RATE_PHYSICAL_EVENT,
      HCHealthDataType.hydrationBodyEvent =>
        HealthDataTypeProto.HYDRATION_BODY_EVENT,
      HCHealthDataType.nutritionBodyEvent =>
        HealthDataTypeProto.NUTRITION_BODY_EVENT,
      HCHealthDataType.oxygenationBodyEvent =>
        HealthDataTypeProto.OXYGENATION_BODY_EVENT,
      HCHealthDataType.oxygenationPhysicalEvent =>
        HealthDataTypeProto.OXYGENATION_PHYSICAL_EVENT,
      HCHealthDataType.temperatureBodyEvent =>
        HealthDataTypeProto.TEMPERATURE_BODY_EVENT,
    };
  }
}
