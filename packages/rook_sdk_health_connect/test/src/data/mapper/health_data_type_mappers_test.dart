import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/health_data_type_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_data_type.dart';

void main() {
  group('HCHealthDataType to HealthDataTypeProto mappers', () {
    test(
      'GIVEN a HCHealthDataType.sleepSummary WHEN toProto THEN return HealthDataTypeProto.SLEEP_SUMMARY',
      () {
        const healthDataType = HCHealthDataType.sleepSummary;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.SLEEP_SUMMARY);
      },
    );

    test(
      'GIVEN a HCHealthDataType.physicalSummary WHEN toProto THEN return HealthDataTypeProto.PHYSICAL_SUMMARY',
      () {
        const healthDataType = HCHealthDataType.physicalSummary;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.PHYSICAL_SUMMARY);
      },
    );

    test(
      'GIVEN a HCHealthDataType.bodySummary WHEN toProto THEN return HealthDataTypeProto.BODY_SUMMARY',
      () {
        const healthDataType = HCHealthDataType.bodySummary;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.BODY_SUMMARY);
      },
    );

    test(
      'GIVEN a HCHealthDataType.physicalEvent WHEN toProto THEN return HealthDataTypeProto.PHYSICAL_EVENT',
      () {
        const healthDataType = HCHealthDataType.physicalEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.PHYSICAL_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.bloodGlucoseBodyEvent WHEN toProto THEN return HealthDataTypeProto.BLOOD_GLUCOSE_BODY_EVENT',
      () {
        const healthDataType = HCHealthDataType.bloodGlucoseBodyEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.BLOOD_GLUCOSE_BODY_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.bloodPressureBodyEvent WHEN toProto THEN return HealthDataTypeProto.BLOOD_PRESSURE_BODY_EVENT',
      () {
        const healthDataType = HCHealthDataType.bloodPressureBodyEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.BLOOD_PRESSURE_BODY_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.bodyMetricsEvent WHEN toProto THEN return HealthDataTypeProto.BODY_METRICS_EVENT',
      () {
        const healthDataType = HCHealthDataType.bodyMetricsEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.BODY_METRICS_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.heartRateBodyEvent WHEN toProto THEN return HealthDataTypeProto.HEART_RATE_BODY_EVENT',
      () {
        const healthDataType = HCHealthDataType.heartRateBodyEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.HEART_RATE_BODY_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.heartRatePhysicalEvent WHEN toProto THEN return HealthDataTypeProto.HEART_RATE_PHYSICAL_EVENT',
      () {
        const healthDataType = HCHealthDataType.heartRatePhysicalEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.HEART_RATE_PHYSICAL_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.hydrationBodyEvent WHEN toProto THEN return HealthDataTypeProto.HYDRATION_BODY_EVENT',
      () {
        const healthDataType = HCHealthDataType.hydrationBodyEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.HYDRATION_BODY_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.nutritionBodyEvent WHEN toProto THEN return HealthDataTypeProto.NUTRITION_BODY_EVENT',
      () {
        const healthDataType = HCHealthDataType.nutritionBodyEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.NUTRITION_BODY_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.oxygenationBodyEvent WHEN toProto THEN return HealthDataTypeProto.OXYGENATION_BODY_EVENT',
      () {
        const healthDataType = HCHealthDataType.oxygenationBodyEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.OXYGENATION_BODY_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.oxygenationPhysicalEvent WHEN toProto THEN return HealthDataTypeProto.OXYGENATION_PHYSICAL_EVENT',
      () {
        const healthDataType = HCHealthDataType.oxygenationPhysicalEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.OXYGENATION_PHYSICAL_EVENT);
      },
    );

    test(
      'GIVEN a HCHealthDataType.temperatureBodyEvent WHEN toProto THEN return HealthDataTypeProto.TEMPERATURE_BODY_EVENT',
      () {
        const healthDataType = HCHealthDataType.temperatureBodyEvent;

        final result = healthDataType.toProto();

        expect(result, HealthDataTypeProto.TEMPERATURE_BODY_EVENT);
      },
    );
  });
}
