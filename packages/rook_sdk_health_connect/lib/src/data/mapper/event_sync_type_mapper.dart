import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_event_sync_type.dart';

extension SummarySyncTypeMapperExtensions on HCEventSyncType {
  EventSyncTypeProto toProto() {
    return switch (this) {
      HCEventSyncType.activity => EventSyncTypeProto.ACTIVITY,
      HCEventSyncType.bloodGlucose => EventSyncTypeProto.BLOOD_GLUCOSE,
      HCEventSyncType.bloodPressure => EventSyncTypeProto.BLOOD_PRESSURE,
      HCEventSyncType.bodyMetrics => EventSyncTypeProto.BODY_METRICS,
      HCEventSyncType.heartRate => EventSyncTypeProto.HEART_RATE,
      HCEventSyncType.hydration => EventSyncTypeProto.HYDRATION,
      HCEventSyncType.nutrition => EventSyncTypeProto.NUTRITION,
      HCEventSyncType.oxygenation => EventSyncTypeProto.OXYGENATION,
      HCEventSyncType.temperature => EventSyncTypeProto.TEMPERATURE,
      HCEventSyncType.steps => EventSyncTypeProto.STEPS,
      HCEventSyncType.calories => EventSyncTypeProto.CALORIES,
    };
  }
}
