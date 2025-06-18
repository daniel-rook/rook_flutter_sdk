import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/samsung_health_permission_mapper.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_permission.dart';

void main() {
  group('SamsungHealthPermissionMappers', () {
    test('toProto maps all SamsungHealthPermission values correctly', () {
      // Iterate through all SamsungHealthPermission enum values
      for (final permission in SamsungHealthPermission.values) {
        SamsungHealthPermissionProto expectedProto;

        // Determine the expected SamsungHealthPermissionProto based on the current SamsungHealthPermission
        switch (permission) {
          case SamsungHealthPermission.activitySummary:
            expectedProto =
                SamsungHealthPermissionProto.ACTIVITY_SUMMARY_PERMISSION;
          case SamsungHealthPermission.bloodGlucose:
            expectedProto =
                SamsungHealthPermissionProto.BLOOD_GLUCOSE_PERMISSION;
          case SamsungHealthPermission.bloodOxygen:
            expectedProto =
                SamsungHealthPermissionProto.BLOOD_OXYGEN_PERMISSION;
          case SamsungHealthPermission.bloodPressure:
            expectedProto =
                SamsungHealthPermissionProto.BLOOD_PRESSURE_PERMISSION;
          case SamsungHealthPermission.bodyComposition:
            expectedProto =
                SamsungHealthPermissionProto.BODY_COMPOSITION_PERMISSION;
          case SamsungHealthPermission.exercise:
            expectedProto = SamsungHealthPermissionProto.EXERCISE_PERMISSION;
          case SamsungHealthPermission.exerciseLocation:
            expectedProto =
                SamsungHealthPermissionProto.EXERCISE_LOCATION_PERMISSION;
          case SamsungHealthPermission.floorsClimbed:
            expectedProto =
                SamsungHealthPermissionProto.FLOORS_CLIMBED_PERMISSION;
          case SamsungHealthPermission.heartRate:
            expectedProto = SamsungHealthPermissionProto.HEART_RATE_PERMISSION;
          case SamsungHealthPermission.nutrition:
            expectedProto = SamsungHealthPermissionProto.NUTRITION_PERMISSION;
          case SamsungHealthPermission.sleep:
            expectedProto = SamsungHealthPermissionProto.SLEEP_PERMISSION;
          case SamsungHealthPermission.steps:
            expectedProto = SamsungHealthPermissionProto.STEPS_PERMISSION;
          case SamsungHealthPermission.waterIntake:
            expectedProto =
                SamsungHealthPermissionProto.WATER_INTAKE_PERMISSION;
        }

        expect(
          permission.toProto(),
          expectedProto,
          reason: 'Mapping for $permission should be $expectedProto',
        );
      }
    });
  });
}
