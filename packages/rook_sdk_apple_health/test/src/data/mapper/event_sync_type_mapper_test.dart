import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_event_sync_type.dart';

void main() {
  group('EventSyncType to EventSyncTypeProto mappers', () {
    test(
      'GIVEN a EventSyncType.activity WHEN toProto THEN return EventSyncTypeProto.ACTIVITY',
      () {
        const eventSyncType = AHEventSyncType.activity;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.ACTIVITY);
      },
    );

    test(
      'GIVEN a EventSyncType.bloodGlucose WHEN toProto THEN return EventSyncTypeProto.BLOOD_GLUCOSE',
      () {
        const eventSyncType = AHEventSyncType.bloodGlucose;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BLOOD_GLUCOSE);
      },
    );

    test(
      'GIVEN a EventSyncType.bloodPressure WHEN toProto THEN return EventSyncTypeProto.BLOOD_PRESSURE',
      () {
        const eventSyncType = AHEventSyncType.bloodPressure;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BLOOD_PRESSURE);
      },
    );

    test(
      'GIVEN a EventSyncType.bodyMetrics WHEN toProto THEN return EventSyncTypeProto.BODY_METRICS',
      () {
        const eventSyncType = AHEventSyncType.bodyMetrics;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BODY_METRICS);
      },
    );

    test(
      'GIVEN a EventSyncType.heartRate WHEN toProto THEN return EventSyncTypeProto.HEART_RATE',
      () {
        const eventSyncType = AHEventSyncType.heartRate;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.HEART_RATE);
      },
    );

    test(
      'GIVEN a EventSyncType.oxygenation WHEN toProto THEN return EventSyncTypeProto.OXYGENATION',
      () {
        const eventSyncType = AHEventSyncType.oxygenation;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.OXYGENATION);
      },
    );

    test(
      'GIVEN a EventSyncType.temperature WHEN toProto THEN return EventSyncTypeProto.TEMPERATURE',
      () {
        const eventSyncType = AHEventSyncType.temperature;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.TEMPERATURE);
      },
    );
  });
}
