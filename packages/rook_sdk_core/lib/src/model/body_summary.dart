import 'package:rook_sdk_core/src/model/complex/blood_pressure_object.dart';
import 'package:rook_sdk_core/src/model/complex/temperature_object.dart';
import 'package:rook_sdk_core/src/model/granular/blood_glucose_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/blood_pressure_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hr_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hrv_rmssd_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hrv_sdnn_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hydration_amount_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hydration_level_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/menstruation_flow_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/mood_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/saturation_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/temperature_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/vo2_granular_data.dart';

class BodySummary {
  final DateTime dateTime;
  final String sourceOfData;
  final bool wasTheUserUnderPhysicalActivity;
  final double? waistCircumferenceCm;
  final double? hipCircumferenceCm;
  final double? chestCircumferenceCm;
  final double? boneCompositionPercentage;
  final double? muscleCompositionPercentage;
  final double? waterCompositionPercentage;
  final double? weightKg;
  final double? heightCm;
  final double? bmi;
  final double? bloodGlucoseAvgMgPerDl;
  final List<BloodGlucoseGranularData>? bloodGlucoseGranularData;
  final BloodPressureObject? bloodPressureAvg;
  final List<BloodPressureGranularData>? bloodPressureGranularData;
  final double? waterTotalConsumptionMl;
  final List<HydrationAmountGranularData>? hydrationAmountGranularData;
  final List<HydrationLevelGranularData>? hydrationLevelGranularData;
  final int? hrMaximumBpm;
  final int? hrMinimumBpm;
  final int? hrAvgBpm;
  final int? hrRestingBpm;
  final List<HrGranularData>? hrGranularData;
  final double? hrvAvgRmssd;
  final double? hrvAvgSdnn;
  final List<HrvSdnnGranularData>? hrvSdnnGranularData;
  final List<HrvRmssdGranularData>? hrvRmssdGranularData;
  final double? moodMinimumScale;
  final double? moodAvgScale;
  final double? moodMaximumScale;
  final List<MoodGranularData>? moodGranularData;
  final double? moodDeltaScale;
  final double? foodIntake;
  final double? caloriesIntakeKcal;
  final double? proteinIntakeG;
  final double? sugarIntakeG;
  final double? fatIntakeG;
  final double? transFatIntakeG;
  final double? carbohydratesIntakeG;
  final double? fiberIntakeG;
  final double? alcoholIntakeG;
  final double? sodiumIntakeMg;
  final double? cholesterolIntakeMg;
  final double? saturationAvgPercentage;
  final List<SaturationGranularData>? saturationGranularData;
  final double? vo2MaxMlPerMinPerKg;
  final List<Vo2GranularData>? vo2GranularData;
  final TemperatureObject? temperatureMinimum;
  final TemperatureObject? temperatureAvg;
  final TemperatureObject? temperatureMaximum;
  final List<TemperatureGranularData>? temperatureGranularData;
  final TemperatureObject? temperatureDelta;
  final DateTime? lastUpdatedDatetime;
  final DateTime? periodStartDate;
  final int? cycleDay;
  final int? cycleLengthDays;
  final int? predictedCycleLengthDays;
  final String? currentPhase;
  final int? lengthOfCurrentPhaseDays;
  final int? daysUntilNextPhase;
  final bool? isAPredictedCycle;
  final List<MenstruationFlowGranularData>? menstruationFlowGranularData;

  BodySummary({
    required this.dateTime,
    required this.sourceOfData,
    required this.wasTheUserUnderPhysicalActivity,
    required this.waistCircumferenceCm,
    required this.hipCircumferenceCm,
    required this.chestCircumferenceCm,
    required this.boneCompositionPercentage,
    required this.muscleCompositionPercentage,
    required this.waterCompositionPercentage,
    required this.weightKg,
    required this.heightCm,
    required this.bmi,
    required this.bloodGlucoseAvgMgPerDl,
    required this.bloodGlucoseGranularData,
    required this.bloodPressureAvg,
    required this.bloodPressureGranularData,
    required this.waterTotalConsumptionMl,
    required this.hydrationAmountGranularData,
    required this.hydrationLevelGranularData,
    required this.hrMaximumBpm,
    required this.hrMinimumBpm,
    required this.hrAvgBpm,
    required this.hrRestingBpm,
    required this.hrGranularData,
    required this.hrvAvgRmssd,
    required this.hrvAvgSdnn,
    required this.hrvSdnnGranularData,
    required this.hrvRmssdGranularData,
    required this.moodMinimumScale,
    required this.moodAvgScale,
    required this.moodMaximumScale,
    required this.moodGranularData,
    required this.moodDeltaScale,
    required this.foodIntake,
    required this.caloriesIntakeKcal,
    required this.proteinIntakeG,
    required this.sugarIntakeG,
    required this.fatIntakeG,
    required this.transFatIntakeG,
    required this.carbohydratesIntakeG,
    required this.fiberIntakeG,
    required this.alcoholIntakeG,
    required this.sodiumIntakeMg,
    required this.cholesterolIntakeMg,
    required this.saturationAvgPercentage,
    required this.saturationGranularData,
    required this.vo2MaxMlPerMinPerKg,
    required this.vo2GranularData,
    required this.temperatureMinimum,
    required this.temperatureAvg,
    required this.temperatureMaximum,
    required this.temperatureGranularData,
    required this.temperatureDelta,
    required this.lastUpdatedDatetime,
    required this.periodStartDate,
    required this.cycleDay,
    required this.cycleLengthDays,
    required this.predictedCycleLengthDays,
    required this.currentPhase,
    required this.lengthOfCurrentPhaseDays,
    required this.daysUntilNextPhase,
    required this.isAPredictedCycle,
    required this.menstruationFlowGranularData,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BodySummary &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          sourceOfData == other.sourceOfData &&
          wasTheUserUnderPhysicalActivity ==
              other.wasTheUserUnderPhysicalActivity &&
          waistCircumferenceCm == other.waistCircumferenceCm &&
          hipCircumferenceCm == other.hipCircumferenceCm &&
          chestCircumferenceCm == other.chestCircumferenceCm &&
          boneCompositionPercentage == other.boneCompositionPercentage &&
          muscleCompositionPercentage == other.muscleCompositionPercentage &&
          waterCompositionPercentage == other.waterCompositionPercentage &&
          weightKg == other.weightKg &&
          heightCm == other.heightCm &&
          bmi == other.bmi &&
          bloodGlucoseAvgMgPerDl == other.bloodGlucoseAvgMgPerDl &&
          bloodGlucoseGranularData == other.bloodGlucoseGranularData &&
          bloodPressureAvg == other.bloodPressureAvg &&
          bloodPressureGranularData == other.bloodPressureGranularData &&
          waterTotalConsumptionMl == other.waterTotalConsumptionMl &&
          hydrationAmountGranularData == other.hydrationAmountGranularData &&
          hydrationLevelGranularData == other.hydrationLevelGranularData &&
          hrMaximumBpm == other.hrMaximumBpm &&
          hrMinimumBpm == other.hrMinimumBpm &&
          hrAvgBpm == other.hrAvgBpm &&
          hrRestingBpm == other.hrRestingBpm &&
          hrGranularData == other.hrGranularData &&
          hrvAvgRmssd == other.hrvAvgRmssd &&
          hrvAvgSdnn == other.hrvAvgSdnn &&
          hrvSdnnGranularData == other.hrvSdnnGranularData &&
          hrvRmssdGranularData == other.hrvRmssdGranularData &&
          moodMinimumScale == other.moodMinimumScale &&
          moodAvgScale == other.moodAvgScale &&
          moodMaximumScale == other.moodMaximumScale &&
          moodGranularData == other.moodGranularData &&
          moodDeltaScale == other.moodDeltaScale &&
          foodIntake == other.foodIntake &&
          caloriesIntakeKcal == other.caloriesIntakeKcal &&
          proteinIntakeG == other.proteinIntakeG &&
          sugarIntakeG == other.sugarIntakeG &&
          fatIntakeG == other.fatIntakeG &&
          transFatIntakeG == other.transFatIntakeG &&
          carbohydratesIntakeG == other.carbohydratesIntakeG &&
          fiberIntakeG == other.fiberIntakeG &&
          alcoholIntakeG == other.alcoholIntakeG &&
          sodiumIntakeMg == other.sodiumIntakeMg &&
          cholesterolIntakeMg == other.cholesterolIntakeMg &&
          saturationAvgPercentage == other.saturationAvgPercentage &&
          saturationGranularData == other.saturationGranularData &&
          vo2MaxMlPerMinPerKg == other.vo2MaxMlPerMinPerKg &&
          vo2GranularData == other.vo2GranularData &&
          temperatureMinimum == other.temperatureMinimum &&
          temperatureAvg == other.temperatureAvg &&
          temperatureMaximum == other.temperatureMaximum &&
          temperatureGranularData == other.temperatureGranularData &&
          temperatureDelta == other.temperatureDelta &&
          lastUpdatedDatetime == other.lastUpdatedDatetime &&
          periodStartDate == other.periodStartDate &&
          cycleDay == other.cycleDay &&
          cycleLengthDays == other.cycleLengthDays &&
          predictedCycleLengthDays == other.predictedCycleLengthDays &&
          currentPhase == other.currentPhase &&
          lengthOfCurrentPhaseDays == other.lengthOfCurrentPhaseDays &&
          daysUntilNextPhase == other.daysUntilNextPhase &&
          isAPredictedCycle == other.isAPredictedCycle &&
          menstruationFlowGranularData == other.menstruationFlowGranularData;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      sourceOfData.hashCode ^
      wasTheUserUnderPhysicalActivity.hashCode ^
      waistCircumferenceCm.hashCode ^
      hipCircumferenceCm.hashCode ^
      chestCircumferenceCm.hashCode ^
      boneCompositionPercentage.hashCode ^
      muscleCompositionPercentage.hashCode ^
      waterCompositionPercentage.hashCode ^
      weightKg.hashCode ^
      heightCm.hashCode ^
      bmi.hashCode ^
      bloodGlucoseAvgMgPerDl.hashCode ^
      bloodGlucoseGranularData.hashCode ^
      bloodPressureAvg.hashCode ^
      bloodPressureGranularData.hashCode ^
      waterTotalConsumptionMl.hashCode ^
      hydrationAmountGranularData.hashCode ^
      hydrationLevelGranularData.hashCode ^
      hrMaximumBpm.hashCode ^
      hrMinimumBpm.hashCode ^
      hrAvgBpm.hashCode ^
      hrRestingBpm.hashCode ^
      hrGranularData.hashCode ^
      hrvAvgRmssd.hashCode ^
      hrvAvgSdnn.hashCode ^
      hrvSdnnGranularData.hashCode ^
      hrvRmssdGranularData.hashCode ^
      moodMinimumScale.hashCode ^
      moodAvgScale.hashCode ^
      moodMaximumScale.hashCode ^
      moodGranularData.hashCode ^
      moodDeltaScale.hashCode ^
      foodIntake.hashCode ^
      caloriesIntakeKcal.hashCode ^
      proteinIntakeG.hashCode ^
      sugarIntakeG.hashCode ^
      fatIntakeG.hashCode ^
      transFatIntakeG.hashCode ^
      carbohydratesIntakeG.hashCode ^
      fiberIntakeG.hashCode ^
      alcoholIntakeG.hashCode ^
      sodiumIntakeMg.hashCode ^
      cholesterolIntakeMg.hashCode ^
      saturationAvgPercentage.hashCode ^
      saturationGranularData.hashCode ^
      vo2MaxMlPerMinPerKg.hashCode ^
      vo2GranularData.hashCode ^
      temperatureMinimum.hashCode ^
      temperatureAvg.hashCode ^
      temperatureMaximum.hashCode ^
      temperatureGranularData.hashCode ^
      temperatureDelta.hashCode ^
      lastUpdatedDatetime.hashCode ^
      periodStartDate.hashCode ^
      cycleDay.hashCode ^
      cycleLengthDays.hashCode ^
      predictedCycleLengthDays.hashCode ^
      currentPhase.hashCode ^
      lengthOfCurrentPhaseDays.hashCode ^
      daysUntilNextPhase.hashCode ^
      isAPredictedCycle.hashCode ^
      menstruationFlowGranularData.hashCode;

  @override
  String toString() {
    return 'BodySummary{'
        'dateTime: $dateTime, '
        'sourceOfData: $sourceOfData, '
        'wasTheUserUnderPhysicalActivity: $wasTheUserUnderPhysicalActivity, '
        'waistCircumferenceCm: $waistCircumferenceCm, '
        'hipCircumferenceCm: $hipCircumferenceCm, '
        'chestCircumferenceCm: $chestCircumferenceCm, '
        'boneCompositionPercentage: $boneCompositionPercentage, '
        'muscleCompositionPercentage: $muscleCompositionPercentage, '
        'waterCompositionPercentage: $waterCompositionPercentage, '
        'weightKg: $weightKg, '
        'heightCm: $heightCm, '
        'bmi: $bmi, '
        'bloodGlucoseAvgMgPerDl: $bloodGlucoseAvgMgPerDl, '
        'bloodGlucoseGranularData: $bloodGlucoseGranularData, '
        'bloodPressureAvg: $bloodPressureAvg, '
        'bloodPressureGranularData: $bloodPressureGranularData, '
        'waterTotalConsumptionMl: $waterTotalConsumptionMl, '
        'hydrationAmountGranularData: $hydrationAmountGranularData, '
        'hydrationLevelGranularData: $hydrationLevelGranularData, '
        'hrMaximumBpm: $hrMaximumBpm, '
        'hrMinimumBpm: $hrMinimumBpm, '
        'hrAvgBpm: $hrAvgBpm, '
        'hrRestingBpm: $hrRestingBpm, '
        'hrGranularData: $hrGranularData, '
        'hrvAvgRmssd: $hrvAvgRmssd, '
        'hrvAvgSdnn: $hrvAvgSdnn, '
        'hrvSdnnGranularData: $hrvSdnnGranularData, '
        'hrvRmssdGranularData: $hrvRmssdGranularData, '
        'moodMinimumScale: $moodMinimumScale, '
        'moodAvgScale: $moodAvgScale, '
        'moodMaximumScale: $moodMaximumScale, '
        'moodGranularData: $moodGranularData, '
        'moodDeltaScale: $moodDeltaScale, '
        'foodIntake: $foodIntake, '
        'caloriesIntakeKcal: $caloriesIntakeKcal, '
        'proteinIntakeG: $proteinIntakeG, '
        'sugarIntakeG: $sugarIntakeG, '
        'fatIntakeG: $fatIntakeG, '
        'transFatIntakeG: $transFatIntakeG, '
        'carbohydratesIntakeG: $carbohydratesIntakeG, '
        'fiberIntakeG: $fiberIntakeG, '
        'alcoholIntakeG: $alcoholIntakeG, '
        'sodiumIntakeMg: $sodiumIntakeMg, '
        'cholesterolIntakeMg: $cholesterolIntakeMg, '
        'saturationAvgPercentage: $saturationAvgPercentage, '
        'saturationGranularData: $saturationGranularData, '
        'vo2MaxMlPerMinPerKg: $vo2MaxMlPerMinPerKg, '
        'vo2GranularData: $vo2GranularData, '
        'temperatureMinimum: $temperatureMinimum, '
        'temperatureAvg: $temperatureAvg, '
        'temperatureMaximum: $temperatureMaximum, '
        'temperatureGranularData: $temperatureGranularData, '
        'temperatureDelta: $temperatureDelta, '
        'lastUpdatedDatetime: $lastUpdatedDatetime, '
        'periodStartDate: $periodStartDate, '
        'cycleDay: $cycleDay, '
        'cycleLengthDays: $cycleLengthDays, '
        'predictedCycleLengthDays: $predictedCycleLengthDays, '
        'currentPhase: $currentPhase, '
        'lengthOfCurrentPhaseDays: $lengthOfCurrentPhaseDays, '
        'daysUntilNextPhase: $daysUntilNextPhase, '
        'isAPredictedCycle: $isAPredictedCycle, '
        'menstruationFlowGranularData: $menstruationFlowGranularData'
        '}';
  }
}
