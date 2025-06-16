import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/apple_health_permission.dart';

extension AppleHealthPermissionMappers on AppleHealthPermission {
  AppleHealthPermissionProto toProto() {
    return switch (this) {
      AppleHealthPermission.appleExerciseTime =>
        AppleHealthPermissionProto.APPLE_EXERCISE_TIME,
      AppleHealthPermission.appleMoveTime =>
        AppleHealthPermissionProto.APPLE_MOVE_TIME,
      AppleHealthPermission.appleStandTime =>
        AppleHealthPermissionProto.APPLE_STAND_TIME,
      AppleHealthPermission.basalEnergyBurned =>
        AppleHealthPermissionProto.BASAL_ENERGY_BURNED,
      AppleHealthPermission.activeEnergyBurned =>
        AppleHealthPermissionProto.ACTIVE_ENERGY_BURNED,
      AppleHealthPermission.stepCount => AppleHealthPermissionProto.STEP_COUNT,
      AppleHealthPermission.distanceCycling =>
        AppleHealthPermissionProto.DISTANCE_CYCLING,
      AppleHealthPermission.distanceWalkingRunning =>
        AppleHealthPermissionProto.DISTANCE_WALKING_RUNNING,
      AppleHealthPermission.distanceSwimming =>
        AppleHealthPermissionProto.DISTANCE_SWIMMING,
      AppleHealthPermission.swimmingStrokeCount =>
        AppleHealthPermissionProto.SWIMMING_STROKE_COUNT,
      AppleHealthPermission.flightsClimbed =>
        AppleHealthPermissionProto.FLIGHTS_CLIMBED,
      AppleHealthPermission.walkingSpeed =>
        AppleHealthPermissionProto.WALKING_SPEED,
      AppleHealthPermission.walkingStepLength =>
        AppleHealthPermissionProto.WALKING_STEP_LENGTH,
      AppleHealthPermission.runningPower =>
        AppleHealthPermissionProto.RUNNING_POWER,
      AppleHealthPermission.runningSpeed =>
        AppleHealthPermissionProto.RUNNING_SPEED,
      AppleHealthPermission.height => AppleHealthPermissionProto.HEIGHT,
      AppleHealthPermission.bodyMass => AppleHealthPermissionProto.BODY_MASS,
      AppleHealthPermission.bodyMassIndex =>
        AppleHealthPermissionProto.BODY_MASS_INDEX,
      AppleHealthPermission.waistCircumference =>
        AppleHealthPermissionProto.WAIST_CIRCUMFERENCE,
      AppleHealthPermission.bodyFatPercentage =>
        AppleHealthPermissionProto.BODY_FAT_PERCENTAGE,
      AppleHealthPermission.bodyTemperature =>
        AppleHealthPermissionProto.BODY_TEMPERATURE,
      AppleHealthPermission.basalBodyTemperature =>
        AppleHealthPermissionProto.BASAL_BODY_TEMPERATURE,
      AppleHealthPermission.appleSleepingWristTemperature =>
        AppleHealthPermissionProto.APPLE_SLEEPING_WRIST_TEMPERATURE,
      AppleHealthPermission.heartRate =>
        AppleHealthPermissionProto.HEART_RATE_APPLE,
      AppleHealthPermission.restingHeartRate =>
        AppleHealthPermissionProto.RESTING_HEART_RATE,
      AppleHealthPermission.walkingHeartRateAverage =>
        AppleHealthPermissionProto.WALKING_HEART_RATE_AVERAGE,
      AppleHealthPermission.heartRateVariabilitySDNN =>
        AppleHealthPermissionProto.HEART_RATE_VARIABILITY_SDNN,
      AppleHealthPermission.electrocardiogram =>
        AppleHealthPermissionProto.ELECTROCARDIOGRAM,
      AppleHealthPermission.workout => AppleHealthPermissionProto.WORKOUT,
      AppleHealthPermission.sleepAnalysis =>
        AppleHealthPermissionProto.SLEEP_ANALYSIS,
      AppleHealthPermission.sleepApneaEvent =>
        AppleHealthPermissionProto.SLEEP_APNEA_EVENT,
      AppleHealthPermission.vo2Max => AppleHealthPermissionProto.VO_2_MAX,
      AppleHealthPermission.oxygenSaturation =>
        AppleHealthPermissionProto.OXYGEN_SATURATION,
      AppleHealthPermission.respiratoryRate =>
        AppleHealthPermissionProto.RESPIRATORY_RATE,
      AppleHealthPermission.uvExposure =>
        AppleHealthPermissionProto.UV_EXPOSURE,
      AppleHealthPermission.biologicalSex =>
        AppleHealthPermissionProto.BIOLOGICAL_SEX,
      AppleHealthPermission.dateOfBirth =>
        AppleHealthPermissionProto.DATE_OF_BIRTH,
      AppleHealthPermission.bloodPressureSystolic =>
        AppleHealthPermissionProto.BLOOD_PRESSURE_SYSTOLIC,
      AppleHealthPermission.bloodPressureDiastolic =>
        AppleHealthPermissionProto.BLOOD_PRESSURE_DIASTOLIC,
      AppleHealthPermission.bloodGlucose =>
        AppleHealthPermissionProto.BLOOD_GLUCOSE_APPLE,
      AppleHealthPermission.dietaryEnergyConsumed =>
        AppleHealthPermissionProto.DIETARY_ENERGY_CONSUMED,
      AppleHealthPermission.dietaryProtein =>
        AppleHealthPermissionProto.DIETARY_PROTEIN,
      AppleHealthPermission.dietarySugar =>
        AppleHealthPermissionProto.DIETARY_SUGAR,
      AppleHealthPermission.dietaryFatTotal =>
        AppleHealthPermissionProto.DIETARY_FAT_TOTAL,
      AppleHealthPermission.dietaryCarbohydrates =>
        AppleHealthPermissionProto.DIETARY_CARBOHYDRATES,
      AppleHealthPermission.dietaryFiber =>
        AppleHealthPermissionProto.DIETARY_FIBER,
      AppleHealthPermission.dietarySodium =>
        AppleHealthPermissionProto.DIETARY_SODIUM,
      AppleHealthPermission.dietaryCholesterol =>
        AppleHealthPermissionProto.DIETARY_CHOLESTEROL,
    };
  }
}
