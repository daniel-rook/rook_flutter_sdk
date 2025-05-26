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
