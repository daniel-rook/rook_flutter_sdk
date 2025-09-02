import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_event_sync_type.dart';

extension SummarySyncTypeMapperExtensions on SHEventSyncType {
  EventSyncTypeProto toProto() {
    return switch (this) {
      SHEventSyncType.activity => EventSyncTypeProto.ACTIVITY,
      SHEventSyncType.bloodGlucose => EventSyncTypeProto.BLOOD_GLUCOSE,
      SHEventSyncType.bloodPressure => EventSyncTypeProto.BLOOD_PRESSURE,
      SHEventSyncType.bodyMetrics => EventSyncTypeProto.BODY_METRICS,
      SHEventSyncType.heartRate => EventSyncTypeProto.HEART_RATE,
      SHEventSyncType.hydration => EventSyncTypeProto.HYDRATION,
      SHEventSyncType.nutrition => EventSyncTypeProto.NUTRITION,
      SHEventSyncType.oxygenation => EventSyncTypeProto.OXYGENATION,
      SHEventSyncType.steps => EventSyncTypeProto.STEPS,
      SHEventSyncType.calories => EventSyncTypeProto.CALORIES,
    };
  }
}
