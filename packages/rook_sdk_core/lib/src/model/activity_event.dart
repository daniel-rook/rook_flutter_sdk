import 'package:rook_sdk_core/src/model/complex/position_object.dart';
import 'package:rook_sdk_core/src/model/complex/velocity_object.dart';
import 'package:rook_sdk_core/src/model/granular/activity_level_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/cadence_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/elevation_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/floors_climbed_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hr_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hrv_rmssd_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hrv_sdnn_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/lap_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/position_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/power_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/saturation_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/speed_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/steps_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/swimming_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/torque_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/traveled_distance_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/tss_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/vo2_granular_data.dart';

class ActivityEvent {
  final DateTime dateTime;
  final String sourceOfData;
  final bool wasTheUserUnderPhysicalActivity;
  final DateTime activityStartDateTime;
  final DateTime activityEndDateTime;
  final int activityDurationSeconds;
  final String activityTypeName;
  final int? activeSeconds;
  final int? restSeconds;
  final int? lowIntensitySeconds;
  final int? moderateIntensitySeconds;
  final int? vigorousIntensitySeconds;
  final int? inactivitySeconds;
  final List<ActivityLevelGranularData>? activityLevelGranularData;
  final int? continuousInactivePeriods;
  final int? activityStrainLevel;
  final double? activityWorkKilojoules;
  final double? activityEnergyKilojoules;
  final double? activityEnergyPlannedKilojoules;
  final double? caloriesNetIntakeKcal;
  final double? caloriesExpenditureKcal;
  final double? caloriesNetActiveKcal;
  final double? caloriesBasalMetabolicRateKcal;
  final double? fatPercentageOfCalories;
  final double? carbohydratePercentageOfCalories;
  final double? proteinPercentageOfCalories;
  final int? steps;
  final List<StepsGranularData>? stepsGranularData;
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
  final double? speedNormalizedMetersPerSecond;
  final double? speedAvgMetersPerSecond;
  final double? speedMaximumMetersPerSecond;
  final List<SpeedGranularData>? speedGranularData;
  final VelocityObject? velocityAvg;
  final VelocityObject? velocityMaximum;
  final double? paceAvgMinPerKm;
  final double? paceMaximumMinPerKm;
  final double? cadenceAvgRpm;
  final double? cadenceMaximumRpm;
  final List<CadenceGranularData>? cadenceGranularData;
  final double? torqueAvgNewtonMeters;
  final double? torqueMaximumNewtonMeters;
  final List<TorqueGranularData>? torqueGranularData;
  final List<LapGranularData>? lapGranularData;
  final double? saturationAvgPercentage;
  final List<SaturationGranularData>? saturationGranularData;
  final double? vo2MaxMlPerMinPerKg;
  final List<Vo2GranularData>? vo2GranularData;
  final PositionObject? positionStart;
  final PositionObject? positionCentroid;
  final PositionObject? positionEnd;
  final List<PositionGranularData>? positionGranularData;
  final String? positionPolylineMapDataSummary;
  final double? powerAvgWatts;
  final double? powerMaximumWatts;
  final List<PowerGranularData>? powerGranularData;
  final int? stressAtRestDurationSeconds;
  final int? stressDurationSeconds;
  final int? lowStressDurationSeconds;
  final int? mediumStressDurationSeconds;
  final int? highStressDurationSeconds;
  final List<TssGranularData>? tssGranularData;
  final int? stressAvgLevel;
  final int? stressMaximumLevel;

  ActivityEvent({
    required this.dateTime,
    required this.sourceOfData,
    required this.wasTheUserUnderPhysicalActivity,
    required this.activityStartDateTime,
    required this.activityEndDateTime,
    required this.activityDurationSeconds,
    required this.activityTypeName,
    required this.activeSeconds,
    required this.restSeconds,
    required this.lowIntensitySeconds,
    required this.moderateIntensitySeconds,
    required this.vigorousIntensitySeconds,
    required this.inactivitySeconds,
    required this.activityLevelGranularData,
    required this.continuousInactivePeriods,
    required this.activityStrainLevel,
    required this.activityWorkKilojoules,
    required this.activityEnergyKilojoules,
    required this.activityEnergyPlannedKilojoules,
    required this.caloriesNetIntakeKcal,
    required this.caloriesExpenditureKcal,
    required this.caloriesNetActiveKcal,
    required this.caloriesBasalMetabolicRateKcal,
    required this.fatPercentageOfCalories,
    required this.carbohydratePercentageOfCalories,
    required this.proteinPercentageOfCalories,
    required this.steps,
    required this.stepsGranularData,
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
    required this.speedNormalizedMetersPerSecond,
    required this.speedAvgMetersPerSecond,
    required this.speedMaximumMetersPerSecond,
    required this.speedGranularData,
    required this.velocityAvg,
    required this.velocityMaximum,
    required this.paceAvgMinPerKm,
    required this.paceMaximumMinPerKm,
    required this.cadenceAvgRpm,
    required this.cadenceMaximumRpm,
    required this.cadenceGranularData,
    required this.torqueAvgNewtonMeters,
    required this.torqueMaximumNewtonMeters,
    required this.torqueGranularData,
    required this.lapGranularData,
    required this.saturationAvgPercentage,
    required this.saturationGranularData,
    required this.vo2MaxMlPerMinPerKg,
    required this.vo2GranularData,
    required this.positionStart,
    required this.positionCentroid,
    required this.positionEnd,
    required this.positionGranularData,
    required this.positionPolylineMapDataSummary,
    required this.powerAvgWatts,
    required this.powerMaximumWatts,
    required this.powerGranularData,
    required this.stressAtRestDurationSeconds,
    required this.stressDurationSeconds,
    required this.lowStressDurationSeconds,
    required this.mediumStressDurationSeconds,
    required this.highStressDurationSeconds,
    required this.tssGranularData,
    required this.stressAvgLevel,
    required this.stressMaximumLevel,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ActivityEvent &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              sourceOfData == other.sourceOfData &&
              wasTheUserUnderPhysicalActivity ==
                  other.wasTheUserUnderPhysicalActivity &&
              activityStartDateTime == other.activityStartDateTime &&
              activityEndDateTime == other.activityEndDateTime &&
              activityDurationSeconds == other.activityDurationSeconds &&
              activityTypeName == other.activityTypeName &&
              activeSeconds == other.activeSeconds &&
              restSeconds == other.restSeconds &&
              lowIntensitySeconds == other.lowIntensitySeconds &&
              moderateIntensitySeconds == other.moderateIntensitySeconds &&
              vigorousIntensitySeconds == other.vigorousIntensitySeconds &&
              inactivitySeconds == other.inactivitySeconds &&
              activityLevelGranularData == other.activityLevelGranularData &&
              continuousInactivePeriods == other.continuousInactivePeriods &&
              activityStrainLevel == other.activityStrainLevel &&
              activityWorkKilojoules == other.activityWorkKilojoules &&
              activityEnergyKilojoules == other.activityEnergyKilojoules &&
              activityEnergyPlannedKilojoules ==
                  other.activityEnergyPlannedKilojoules &&
              caloriesNetIntakeKcal == other.caloriesNetIntakeKcal &&
              caloriesExpenditureKcal == other.caloriesExpenditureKcal &&
              caloriesNetActiveKcal == other.caloriesNetActiveKcal &&
              caloriesBasalMetabolicRateKcal ==
                  other.caloriesBasalMetabolicRateKcal &&
              fatPercentageOfCalories == other.fatPercentageOfCalories &&
              carbohydratePercentageOfCalories ==
                  other.carbohydratePercentageOfCalories &&
              proteinPercentageOfCalories == other.proteinPercentageOfCalories &&
              steps == other.steps &&
              stepsGranularData == other.stepsGranularData &&
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
              speedNormalizedMetersPerSecond ==
                  other.speedNormalizedMetersPerSecond &&
              speedAvgMetersPerSecond == other.speedAvgMetersPerSecond &&
              speedMaximumMetersPerSecond == other.speedMaximumMetersPerSecond &&
              speedGranularData == other.speedGranularData &&
              velocityAvg == other.velocityAvg &&
              velocityMaximum == other.velocityMaximum &&
              paceAvgMinPerKm == other.paceAvgMinPerKm &&
              paceMaximumMinPerKm == other.paceMaximumMinPerKm &&
              cadenceAvgRpm == other.cadenceAvgRpm &&
              cadenceMaximumRpm == other.cadenceMaximumRpm &&
              cadenceGranularData == other.cadenceGranularData &&
              torqueAvgNewtonMeters == other.torqueAvgNewtonMeters &&
              torqueMaximumNewtonMeters == other.torqueMaximumNewtonMeters &&
              torqueGranularData == other.torqueGranularData &&
              lapGranularData == other.lapGranularData &&
              saturationAvgPercentage == other.saturationAvgPercentage &&
              saturationGranularData == other.saturationGranularData &&
              vo2MaxMlPerMinPerKg == other.vo2MaxMlPerMinPerKg &&
              vo2GranularData == other.vo2GranularData &&
              positionStart == other.positionStart &&
              positionCentroid == other.positionCentroid &&
              positionEnd == other.positionEnd &&
              positionGranularData == other.positionGranularData &&
              positionPolylineMapDataSummary ==
                  other.positionPolylineMapDataSummary &&
              powerAvgWatts == other.powerAvgWatts &&
              powerMaximumWatts == other.powerMaximumWatts &&
              powerGranularData == other.powerGranularData &&
              stressAtRestDurationSeconds == other.stressAtRestDurationSeconds &&
              stressDurationSeconds == other.stressDurationSeconds &&
              lowStressDurationSeconds == other.lowStressDurationSeconds &&
              mediumStressDurationSeconds == other.mediumStressDurationSeconds &&
              highStressDurationSeconds == other.highStressDurationSeconds &&
              tssGranularData == other.tssGranularData &&
              stressAvgLevel == other.stressAvgLevel &&
              stressMaximumLevel == other.stressMaximumLevel;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      sourceOfData.hashCode ^
      wasTheUserUnderPhysicalActivity.hashCode ^
      activityStartDateTime.hashCode ^
      activityEndDateTime.hashCode ^
      activityDurationSeconds.hashCode ^
      activityTypeName.hashCode ^
      activeSeconds.hashCode ^
      restSeconds.hashCode ^
      lowIntensitySeconds.hashCode ^
      moderateIntensitySeconds.hashCode ^
      vigorousIntensitySeconds.hashCode ^
      inactivitySeconds.hashCode ^
      activityLevelGranularData.hashCode ^
      continuousInactivePeriods.hashCode ^
      activityStrainLevel.hashCode ^
      activityWorkKilojoules.hashCode ^
      activityEnergyKilojoules.hashCode ^
      activityEnergyPlannedKilojoules.hashCode ^
      caloriesNetIntakeKcal.hashCode ^
      caloriesExpenditureKcal.hashCode ^
      caloriesNetActiveKcal.hashCode ^
      caloriesBasalMetabolicRateKcal.hashCode ^
      fatPercentageOfCalories.hashCode ^
      carbohydratePercentageOfCalories.hashCode ^
      proteinPercentageOfCalories.hashCode ^
      steps.hashCode ^
      stepsGranularData.hashCode ^
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
      speedNormalizedMetersPerSecond.hashCode ^
      speedAvgMetersPerSecond.hashCode ^
      speedMaximumMetersPerSecond.hashCode ^
      speedGranularData.hashCode ^
      velocityAvg.hashCode ^
      velocityMaximum.hashCode ^
      paceAvgMinPerKm.hashCode ^
      paceMaximumMinPerKm.hashCode ^
      cadenceAvgRpm.hashCode ^
      cadenceMaximumRpm.hashCode ^
      cadenceGranularData.hashCode ^
      torqueAvgNewtonMeters.hashCode ^
      torqueMaximumNewtonMeters.hashCode ^
      torqueGranularData.hashCode ^
      lapGranularData.hashCode ^
      saturationAvgPercentage.hashCode ^
      saturationGranularData.hashCode ^
      vo2MaxMlPerMinPerKg.hashCode ^
      vo2GranularData.hashCode ^
      positionStart.hashCode ^
      positionCentroid.hashCode ^
      positionEnd.hashCode ^
      positionGranularData.hashCode ^
      positionPolylineMapDataSummary.hashCode ^
      powerAvgWatts.hashCode ^
      powerMaximumWatts.hashCode ^
      powerGranularData.hashCode ^
      stressAtRestDurationSeconds.hashCode ^
      stressDurationSeconds.hashCode ^
      lowStressDurationSeconds.hashCode ^
      mediumStressDurationSeconds.hashCode ^
      highStressDurationSeconds.hashCode ^
      tssGranularData.hashCode ^
      stressAvgLevel.hashCode ^
      stressMaximumLevel.hashCode;

  @override
  String toString() {
    return 'ActivityEvent{'
        'dateTime: $dateTime, '
        'sourceOfData: $sourceOfData, '
        'wasTheUserUnderPhysicalActivity: $wasTheUserUnderPhysicalActivity, '
        'activityStartDateTime: $activityStartDateTime, '
        'activityEndDateTime: $activityEndDateTime, '
        'activityDurationSeconds: $activityDurationSeconds, '
        'activityTypeName: $activityTypeName, '
        'activeSeconds: $activeSeconds, '
        'restSeconds: $restSeconds, '
        'lowIntensitySeconds: $lowIntensitySeconds, '
        'moderateIntensitySeconds: $moderateIntensitySeconds, '
        'vigorousIntensitySeconds: $vigorousIntensitySeconds, '
        'inactivitySeconds: $inactivitySeconds, '
        'activityLevelGranularData: $activityLevelGranularData, '
        'continuousInactivePeriods: $continuousInactivePeriods, '
        'activityStrainLevel: $activityStrainLevel, '
        'activityWorkKilojoules: $activityWorkKilojoules, '
        'activityEnergyKilojoules: $activityEnergyKilojoules, '
        'activityEnergyPlannedKilojoules: $activityEnergyPlannedKilojoules, '
        'caloriesNetIntakeKcal: $caloriesNetIntakeKcal, '
        'caloriesExpenditureKcal: $caloriesExpenditureKcal, '
        'caloriesNetActiveKcal: $caloriesNetActiveKcal, '
        'caloriesBasalMetabolicRateKcal: $caloriesBasalMetabolicRateKcal, '
        'fatPercentageOfCalories: $fatPercentageOfCalories, '
        'carbohydratePercentageOfCalories: $carbohydratePercentageOfCalories, '
        'proteinPercentageOfCalories: $proteinPercentageOfCalories, '
        'steps: $steps, '
        'stepsGranularData: $stepsGranularData, '
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
        'speedNormalizedMetersPerSecond: $speedNormalizedMetersPerSecond, '
        'speedAvgMetersPerSecond: $speedAvgMetersPerSecond, '
        'speedMaximumMetersPerSecond: $speedMaximumMetersPerSecond, '
        'speedGranularData: $speedGranularData, '
        'velocityAvg: $velocityAvg, '
        'velocityMaximum: $velocityMaximum, '
        'paceAvgMinPerKm: $paceAvgMinPerKm, '
        'paceMaximumMinPerKm: $paceMaximumMinPerKm, '
        'cadenceAvgRpm: $cadenceAvgRpm, '
        'cadenceMaximumRpm: $cadenceMaximumRpm, '
        'cadenceGranularData: $cadenceGranularData, '
        'torqueAvgNewtonMeters: $torqueAvgNewtonMeters, '
        'torqueMaximumNewtonMeters: $torqueMaximumNewtonMeters, '
        'torqueGranularData: $torqueGranularData, '
        'lapGranularData: $lapGranularData, '
        'saturationAvgPercentage: $saturationAvgPercentage, '
        'saturationGranularData: $saturationGranularData, '
        'vo2MaxMlPerMinPerKg: $vo2MaxMlPerMinPerKg, '
        'vo2GranularData: $vo2GranularData, '
        'positionStart: $positionStart, '
        'positionCentroid: $positionCentroid, '
        'positionEnd: $positionEnd, '
        'positionGranularData: $positionGranularData, '
        'positionPolylineMapDataSummary: $positionPolylineMapDataSummary, '
        'powerAvgWatts: $powerAvgWatts, '
        'powerMaximumWatts: $powerMaximumWatts, '
        'powerGranularData: $powerGranularData, '
        'stressAtRestDurationSeconds: $stressAtRestDurationSeconds, '
        'stressDurationSeconds: $stressDurationSeconds, '
        'lowStressDurationSeconds: $lowStressDurationSeconds, '
        'mediumStressDurationSeconds: $mediumStressDurationSeconds, '
        'highStressDurationSeconds: $highStressDurationSeconds, '
        'tssGranularData: $tssGranularData, '
        'stressAvgLevel: $stressAvgLevel, '
        'stressMaximumLevel: $stressMaximumLevel'
        '}';
  }
}
