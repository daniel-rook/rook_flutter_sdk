import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/granular_data_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/util/check_non_default.dart';

extension PhysicalSummaryResult on PhysicalSummaryResultProto {
  PhysicalSummary unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case PhysicalSummaryResultProto_Result.success:
        return success.toDomain();
      case PhysicalSummaryResultProto_Result.failure:
        final exception = SDKException.fromCode(
          code: failure.code,
          message: failure.message,
        );

        throw exception;
      default:
        throw Exception("Unknown error");
    }
  }
}

extension PhysicalSummaryMapper on PhysicalSummaryProto {
  PhysicalSummary toDomain() {
    return PhysicalSummary(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      sourceOfData: sourceOfData,
      wasTheUserUnderPhysicalActivity: wasTheUserUnderPhysicalActivity,
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
      caloriesNetIntakeKcal: caloriesNetIntakeKcal.checkNonDefault(),
      caloriesExpenditureKcal: caloriesExpenditureKcal.checkNonDefault(),
      caloriesNetActiveKcal: caloriesNetActiveKcal.checkNonDefault(),
      caloriesBasalMetabolicRateKcal: caloriesBasalMetabolicRateKcal
          .checkNonDefault(),
      steps: steps.checkNonDefault(),
      stepsGranularData: stepsGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      activeSteps: activeSteps.checkNonDefault(),
      activeStepsGranularData: activeStepsGranularData.map((element) {
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
      elevationMinimumAltitudeMeters: elevationMinimumAltitudeMeters
          .checkNonDefault(),
      elevationMaximumAltitudeMeters: elevationMaximumAltitudeMeters
          .checkNonDefault(),
      elevationLossActualAltitudeMeters: elevationLossActualAltitudeMeters
          .checkNonDefault(),
      elevationGainActualAltitudeMeters: elevationGainActualAltitudeMeters
          .checkNonDefault(),
      elevationPlannedGainMeters: elevationPlannedGainMeters.checkNonDefault(),
      elevationGranularData: elevationGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      swimmingNumStrokes: swimmingNumStrokes.checkNonDefault(),
      swimmingNumLaps: swimmingNumLaps.checkNonDefault(),
      swimmingPoolLengthMeters: swimmingPoolLengthMeters.checkNonDefault(),
      swimmingTotalDistanceMeters: swimmingTotalDistanceMeters
          .checkNonDefault(),
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
      saturationAvgPercentage: saturationAvgPercentage.checkNonDefault(),
      saturationGranularData: saturationGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      vo2MaxMlPerMinPerKg: vo2MaxMlPerMinPerKg.checkNonDefault(),
      vo2GranularData: vo2GranularData.map((element) {
        return element.toDomain();
      }).toList(),
      stressAtRestDurationSeconds: stressAtRestDurationSeconds
          .checkNonDefault(),
      stressDurationSeconds: stressDurationSeconds.checkNonDefault(),
      lowStressDurationSeconds: lowStressDurationSeconds.checkNonDefault(),
      mediumStressDurationSeconds: mediumStressDurationSeconds
          .checkNonDefault(),
      highStressDurationSeconds: highStressDurationSeconds.checkNonDefault(),
      stressGranularData: stressGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      stressAvgLevel: stressAvgLevel.checkNonDefault(),
      stressMaximumLevel: stressMaximumLevel.checkNonDefault(),
    );
  }
}
