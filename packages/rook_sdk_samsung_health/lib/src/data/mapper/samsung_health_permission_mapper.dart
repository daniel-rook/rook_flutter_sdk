import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/enums/samsung_health_permission.dart';

extension SamsungHealthPermissionMappers on SamsungHealthPermission {
  SamsungHealthPermissionProto toProto() {
    return switch (this) {
      SamsungHealthPermission.activitySummary =>
        SamsungHealthPermissionProto.ACTIVITY_SUMMARY_PERMISSION,
      SamsungHealthPermission.bloodGlucose =>
        SamsungHealthPermissionProto.BLOOD_GLUCOSE_PERMISSION,
      SamsungHealthPermission.bloodOxygen =>
        SamsungHealthPermissionProto.BLOOD_OXYGEN_PERMISSION,
      SamsungHealthPermission.bloodPressure =>
        SamsungHealthPermissionProto.BLOOD_PRESSURE_PERMISSION,
      SamsungHealthPermission.bodyComposition =>
        SamsungHealthPermissionProto.BODY_COMPOSITION_PERMISSION,
      SamsungHealthPermission.exercise =>
        SamsungHealthPermissionProto.EXERCISE_PERMISSION,
      SamsungHealthPermission.exerciseLocation =>
        SamsungHealthPermissionProto.EXERCISE_LOCATION_PERMISSION,
      SamsungHealthPermission.floorsClimbed =>
        SamsungHealthPermissionProto.FLOORS_CLIMBED_PERMISSION,
      SamsungHealthPermission.heartRate =>
        SamsungHealthPermissionProto.HEART_RATE_PERMISSION,
      SamsungHealthPermission.nutrition =>
        SamsungHealthPermissionProto.NUTRITION_PERMISSION,
      SamsungHealthPermission.sleep =>
        SamsungHealthPermissionProto.SLEEP_PERMISSION,
      SamsungHealthPermission.steps =>
        SamsungHealthPermissionProto.STEPS_PERMISSION,
      SamsungHealthPermission.waterIntake =>
        SamsungHealthPermissionProto.WATER_INTAKE_PERMISSION,
    };
  }
}
