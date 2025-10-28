import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/complex_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/mapper/granular_data_mappers.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/util/check_non_default.dart';

extension ActivityEventMappers on ActivityEventProto {
  ActivityEvent toDomain() {
    return ActivityEvent(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      sourceOfData: sourceOfData,
      wasTheUserUnderPhysicalActivity: wasTheUserUnderPhysicalActivity,
      activityStartDateTime: DateTimeExtensions.parseLocal(
        activityStartDateTime,
      ),
      activityEndDateTime: DateTimeExtensions.parseLocal(activityEndDateTime),
      activityDurationSeconds: activityDurationSeconds,
      activityTypeName: activityTypeName,
      activeSeconds: activeSeconds.checkNonDefault(),
      restSeconds: restSeconds.checkNonDefault(),
      lowIntensitySeconds: lowIntensitySeconds.checkNonDefault(),
      moderateIntensitySeconds: moderateIntensitySeconds.checkNonDefault(),
      vigorousIntensitySeconds: vigorousIntensitySeconds.checkNonDefault(),
      inactivitySeconds: inactivitySeconds.checkNonDefault(),
      activityLevelGranularData: activityLevelGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      continuousInactivePeriods: continuousInactivePeriods.checkNonDefault(),
      activityStrainLevel: activityStrainLevel.checkNonDefault(),
      activityWorkKilojoules: activityWorkKilojoules.checkNonDefault(),
      activityEnergyKilojoules: activityEnergyKilojoules.checkNonDefault(),
      activityEnergyPlannedKilojoules:
          activityEnergyPlannedKilojoules.checkNonDefault(),
      caloriesNetIntakeKcal: caloriesNetIntakeKcal.checkNonDefault(),
      caloriesExpenditureKcal: caloriesExpenditureKcal.checkNonDefault(),
      caloriesNetActiveKcal: caloriesNetActiveKcal.checkNonDefault(),
      caloriesBasalMetabolicRateKcal:
          caloriesBasalMetabolicRateKcal.checkNonDefault(),
      fatPercentageOfCalories: fatPercentageOfCalories.checkNonDefault(),
      carbohydratePercentageOfCalories:
          carbohydratePercentageOfCalories.checkNonDefault(),
      proteinPercentageOfCalories:
          proteinPercentageOfCalories.checkNonDefault(),
      steps: steps.checkNonDefault(),
      stepsGranularData: stepsGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      walkedDistanceMeters: walkedDistanceMeters.checkNonDefault(),
      traveledDistanceMeters: traveledDistanceMeters.checkNonDefault(),
      traveledDistanceGranularData: traveledDistanceGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      floorsClimbed: floorsClimbed.checkNonDefault(),
      floorsClimbedGranularData: floorsClimbedGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      elevationAvgAltitudeMeters: elevationAvgAltitudeMeters.checkNonDefault(),
      elevationMinimumAltitudeMeters:
          elevationMinimumAltitudeMeters.checkNonDefault(),
      elevationMaximumAltitudeMeters:
          elevationMaximumAltitudeMeters.checkNonDefault(),
      elevationLossActualAltitudeMeters:
          elevationLossActualAltitudeMeters.checkNonDefault(),
      elevationGainActualAltitudeMeters:
          elevationGainActualAltitudeMeters.checkNonDefault(),
      elevationPlannedGainMeters: elevationPlannedGainMeters.checkNonDefault(),
      elevationGranularData: elevationGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      swimmingNumStrokes: swimmingNumStrokes.checkNonDefault(),
      swimmingNumLaps: swimmingNumLaps.checkNonDefault(),
      swimmingPoolLengthMeters: swimmingPoolLengthMeters.checkNonDefault(),
      swimmingTotalDistanceMeters:
          swimmingTotalDistanceMeters.checkNonDefault(),
      swimmingDistanceGranularData: swimmingDistanceGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      hrMaximumBpm: hrMaximumBpm.checkNonDefault(),
      hrMinimumBpm: hrMinimumBpm.checkNonDefault(),
      hrAvgBpm: hrAvgBpm.checkNonDefault(),
      hrRestingBpm: hrRestingBpm.checkNonDefault(),
      hrGranularData: hrGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      hrvAvgRmssd: hrvAvgRmssd.checkNonDefault(),
      hrvAvgSdnn: hrvAvgSdnn.checkNonDefault(),
      hrvSdnnGranularData: hrvSdnnGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      hrvRmssdGranularData: hrvRmssdGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      speedNormalizedMetersPerSecond:
          speedNormalizedMetersPerSecond.checkNonDefault(),
      speedAvgMetersPerSecond: speedAvgMetersPerSecond.checkNonDefault(),
      speedMaximumMetersPerSecond:
          speedMaximumMetersPerSecond.checkNonDefault(),
      speedGranularData: speedGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      velocityAvg: velocityAvg
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      velocityMaximum: velocityMaximum
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      paceAvgMinPerKm: paceAvgMinPerKm.checkNonDefault(),
      paceMaximumMinPerKm: paceMaximumMinPerKm.checkNonDefault(),
      cadenceAvgRpm: cadenceAvgRpm.checkNonDefault(),
      cadenceMaximumRpm: cadenceMaximumRpm.checkNonDefault(),
      cadenceGranularData: cadenceGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      torqueAvgNewtonMeters: torqueAvgNewtonMeters.checkNonDefault(),
      torqueMaximumNewtonMeters: torqueMaximumNewtonMeters.checkNonDefault(),
      torqueGranularData: torqueGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      lapGranularData: lapGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      saturationAvgPercentage: saturationAvgPercentage.checkNonDefault(),
      saturationGranularData: saturationGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      vo2MaxMlPerMinPerKg: vo2MaxMlPerMinPerKg.checkNonDefault(),
      vo2GranularData: vo2GranularData.map((element) {
        return element.toDomain();
      }).toList(),
      positionStart: positionStart
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      positionCentroid: positionCentroid
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      positionEnd: positionEnd
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      positionGranularData: positionGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      positionPolylineMapDataSummary:
          positionPolylineMapDataSummary.checkNonDefault(),
      powerAvgWatts: powerAvgWatts.checkNonDefault(),
      powerMaximumWatts: powerMaximumWatts.checkNonDefault(),
      powerGranularData: powerGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      stressAtRestDurationSeconds:
          stressAtRestDurationSeconds.checkNonDefault(),
      stressDurationSeconds: stressDurationSeconds.checkNonDefault(),
      lowStressDurationSeconds: lowStressDurationSeconds.checkNonDefault(),
      mediumStressDurationSeconds:
          mediumStressDurationSeconds.checkNonDefault(),
      highStressDurationSeconds: highStressDurationSeconds.checkNonDefault(),
      tssGranularData: tssGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      stressAvgLevel: stressAvgLevel.checkNonDefault(),
      stressMaximumLevel: stressMaximumLevel.checkNonDefault(),
    );
  }
}
