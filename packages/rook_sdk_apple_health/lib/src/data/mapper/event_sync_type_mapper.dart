import 'package:rook_sdk_apple_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';

extension SummarySyncTypeMapperExtensions on AHEventSyncType {
  EventSyncTypeProto toProto() {
    return switch (this) {
      AHEventSyncType.activity => EventSyncTypeProto.ACTIVITY,
      AHEventSyncType.bloodGlucose => EventSyncTypeProto.BLOOD_GLUCOSE,
      AHEventSyncType.bloodPressure => EventSyncTypeProto.BLOOD_PRESSURE,
      AHEventSyncType.bodyMetrics => EventSyncTypeProto.BODY_METRICS,
      AHEventSyncType.heartRate => EventSyncTypeProto.HEART_RATE,
      AHEventSyncType.oxygenation => EventSyncTypeProto.OXYGENATION,
      AHEventSyncType.temperature => EventSyncTypeProto.TEMPERATURE,
    };
  }
}
