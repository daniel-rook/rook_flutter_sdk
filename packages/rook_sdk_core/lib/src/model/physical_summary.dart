import 'package:rook_sdk_core/src/model/granular/active_steps_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/activity_level_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/elevation_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/floors_climbed_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hr_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hrv_rmssd_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hrv_sdnn_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/saturation_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/steps_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/stress_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/swimming_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/traveled_distance_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/vo2_granular_data.dart';

class PhysicalSummary {
  final DateTime dateTime;
  final String sourceOfData;
  final bool wasTheUserUnderPhysicalActivity;
  final int? activeSeconds;
  final int? restSeconds;
  final int? lowIntensitySeconds;
  final int? moderateIntensitySeconds;
  final int? vigorousIntensitySeconds;
  final int? inactivitySeconds;
  final List<ActivityLevelGranularData>? activityLevelGranularData;
  final int? continuousInactivePeriods;
  final double? caloriesNetIntakeKcal;
  final double? caloriesExpenditureKcal;
  final double? caloriesNetActiveKcal;
  final double? caloriesBasalMetabolicRateKcal;
  final int? steps;
  final List<StepsGranularData>? stepsGranularData;
  final int? activeSteps;
  final List<ActiveStepsGranularData>? activeStepsGranularData;
  final double? walkedDistanceMeters;
  final double? traveledDistanceMeters;
  final List<TraveledDistanceGranularData>? traveledDistanceGranularData;
  final double? floorsClimbed;
  final List<FloorsClimbedGranularData>? floorsClimbedGranularData;
  final double? elevationAvgAltitudeMeters;
  final double? elevationMinimumAltitudeMeters;
  final double? elevationMaximumAltitudeMeters;
  final double? elevationLossActualAltitudeMeters;
  final double? elevationGainActualAltitudeMeters;
  final double? elevationPlannedGainMeters;
  final List<ElevationGranularData>? elevationGranularData;
  final int? swimmingNumStrokes;
  final int? swimmingNumLaps;
  final double? swimmingPoolLengthMeters;
  final double? swimmingTotalDistanceMeters;
  final List<SwimmingDistanceGranularData>? swimmingDistanceGranularData;
  final int? hrMaximumBpm;
  final int? hrMinimumBpm;
  final int? hrAvgBpm;
  final int? hrRestingBpm;
  final List<HrGranularData>? hrGranularData;
  final double? hrvAvgRmssd;
  final double? hrvAvgSdnn;
  final List<HrvSdnnGranularData>? hrvSdnnGranularData;
  final List<HrvRmssdGranularData>? hrvRmssdGranularData;
  final double? saturationAvgPercentage;
  final List<SaturationGranularData>? saturationGranularData;
  final double? vo2MaxMlPerMinPerKg;
  final List<Vo2GranularData>? vo2GranularData;
  final int? stressAtRestDurationSeconds;
  final int? stressDurationSeconds;
  final int? lowStressDurationSeconds;
  final int? mediumStressDurationSeconds;
  final int? highStressDurationSeconds;
  final List<StressGranularData>? stressGranularData;
  final int? stressAvgLevel;
  final int? stressMaximumLevel;

  PhysicalSummary({
    required this.dateTime,
    required this.sourceOfData,
    required this.wasTheUserUnderPhysicalActivity,
    required this.activeSeconds,
    required this.restSeconds,
    required this.lowIntensitySeconds,
    required this.moderateIntensitySeconds,
    required this.vigorousIntensitySeconds,
    required this.inactivitySeconds,
    required this.activityLevelGranularData,
    required this.continuousInactivePeriods,
    required this.caloriesNetIntakeKcal,
    required this.caloriesExpenditureKcal,
    required this.caloriesNetActiveKcal,
    required this.caloriesBasalMetabolicRateKcal,
    required this.steps,
    required this.stepsGranularData,
    required this.activeSteps,
    required this.activeStepsGranularData,
    required this.walkedDistanceMeters,
    required this.traveledDistanceMeters,
    required this.traveledDistanceGranularData,
    required this.floorsClimbed,
    required this.floorsClimbedGranularData,
    required this.elevationAvgAltitudeMeters,
    required this.elevationMinimumAltitudeMeters,
    required this.elevationMaximumAltitudeMeters,
    required this.elevationLossActualAltitudeMeters,
    required this.elevationGainActualAltitudeMeters,
    required this.elevationPlannedGainMeters,
    required this.elevationGranularData,
    required this.swimmingNumStrokes,
    required this.swimmingNumLaps,
    required this.swimmingPoolLengthMeters,
    required this.swimmingTotalDistanceMeters,
    required this.swimmingDistanceGranularData,
    required this.hrMaximumBpm,
    required this.hrMinimumBpm,
    required this.hrAvgBpm,
    required this.hrRestingBpm,
    required this.hrGranularData,
    required this.hrvAvgRmssd,
    required this.hrvAvgSdnn,
    required this.hrvSdnnGranularData,
    required this.hrvRmssdGranularData,
    required this.saturationAvgPercentage,
    required this.saturationGranularData,
    required this.vo2MaxMlPerMinPerKg,
    required this.vo2GranularData,
    required this.stressAtRestDurationSeconds,
    required this.stressDurationSeconds,
    required this.lowStressDurationSeconds,
    required this.mediumStressDurationSeconds,
    required this.highStressDurationSeconds,
    required this.stressGranularData,
    required this.stressAvgLevel,
    required this.stressMaximumLevel,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PhysicalSummary &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              sourceOfData == other.sourceOfData &&
              wasTheUserUnderPhysicalActivity ==
                  other.wasTheUserUnderPhysicalActivity &&
              activeSeconds == other.activeSeconds &&
              restSeconds == other.restSeconds &&
              lowIntensitySeconds == other.lowIntensitySeconds &&
              moderateIntensitySeconds == other.moderateIntensitySeconds &&
              vigorousIntensitySeconds == other.vigorousIntensitySeconds &&
              inactivitySeconds == other.inactivitySeconds &&
              activityLevelGranularData == other.activityLevelGranularData &&
              continuousInactivePeriods == other.continuousInactivePeriods &&
              caloriesNetIntakeKcal == other.caloriesNetIntakeKcal &&
              caloriesExpenditureKcal == other.caloriesExpenditureKcal &&
              caloriesNetActiveKcal == other.caloriesNetActiveKcal &&
              caloriesBasalMetabolicRateKcal ==
                  other.caloriesBasalMetabolicRateKcal &&
              steps == other.steps &&
              stepsGranularData == other.stepsGranularData &&
              activeSteps == other.activeSteps &&
              activeStepsGranularData == other.activeStepsGranularData &&
              walkedDistanceMeters == other.walkedDistanceMeters &&
              traveledDistanceMeters == other.traveledDistanceMeters &&
              traveledDistanceGranularData == other.traveledDistanceGranularData &&
              floorsClimbed == other.floorsClimbed &&
              floorsClimbedGranularData == other.floorsClimbedGranularData &&
              elevationAvgAltitudeMeters == other.elevationAvgAltitudeMeters &&
              elevationMinimumAltitudeMeters ==
                  other.elevationMinimumAltitudeMeters &&
              elevationMaximumAltitudeMeters ==
                  other.elevationMaximumAltitudeMeters &&
              elevationLossActualAltitudeMeters ==
                  other.elevationLossActualAltitudeMeters &&
              elevationGainActualAltitudeMeters ==
                  other.elevationGainActualAltitudeMeters &&
              elevationPlannedGainMeters == other.elevationPlannedGainMeters &&
              elevationGranularData == other.elevationGranularData &&
              swimmingNumStrokes == other.swimmingNumStrokes &&
              swimmingNumLaps == other.swimmingNumLaps &&
              swimmingPoolLengthMeters == other.swimmingPoolLengthMeters &&
              swimmingTotalDistanceMeters == other.swimmingTotalDistanceMeters &&
              swimmingDistanceGranularData == other.swimmingDistanceGranularData &&
              hrMaximumBpm == other.hrMaximumBpm &&
              hrMinimumBpm == other.hrMinimumBpm &&
              hrAvgBpm == other.hrAvgBpm &&
              hrRestingBpm == other.hrRestingBpm &&
              hrGranularData == other.hrGranularData &&
              hrvAvgRmssd == other.hrvAvgRmssd &&
              hrvAvgSdnn == other.hrvAvgSdnn &&
              hrvSdnnGranularData == other.hrvSdnnGranularData &&
              hrvRmssdGranularData == other.hrvRmssdGranularData &&
              saturationAvgPercentage == other.saturationAvgPercentage &&
              saturationGranularData == other.saturationGranularData &&
              vo2MaxMlPerMinPerKg == other.vo2MaxMlPerMinPerKg &&
              vo2GranularData == other.vo2GranularData &&
              stressAtRestDurationSeconds == other.stressAtRestDurationSeconds &&
              stressDurationSeconds == other.stressDurationSeconds &&
              lowStressDurationSeconds == other.lowStressDurationSeconds &&
              mediumStressDurationSeconds == other.mediumStressDurationSeconds &&
              highStressDurationSeconds == other.highStressDurationSeconds &&
              stressGranularData == other.stressGranularData &&
              stressAvgLevel == other.stressAvgLevel &&
              stressMaximumLevel == other.stressMaximumLevel;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      sourceOfData.hashCode ^
      wasTheUserUnderPhysicalActivity.hashCode ^
      activeSeconds.hashCode ^
      restSeconds.hashCode ^
      lowIntensitySeconds.hashCode ^
      moderateIntensitySeconds.hashCode ^
      vigorousIntensitySeconds.hashCode ^
      inactivitySeconds.hashCode ^
      activityLevelGranularData.hashCode ^
      continuousInactivePeriods.hashCode ^
      caloriesNetIntakeKcal.hashCode ^
      caloriesExpenditureKcal.hashCode ^
      caloriesNetActiveKcal.hashCode ^
      caloriesBasalMetabolicRateKcal.hashCode ^
      steps.hashCode ^
      stepsGranularData.hashCode ^
      activeSteps.hashCode ^
      activeStepsGranularData.hashCode ^
      walkedDistanceMeters.hashCode ^
      traveledDistanceMeters.hashCode ^
      traveledDistanceGranularData.hashCode ^
      floorsClimbed.hashCode ^
      floorsClimbedGranularData.hashCode ^
      elevationAvgAltitudeMeters.hashCode ^
      elevationMinimumAltitudeMeters.hashCode ^
      elevationMaximumAltitudeMeters.hashCode ^
      elevationLossActualAltitudeMeters.hashCode ^
      elevationGainActualAltitudeMeters.hashCode ^
      elevationPlannedGainMeters.hashCode ^
      elevationGranularData.hashCode ^
      swimmingNumStrokes.hashCode ^
      swimmingNumLaps.hashCode ^
      swimmingPoolLengthMeters.hashCode ^
      swimmingTotalDistanceMeters.hashCode ^
      swimmingDistanceGranularData.hashCode ^
      hrMaximumBpm.hashCode ^
      hrMinimumBpm.hashCode ^
      hrAvgBpm.hashCode ^
      hrRestingBpm.hashCode ^
      hrGranularData.hashCode ^
      hrvAvgRmssd.hashCode ^
      hrvAvgSdnn.hashCode ^
      hrvSdnnGranularData.hashCode ^
      hrvRmssdGranularData.hashCode ^
      saturationAvgPercentage.hashCode ^
      saturationGranularData.hashCode ^
      vo2MaxMlPerMinPerKg.hashCode ^
      vo2GranularData.hashCode ^
      stressAtRestDurationSeconds.hashCode ^
      stressDurationSeconds.hashCode ^
      lowStressDurationSeconds.hashCode ^
      mediumStressDurationSeconds.hashCode ^
      highStressDurationSeconds.hashCode ^
      stressGranularData.hashCode ^
      stressAvgLevel.hashCode ^
      stressMaximumLevel.hashCode;

  @override
  String toString() {
    return 'PhysicalSummary{'
        'dateTime: $dateTime, '
        'sourceOfData: $sourceOfData, '
        'wasTheUserUnderPhysicalActivity: $wasTheUserUnderPhysicalActivity, '
        'activeSeconds: $activeSeconds, '
        'restSeconds: $restSeconds, '
        'lowIntensitySeconds: $lowIntensitySeconds, '
        'moderateIntensitySeconds: $moderateIntensitySeconds, '
        'vigorousIntensitySeconds: $vigorousIntensitySeconds, '
        'inactivitySeconds: $inactivitySeconds, '
        'activityLevelGranularData: $activityLevelGranularData, '
        'continuousInactivePeriods: $continuousInactivePeriods, '
        'caloriesNetIntakeKcal: $caloriesNetIntakeKcal, '
        'caloriesExpenditureKcal: $caloriesExpenditureKcal, '
        'caloriesNetActiveKcal: $caloriesNetActiveKcal, '
        'caloriesBasalMetabolicRateKcal: $caloriesBasalMetabolicRateKcal, '
        'steps: $steps, '
        'stepsGranularData: $stepsGranularData, '
        'activeSteps: $activeSteps, '
        'activeStepsGranularData: $activeStepsGranularData, '
        'walkedDistanceMeters: $walkedDistanceMeters, '
        'traveledDistanceMeters: $traveledDistanceMeters, '
        'traveledDistanceGranularData: $traveledDistanceGranularData, '
        'floorsClimbed: $floorsClimbed, '
        'floorsClimbedGranularData: $floorsClimbedGranularData, '
        'elevationAvgAltitudeMeters: $elevationAvgAltitudeMeters, '
        'elevationMinimumAltitudeMeters: $elevationMinimumAltitudeMeters, '
        'elevationMaximumAltitudeMeters: $elevationMaximumAltitudeMeters, '
        'elevationLossActualAltitudeMeters: $elevationLossActualAltitudeMeters, '
        'elevationGainActualAltitudeMeters: $elevationGainActualAltitudeMeters, '
        'elevationPlannedGainMeters: $elevationPlannedGainMeters, '
        'elevationGranularData: $elevationGranularData, '
        'swimmingNumStrokes: $swimmingNumStrokes, '
        'swimmingNumLaps: $swimmingNumLaps, '
        'swimmingPoolLengthMeters: $swimmingPoolLengthMeters, '
        'swimmingTotalDistanceMeters: $swimmingTotalDistanceMeters, '
        'swimmingDistanceGranularData: $swimmingDistanceGranularData, '
        'hrMaximumBpm: $hrMaximumBpm, '
        'hrMinimumBpm: $hrMinimumBpm, '
        'hrAvgBpm: $hrAvgBpm, '
        'hrRestingBpm: $hrRestingBpm, '
        'hrGranularData: $hrGranularData, '
        'hrvAvgRmssd: $hrvAvgRmssd, '
        'hrvAvgSdnn: $hrvAvgSdnn, '
        'hrvSdnnGranularData: $hrvSdnnGranularData, '
        'hrvRmssdGranularData: $hrvRmssdGranularData, '
        'saturationAvgPercentage: $saturationAvgPercentage, '
        'saturationGranularData: $saturationGranularData, '
        'vo2MaxMlPerMinPerKg: $vo2MaxMlPerMinPerKg, '
        'vo2GranularData: $vo2GranularData, '
        'stressAtRestDurationSeconds: $stressAtRestDurationSeconds, '
        'stressDurationSeconds: $stressDurationSeconds, '
        'lowStressDurationSeconds: $lowStressDurationSeconds, '
        'mediumStressDurationSeconds: $mediumStressDurationSeconds, '
        'highStressDurationSeconds: $highStressDurationSeconds, '
        'stressGranularData: $stressGranularData, '
        'stressAvgLevel: $stressAvgLevel, '
        'stressMaximumLevel: $stressMaximumLevel'
        '}';
  }
}
