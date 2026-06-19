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
      AppleHealthPermission.stairAscentSpeed =>
        AppleHealthPermissionProto.STAIR_ASCENT_SPEED,
      AppleHealthPermission.cyclingPower =>
        AppleHealthPermissionProto.CYCLING_POWER,
      AppleHealthPermission.cyclingSpeed =>
        AppleHealthPermissionProto.CYCLING_SPEED,
      AppleHealthPermission.waterTemperature =>
        AppleHealthPermissionProto.WATER_TEMPERATURE,
      AppleHealthPermission.workoutRoute =>
        AppleHealthPermissionProto.WORKOUT_ROUTE,
      AppleHealthPermission.dietaryBiotin =>
        AppleHealthPermissionProto.DIETARY_BIOTIN,
      AppleHealthPermission.dietaryCaffeine =>
        AppleHealthPermissionProto.DIETARY_CAFFEINE,
      AppleHealthPermission.dietaryCalcium =>
        AppleHealthPermissionProto.DIETARY_CALCIUM,
      AppleHealthPermission.dietaryChloride =>
        AppleHealthPermissionProto.DIETARY_CHLORIDE,
      AppleHealthPermission.dietaryChromium =>
        AppleHealthPermissionProto.DIETARY_CHROMIUM,
      AppleHealthPermission.dietaryCopper =>
        AppleHealthPermissionProto.DIETARY_COPPER,
      AppleHealthPermission.dietaryFatMonounsaturated =>
        AppleHealthPermissionProto.DIETARY_FAT_MONOUNSATURATED,
      AppleHealthPermission.dietaryFatPolyunsaturated =>
        AppleHealthPermissionProto.DIETARY_FAT_POLYUNSATURATED,
      AppleHealthPermission.dietaryFatSaturated =>
        AppleHealthPermissionProto.DIETARY_FAT_SATURATED,
      AppleHealthPermission.dietaryFolate =>
        AppleHealthPermissionProto.DIETARY_FOLATE,
      AppleHealthPermission.dietaryIodine =>
        AppleHealthPermissionProto.DIETARY_IODINE,
      AppleHealthPermission.dietaryIron =>
        AppleHealthPermissionProto.DIETARY_IRON,
      AppleHealthPermission.dietaryMagnesium =>
        AppleHealthPermissionProto.DIETARY_MAGNESIUM,
      AppleHealthPermission.dietaryManganese =>
        AppleHealthPermissionProto.DIETARY_MANGANESE,
      AppleHealthPermission.dietaryMolybdenum =>
        AppleHealthPermissionProto.DIETARY_MOLYBDENUM,
      AppleHealthPermission.dietaryNiacin =>
        AppleHealthPermissionProto.DIETARY_NIACIN,
      AppleHealthPermission.dietaryPantothenicAcid =>
        AppleHealthPermissionProto.DIETARY_PANTOTHENIC_ACID,
      AppleHealthPermission.dietaryPhosphorus =>
        AppleHealthPermissionProto.DIETARY_PHOSPHORUS,
      AppleHealthPermission.dietaryPotassium =>
        AppleHealthPermissionProto.DIETARY_POTASSIUM,
      AppleHealthPermission.dietaryRiboflavin =>
        AppleHealthPermissionProto.DIETARY_RIBOFLAVIN,
      AppleHealthPermission.dietarySelenium =>
        AppleHealthPermissionProto.DIETARY_SELENIUM,
      AppleHealthPermission.dietaryThiamin =>
        AppleHealthPermissionProto.DIETARY_THIAMIN,
      AppleHealthPermission.dietaryVitaminA =>
        AppleHealthPermissionProto.DIETARY_VITAMIN_A,
      AppleHealthPermission.dietaryVitaminB12 =>
        AppleHealthPermissionProto.DIETARY_VITAMIN_B12,
      AppleHealthPermission.dietaryVitaminB6 =>
        AppleHealthPermissionProto.DIETARY_VITAMIN_B6,
      AppleHealthPermission.dietaryVitaminC =>
        AppleHealthPermissionProto.DIETARY_VITAMIN_C,
      AppleHealthPermission.dietaryVitaminD =>
        AppleHealthPermissionProto.DIETARY_VITAMIN_D,
      AppleHealthPermission.dietaryVitaminE =>
        AppleHealthPermissionProto.DIETARY_VITAMIN_E,
      AppleHealthPermission.dietaryVitaminK =>
        AppleHealthPermissionProto.DIETARY_VITAMIN_K,
      AppleHealthPermission.dietaryWater =>
        AppleHealthPermissionProto.DIETARY_WATER,
      AppleHealthPermission.dietaryZinc =>
        AppleHealthPermissionProto.DIETARY_ZINC,
      AppleHealthPermission.estimatedWorkoutEffortScore =>
        AppleHealthPermissionProto.ESTIMATED_WORKOUT_EFFORT_SCORE,
      AppleHealthPermission.physicalEffort =>
        AppleHealthPermissionProto.PHYSICAL_EFFORT,
      AppleHealthPermission.workoutEffortScore =>
        AppleHealthPermissionProto.WORKOUT_EFFORT_SCORE,
    };
  }
}
