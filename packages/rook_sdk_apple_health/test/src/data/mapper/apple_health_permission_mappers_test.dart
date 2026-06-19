import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/apple_health_permission_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pbenum.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/apple_health_permission.dart';

void main() {
  group('AppleHealthPermissionMappers', () {
    test('toProto maps all AppleHealthPermission values correctly', () {
      // Iterate through all AppleHealthPermission enum values
      for (final permission in AppleHealthPermission.values) {
        AppleHealthPermissionProto expectedProto;

        // Determine the expected AppleHealthPermissionProto based on the current AppleHealthPermission
        switch (permission) {
          case AppleHealthPermission.appleExerciseTime:
            expectedProto = AppleHealthPermissionProto.APPLE_EXERCISE_TIME;
            break;
          case AppleHealthPermission.appleMoveTime:
            expectedProto = AppleHealthPermissionProto.APPLE_MOVE_TIME;
            break;
          case AppleHealthPermission.appleStandTime:
            expectedProto = AppleHealthPermissionProto.APPLE_STAND_TIME;
            break;
          case AppleHealthPermission.basalEnergyBurned:
            expectedProto = AppleHealthPermissionProto.BASAL_ENERGY_BURNED;
            break;
          case AppleHealthPermission.activeEnergyBurned:
            expectedProto = AppleHealthPermissionProto.ACTIVE_ENERGY_BURNED;
            break;
          case AppleHealthPermission.stepCount:
            expectedProto = AppleHealthPermissionProto.STEP_COUNT;
            break;
          case AppleHealthPermission.distanceCycling:
            expectedProto = AppleHealthPermissionProto.DISTANCE_CYCLING;
            break;
          case AppleHealthPermission.distanceWalkingRunning:
            expectedProto = AppleHealthPermissionProto.DISTANCE_WALKING_RUNNING;
            break;
          case AppleHealthPermission.distanceSwimming:
            expectedProto = AppleHealthPermissionProto.DISTANCE_SWIMMING;
            break;
          case AppleHealthPermission.swimmingStrokeCount:
            expectedProto = AppleHealthPermissionProto.SWIMMING_STROKE_COUNT;
            break;
          case AppleHealthPermission.flightsClimbed:
            expectedProto = AppleHealthPermissionProto.FLIGHTS_CLIMBED;
            break;
          case AppleHealthPermission.walkingSpeed:
            expectedProto = AppleHealthPermissionProto.WALKING_SPEED;
            break;
          case AppleHealthPermission.walkingStepLength:
            expectedProto = AppleHealthPermissionProto.WALKING_STEP_LENGTH;
            break;
          case AppleHealthPermission.runningPower:
            expectedProto = AppleHealthPermissionProto.RUNNING_POWER;
            break;
          case AppleHealthPermission.runningSpeed:
            expectedProto = AppleHealthPermissionProto.RUNNING_SPEED;
            break;
          case AppleHealthPermission.height:
            expectedProto = AppleHealthPermissionProto.HEIGHT;
            break;
          case AppleHealthPermission.bodyMass:
            expectedProto = AppleHealthPermissionProto.BODY_MASS;
            break;
          case AppleHealthPermission.bodyMassIndex:
            expectedProto = AppleHealthPermissionProto.BODY_MASS_INDEX;
            break;
          case AppleHealthPermission.waistCircumference:
            expectedProto = AppleHealthPermissionProto.WAIST_CIRCUMFERENCE;
            break;
          case AppleHealthPermission.bodyFatPercentage:
            expectedProto = AppleHealthPermissionProto.BODY_FAT_PERCENTAGE;
            break;
          case AppleHealthPermission.bodyTemperature:
            expectedProto = AppleHealthPermissionProto.BODY_TEMPERATURE;
            break;
          case AppleHealthPermission.basalBodyTemperature:
            expectedProto = AppleHealthPermissionProto.BASAL_BODY_TEMPERATURE;
            break;
          case AppleHealthPermission.appleSleepingWristTemperature:
            expectedProto =
                AppleHealthPermissionProto.APPLE_SLEEPING_WRIST_TEMPERATURE;
            break;
          case AppleHealthPermission.heartRate:
            expectedProto = AppleHealthPermissionProto.HEART_RATE_APPLE;
            break;
          case AppleHealthPermission.restingHeartRate:
            expectedProto = AppleHealthPermissionProto.RESTING_HEART_RATE;
            break;
          case AppleHealthPermission.walkingHeartRateAverage:
            expectedProto =
                AppleHealthPermissionProto.WALKING_HEART_RATE_AVERAGE;
            break;
          case AppleHealthPermission.heartRateVariabilitySDNN:
            expectedProto =
                AppleHealthPermissionProto.HEART_RATE_VARIABILITY_SDNN;
            break;
          case AppleHealthPermission.electrocardiogram:
            expectedProto = AppleHealthPermissionProto.ELECTROCARDIOGRAM;
            break;
          case AppleHealthPermission.workout:
            expectedProto = AppleHealthPermissionProto.WORKOUT;
            break;
          case AppleHealthPermission.sleepAnalysis:
            expectedProto = AppleHealthPermissionProto.SLEEP_ANALYSIS;
            break;
          case AppleHealthPermission.sleepApneaEvent:
            expectedProto = AppleHealthPermissionProto.SLEEP_APNEA_EVENT;
            break;
          case AppleHealthPermission.vo2Max:
            expectedProto = AppleHealthPermissionProto.VO_2_MAX;
            break;
          case AppleHealthPermission.oxygenSaturation:
            expectedProto = AppleHealthPermissionProto.OXYGEN_SATURATION;
            break;
          case AppleHealthPermission.respiratoryRate:
            expectedProto = AppleHealthPermissionProto.RESPIRATORY_RATE;
            break;
          case AppleHealthPermission.uvExposure:
            expectedProto = AppleHealthPermissionProto.UV_EXPOSURE;
            break;
          case AppleHealthPermission.biologicalSex:
            expectedProto = AppleHealthPermissionProto.BIOLOGICAL_SEX;
            break;
          case AppleHealthPermission.dateOfBirth:
            expectedProto = AppleHealthPermissionProto.DATE_OF_BIRTH;
            break;
          case AppleHealthPermission.bloodPressureSystolic:
            expectedProto = AppleHealthPermissionProto.BLOOD_PRESSURE_SYSTOLIC;
            break;
          case AppleHealthPermission.bloodPressureDiastolic:
            expectedProto = AppleHealthPermissionProto.BLOOD_PRESSURE_DIASTOLIC;
            break;
          case AppleHealthPermission.bloodGlucose:
            expectedProto = AppleHealthPermissionProto.BLOOD_GLUCOSE_APPLE;
            break;
          case AppleHealthPermission.dietaryEnergyConsumed:
            expectedProto = AppleHealthPermissionProto.DIETARY_ENERGY_CONSUMED;
            break;
          case AppleHealthPermission.dietaryProtein:
            expectedProto = AppleHealthPermissionProto.DIETARY_PROTEIN;
            break;
          case AppleHealthPermission.dietarySugar:
            expectedProto = AppleHealthPermissionProto.DIETARY_SUGAR;
            break;
          case AppleHealthPermission.dietaryFatTotal:
            expectedProto = AppleHealthPermissionProto.DIETARY_FAT_TOTAL;
            break;
          case AppleHealthPermission.dietaryCarbohydrates:
            expectedProto = AppleHealthPermissionProto.DIETARY_CARBOHYDRATES;
            break;
          case AppleHealthPermission.dietaryFiber:
            expectedProto = AppleHealthPermissionProto.DIETARY_FIBER;
            break;
          case AppleHealthPermission.dietarySodium:
            expectedProto = AppleHealthPermissionProto.DIETARY_SODIUM;
            break;
          case AppleHealthPermission.dietaryCholesterol:
            expectedProto = AppleHealthPermissionProto.DIETARY_CHOLESTEROL;
            break;
          case AppleHealthPermission.stairAscentSpeed:
            expectedProto = AppleHealthPermissionProto.STAIR_ASCENT_SPEED;
            break;
          case AppleHealthPermission.cyclingPower:
            expectedProto = AppleHealthPermissionProto.CYCLING_POWER;
            break;
          case AppleHealthPermission.cyclingSpeed:
            expectedProto = AppleHealthPermissionProto.CYCLING_SPEED;
            break;
          case AppleHealthPermission.waterTemperature:
            expectedProto = AppleHealthPermissionProto.WATER_TEMPERATURE;
            break;
          case AppleHealthPermission.workoutRoute:
            expectedProto = AppleHealthPermissionProto.WORKOUT_ROUTE;
            break;
          case AppleHealthPermission.dietaryBiotin:
            expectedProto = AppleHealthPermissionProto.DIETARY_BIOTIN;
            break;
          case AppleHealthPermission.dietaryCaffeine:
            expectedProto = AppleHealthPermissionProto.DIETARY_CAFFEINE;
            break;
          case AppleHealthPermission.dietaryCalcium:
            expectedProto = AppleHealthPermissionProto.DIETARY_CALCIUM;
            break;
          case AppleHealthPermission.dietaryChloride:
            expectedProto = AppleHealthPermissionProto.DIETARY_CHLORIDE;
            break;
          case AppleHealthPermission.dietaryChromium:
            expectedProto = AppleHealthPermissionProto.DIETARY_CHROMIUM;
            break;
          case AppleHealthPermission.dietaryCopper:
            expectedProto = AppleHealthPermissionProto.DIETARY_COPPER;
            break;
          case AppleHealthPermission.dietaryFatMonounsaturated:
            expectedProto =
                AppleHealthPermissionProto.DIETARY_FAT_MONOUNSATURATED;
            break;
          case AppleHealthPermission.dietaryFatPolyunsaturated:
            expectedProto =
                AppleHealthPermissionProto.DIETARY_FAT_POLYUNSATURATED;
            break;
          case AppleHealthPermission.dietaryFatSaturated:
            expectedProto = AppleHealthPermissionProto.DIETARY_FAT_SATURATED;
            break;
          case AppleHealthPermission.dietaryFolate:
            expectedProto = AppleHealthPermissionProto.DIETARY_FOLATE;
            break;
          case AppleHealthPermission.dietaryIodine:
            expectedProto = AppleHealthPermissionProto.DIETARY_IODINE;
            break;
          case AppleHealthPermission.dietaryIron:
            expectedProto = AppleHealthPermissionProto.DIETARY_IRON;
            break;
          case AppleHealthPermission.dietaryMagnesium:
            expectedProto = AppleHealthPermissionProto.DIETARY_MAGNESIUM;
            break;
          case AppleHealthPermission.dietaryManganese:
            expectedProto = AppleHealthPermissionProto.DIETARY_MANGANESE;
            break;
          case AppleHealthPermission.dietaryMolybdenum:
            expectedProto = AppleHealthPermissionProto.DIETARY_MOLYBDENUM;
            break;
          case AppleHealthPermission.dietaryNiacin:
            expectedProto = AppleHealthPermissionProto.DIETARY_NIACIN;
            break;
          case AppleHealthPermission.dietaryPantothenicAcid:
            expectedProto = AppleHealthPermissionProto.DIETARY_PANTOTHENIC_ACID;
            break;
          case AppleHealthPermission.dietaryPhosphorus:
            expectedProto = AppleHealthPermissionProto.DIETARY_PHOSPHORUS;
            break;
          case AppleHealthPermission.dietaryPotassium:
            expectedProto = AppleHealthPermissionProto.DIETARY_POTASSIUM;
            break;
          case AppleHealthPermission.dietaryRiboflavin:
            expectedProto = AppleHealthPermissionProto.DIETARY_RIBOFLAVIN;
            break;
          case AppleHealthPermission.dietarySelenium:
            expectedProto = AppleHealthPermissionProto.DIETARY_SELENIUM;
            break;
          case AppleHealthPermission.dietaryThiamin:
            expectedProto = AppleHealthPermissionProto.DIETARY_THIAMIN;
            break;
          case AppleHealthPermission.dietaryVitaminA:
            expectedProto = AppleHealthPermissionProto.DIETARY_VITAMIN_A;
            break;
          case AppleHealthPermission.dietaryVitaminB12:
            expectedProto = AppleHealthPermissionProto.DIETARY_VITAMIN_B12;
            break;
          case AppleHealthPermission.dietaryVitaminB6:
            expectedProto = AppleHealthPermissionProto.DIETARY_VITAMIN_B6;
            break;
          case AppleHealthPermission.dietaryVitaminC:
            expectedProto = AppleHealthPermissionProto.DIETARY_VITAMIN_C;
            break;
          case AppleHealthPermission.dietaryVitaminD:
            expectedProto = AppleHealthPermissionProto.DIETARY_VITAMIN_D;
            break;
          case AppleHealthPermission.dietaryVitaminE:
            expectedProto = AppleHealthPermissionProto.DIETARY_VITAMIN_E;
            break;
          case AppleHealthPermission.dietaryVitaminK:
            expectedProto = AppleHealthPermissionProto.DIETARY_VITAMIN_K;
            break;
          case AppleHealthPermission.dietaryWater:
            expectedProto = AppleHealthPermissionProto.DIETARY_WATER;
            break;
          case AppleHealthPermission.dietaryZinc:
            expectedProto = AppleHealthPermissionProto.DIETARY_ZINC;
            break;
          case AppleHealthPermission.estimatedWorkoutEffortScore:
            expectedProto =
                AppleHealthPermissionProto.ESTIMATED_WORKOUT_EFFORT_SCORE;
            break;
          case AppleHealthPermission.physicalEffort:
            expectedProto = AppleHealthPermissionProto.PHYSICAL_EFFORT;
            break;
          case AppleHealthPermission.workoutEffortScore:
            expectedProto = AppleHealthPermissionProto.WORKOUT_EFFORT_SCORE;
            break;
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
