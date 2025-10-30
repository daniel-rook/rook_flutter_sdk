import 'package:rook_sdk_apple_health/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/complex_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/granular_data_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/domain/util/check_non_default.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension BodySummaryMappers on BodySummaryProto {
  BodySummary toDomain() {
    return BodySummary(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      sourceOfData: sourceOfData,
      wasTheUserUnderPhysicalActivity: wasTheUserUnderPhysicalActivity,
      waistCircumferenceCm: waistCircumferenceCm.checkNonDefault(),
      hipCircumferenceCm: hipCircumferenceCm.checkNonDefault(),
      chestCircumferenceCm: chestCircumferenceCm.checkNonDefault(),
      boneCompositionPercentage: boneCompositionPercentage.checkNonDefault(),
      muscleCompositionPercentage:
          muscleCompositionPercentage.checkNonDefault(),
      waterCompositionPercentage: waterCompositionPercentage.checkNonDefault(),
      weightKg: weightKg.checkNonDefault(),
      heightCm: heightCm.checkNonDefault(),
      bmi: bmi.checkNonDefault(),
      bloodGlucoseAvgMgPerDl: bloodGlucoseAvgMgPerDl.checkNonDefault(),
      bloodGlucoseGranularData: bloodGlucoseGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      bloodPressureAvg: bloodPressureAvg
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      bloodPressureGranularData: bloodPressureGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      waterTotalConsumptionMl: waterTotalConsumptionMl.checkNonDefault(),
      hydrationAmountGranularData: hydrationAmountGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      hydrationLevelGranularData: hydrationLevelGranularData.map((element) {
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
      moodMinimumScale: moodMinimumScale.checkNonDefault(),
      moodAvgScale: moodAvgScale.checkNonDefault(),
      moodMaximumScale: moodMaximumScale.checkNonDefault(),
      moodGranularData: moodGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      moodDeltaScale: moodDeltaScale.checkNonDefault(),
      foodIntake: foodIntake.checkNonDefault(),
      caloriesIntakeKcal: caloriesIntakeKcal.checkNonDefault(),
      proteinIntakeG: proteinIntakeG.checkNonDefault(),
      sugarIntakeG: sugarIntakeG.checkNonDefault(),
      fatIntakeG: fatIntakeG.checkNonDefault(),
      transFatIntakeG: transFatIntakeG.checkNonDefault(),
      carbohydratesIntakeG: carbohydratesIntakeG.checkNonDefault(),
      fiberIntakeG: fiberIntakeG.checkNonDefault(),
      alcoholIntakeG: alcoholIntakeG.checkNonDefault(),
      sodiumIntakeMg: sodiumIntakeMg.checkNonDefault(),
      cholesterolIntakeMg: cholesterolIntakeMg.checkNonDefault(),
      saturationAvgPercentage: saturationAvgPercentage.checkNonDefault(),
      saturationGranularData: saturationGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      vo2MaxMlPerMinPerKg: vo2MaxMlPerMinPerKg.checkNonDefault(),
      vo2GranularData: vo2GranularData.map((element) {
        return element.toDomain();
      }).toList(),
      temperatureMinimum: temperatureMinimum
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      temperatureAvg: temperatureAvg
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      temperatureMaximum: temperatureMaximum
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      temperatureGranularData: temperatureGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      temperatureDelta: temperatureDelta
          .map((element) {
            return element.toDomain();
          })
          .toList()
          .firstOrNull,
      lastUpdatedDatetime: DateTimeExtensions.parseLocalNullable(
        lastUpdatedDatetime.checkNonDefault(),
      ),
      periodStartDate: DateTimeExtensions.parseLocalNullable(
        periodStartDate.checkNonDefault(),
      ),
      cycleDay: cycleDay.checkNonDefault(),
      cycleLengthDays: cycleLengthDays.checkNonDefault(),
      predictedCycleLengthDays: predictedCycleLengthDays.checkNonDefault(),
      currentPhase: currentPhase.checkNonDefault(),
      lengthOfCurrentPhaseDays: lengthOfCurrentPhaseDays.checkNonDefault(),
      daysUntilNextPhase: daysUntilNextPhase.checkNonDefault(),
      isAPredictedCycle: switch (whichIsAPredictedCycle()) {
        BodySummaryProto_IsAPredictedCycle.isAPredictedCycleValue =>
          isAPredictedCycleValue,
        _ => null,
      },
      menstruationFlowGranularData: menstruationFlowGranularData.map((element) {
        return element.toDomain();
      }).toList(),
    );
  }
}
