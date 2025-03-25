import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/event_sync_type_mapper.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_event_sync_type.dart';

void main() {
  group('EventSyncType to EventSyncTypeProto mappers', () {
    test(
      'GIVEN a EventSyncType.activity WHEN toProto THEN return EventSyncTypeProto.ACTIVITY',
      () {
        const eventSyncType = HCEventSyncType.activity;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.ACTIVITY);
      },
    );

    test(
      'GIVEN a EventSyncType.bloodGlucose WHEN toProto THEN return EventSyncTypeProto.BLOOD_GLUCOSE',
      () {
        const eventSyncType = HCEventSyncType.bloodGlucose;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BLOOD_GLUCOSE);
      },
    );

    test(
      'GIVEN a EventSyncType.bloodPressure WHEN toProto THEN return EventSyncTypeProto.BLOOD_PRESSURE',
      () {
        const eventSyncType = HCEventSyncType.bloodPressure;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BLOOD_PRESSURE);
      },
    );

    test(
      'GIVEN a EventSyncType.bodyMetrics WHEN toProto THEN return EventSyncTypeProto.BODY_METRICS',
      () {
        const eventSyncType = HCEventSyncType.bodyMetrics;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.BODY_METRICS);
      },
    );

    test(
      'GIVEN a EventSyncType.heartRate WHEN toProto THEN return EventSyncTypeProto.HEART_RATE',
      () {
        const eventSyncType = HCEventSyncType.heartRate;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.HEART_RATE);
      },
    );

    test(
      'GIVEN a EventSyncType.hydration WHEN toProto THEN return EventSyncTypeProto.HYDRATION',
      () {
        const eventSyncType = HCEventSyncType.hydration;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.HYDRATION);
      },
    );

    test(
      'GIVEN a EventSyncType.nutrition WHEN toProto THEN return EventSyncTypeProto.NUTRITION',
      () {
        const eventSyncType = HCEventSyncType.nutrition;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.NUTRITION);
      },
    );

    test(
      'GIVEN a EventSyncType.oxygenation WHEN toProto THEN return EventSyncTypeProto.OXYGENATION',
      () {
        const eventSyncType = HCEventSyncType.oxygenation;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.OXYGENATION);
      },
    );

    test(
      'GIVEN a EventSyncType.temperature WHEN toProto THEN return EventSyncTypeProto.TEMPERATURE',
      () {
        const eventSyncType = HCEventSyncType.temperature;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.TEMPERATURE);
      },
    );

    test(
      'GIVEN a EventSyncType.steps WHEN toProto THEN return EventSyncTypeProto.STEPS',
      () {
        const eventSyncType = HCEventSyncType.steps;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.STEPS);
      },
    );

    test(
      'GIVEN a EventSyncType.calories WHEN toProto THEN return EventSyncTypeProto.CALORIES',
      () {
        const eventSyncType = HCEventSyncType.calories;

        final result = eventSyncType.toProto();

        expect(result, EventSyncTypeProto.CALORIES);
      },
    );
  });
}
