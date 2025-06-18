import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/sh_event_sync_type.dart';

void main() {
  group('EventSyncType to EventSyncTypeProto mappers', () {
    test(
      'GIVEN a EventSyncType.activity WHEN toProto THEN return EventSyncTypeProto.ACTIVITY',
      () {
        const eventSyncType = SHEventSyncType.activity;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.ACTIVITY);
      },
    );

    test(
      'GIVEN a EventSyncType.bloodGlucose WHEN toProto THEN return EventSyncTypeProto.BLOOD_GLUCOSE',
      () {
        const eventSyncType = SHEventSyncType.bloodGlucose;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BLOOD_GLUCOSE);
      },
    );

    test(
      'GIVEN a EventSyncType.bloodPressure WHEN toProto THEN return EventSyncTypeProto.BLOOD_PRESSURE',
      () {
        const eventSyncType = SHEventSyncType.bloodPressure;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BLOOD_PRESSURE);
      },
    );

    test(
      'GIVEN a EventSyncType.bodyMetrics WHEN toProto THEN return EventSyncTypeProto.BODY_METRICS',
      () {
        const eventSyncType = SHEventSyncType.bodyMetrics;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BODY_METRICS);
      },
    );

    test(
      'GIVEN a EventSyncType.heartRate WHEN toProto THEN return EventSyncTypeProto.HEART_RATE',
      () {
        const eventSyncType = SHEventSyncType.heartRate;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.HEART_RATE);
      },
    );

    test(
      'GIVEN a EventSyncType.hydration WHEN toProto THEN return EventSyncTypeProto.HYDRATION',
      () {
        const eventSyncType = SHEventSyncType.hydration;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.HYDRATION);
      },
    );

    test(
      'GIVEN a EventSyncType.nutrition WHEN toProto THEN return EventSyncTypeProto.NUTRITION',
      () {
        const eventSyncType = SHEventSyncType.nutrition;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.NUTRITION);
      },
    );

    test(
      'GIVEN a EventSyncType.oxygenation WHEN toProto THEN return EventSyncTypeProto.OXYGENATION',
      () {
        const eventSyncType = SHEventSyncType.oxygenation;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.OXYGENATION);
      },
    );

    test(
      'GIVEN a EventSyncType.steps WHEN toProto THEN return EventSyncTypeProto.STEPS',
      () {
        const eventSyncType = SHEventSyncType.steps;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.STEPS);
      },
    );

    test(
      'GIVEN a EventSyncType.calories WHEN toProto THEN return EventSyncTypeProto.CALORIES',
      () {
        const eventSyncType = SHEventSyncType.calories;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.CALORIES);
      },
    );
  });
}
