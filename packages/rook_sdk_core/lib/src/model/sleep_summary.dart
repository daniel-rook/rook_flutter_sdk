import 'package:rook_sdk_core/src/model/complex/temperature_object.dart';
import 'package:rook_sdk_core/src/model/granular/breathing_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hr_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hrv_rmssd_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/hrv_sdnn_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/saturation_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/snoring_granular_data.dart';
import 'package:rook_sdk_core/src/model/granular/temperature_granular_data.dart';

class SleepSummary {
  final DateTime dateTime;
  final String sourceOfData;
  final bool wasTheUserUnderPhysicalActivity;
  final DateTime sleepStartDateTime;
  final DateTime sleepEndDateTime;
  final DateTime sleepDate;
  final int? sleepDurationSeconds;
  final int? timeInBedSeconds;
  final int? lightSleepDurationSeconds;
  final int? remSleepDurationSeconds;
  final int? deepSleepDurationSeconds;
  final int? timeToFallAsleepSeconds;
  final int? timeAwakeDuringSleepSeconds;
  final int? sleepQualityRating1To5Score;
  final int? sleepEfficiency1To100Score;
  final int? sleepGoalSeconds;
  final int? sleepContinuity1To5Score;
  final int? sleepContinuity1To5Rating;
  final int? hrMaximumBpm;
  final int? hrMinimumBpm;
  final int? hrAvgBpm;
  final int? hrRestingBpm;
  final int? hrBasalBpm;
  final List<HrGranularData>? hrGranularData;
  final double? hrvAvgRmssd;
  final double? hrvAvgSdnn;
  final List<HrvSdnnGranularData>? hrvSdnnGranularData;
  final List<HrvRmssdGranularData>? hrvRmssdGranularData;
  final TemperatureObject? temperatureMinimum;
  final TemperatureObject? temperatureAvg;
  final TemperatureObject? temperatureMaximum;
  final List<TemperatureGranularData>? temperatureGranularData;
  final TemperatureObject? temperatureDelta;
  final double? breathsMinimumPerMin;
  final double? breathsAvgPerMin;
  final double? breathsMaximumPerMin;
  final List<BreathingGranularData>? breathingGranularData;
  final int? snoringEventsCount;
  final int? snoringDurationTotalSeconds;
  final List<SnoringGranularData>? snoringGranularData;
  final double? saturationAvgPercentage;
  final double? saturationMinimumPercentage;
  final double? saturationMaximumPercentage;
  final List<SaturationGranularData>? saturationGranularData;

  SleepSummary({
    required this.dateTime,
    required this.sourceOfData,
    required this.wasTheUserUnderPhysicalActivity,
    required this.sleepStartDateTime,
    required this.sleepEndDateTime,
    required this.sleepDate,
    required this.sleepDurationSeconds,
    required this.timeInBedSeconds,
    required this.lightSleepDurationSeconds,
    required this.remSleepDurationSeconds,
    required this.deepSleepDurationSeconds,
    required this.timeToFallAsleepSeconds,
    required this.timeAwakeDuringSleepSeconds,
    required this.sleepQualityRating1To5Score,
    required this.sleepEfficiency1To100Score,
    required this.sleepGoalSeconds,
    required this.sleepContinuity1To5Score,
    required this.sleepContinuity1To5Rating,
    required this.hrMaximumBpm,
    required this.hrMinimumBpm,
    required this.hrAvgBpm,
    required this.hrRestingBpm,
    required this.hrBasalBpm,
    required this.hrGranularData,
    required this.hrvAvgRmssd,
    required this.hrvAvgSdnn,
    required this.hrvSdnnGranularData,
    required this.hrvRmssdGranularData,
    required this.temperatureMinimum,
    required this.temperatureAvg,
    required this.temperatureMaximum,
    required this.temperatureGranularData,
    required this.temperatureDelta,
    required this.breathsMinimumPerMin,
    required this.breathsAvgPerMin,
    required this.breathsMaximumPerMin,
    required this.breathingGranularData,
    required this.snoringEventsCount,
    required this.snoringDurationTotalSeconds,
    required this.snoringGranularData,
    required this.saturationAvgPercentage,
    required this.saturationMinimumPercentage,
    required this.saturationMaximumPercentage,
    required this.saturationGranularData,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SleepSummary &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          sourceOfData == other.sourceOfData &&
          wasTheUserUnderPhysicalActivity ==
              other.wasTheUserUnderPhysicalActivity &&
          sleepStartDateTime == other.sleepStartDateTime &&
          sleepEndDateTime == other.sleepEndDateTime &&
          sleepDate == other.sleepDate &&
          sleepDurationSeconds == other.sleepDurationSeconds &&
          timeInBedSeconds == other.timeInBedSeconds &&
          lightSleepDurationSeconds == other.lightSleepDurationSeconds &&
          remSleepDurationSeconds == other.remSleepDurationSeconds &&
          deepSleepDurationSeconds == other.deepSleepDurationSeconds &&
          timeToFallAsleepSeconds == other.timeToFallAsleepSeconds &&
          timeAwakeDuringSleepSeconds == other.timeAwakeDuringSleepSeconds &&
          sleepQualityRating1To5Score == other.sleepQualityRating1To5Score &&
          sleepEfficiency1To100Score == other.sleepEfficiency1To100Score &&
          sleepGoalSeconds == other.sleepGoalSeconds &&
          sleepContinuity1To5Score == other.sleepContinuity1To5Score &&
          sleepContinuity1To5Rating == other.sleepContinuity1To5Rating &&
          hrMaximumBpm == other.hrMaximumBpm &&
          hrMinimumBpm == other.hrMinimumBpm &&
          hrAvgBpm == other.hrAvgBpm &&
          hrRestingBpm == other.hrRestingBpm &&
          hrBasalBpm == other.hrBasalBpm &&
          // Note: This compares lists by reference.
          // For deep equality, you'd use foundation.listEquals
          hrGranularData == other.hrGranularData &&
          hrvAvgRmssd == other.hrvAvgRmssd &&
          hrvAvgSdnn == other.hrvAvgSdnn &&
          hrvSdnnGranularData == other.hrvSdnnGranularData &&
          hrvRmssdGranularData == other.hrvRmssdGranularData &&
          temperatureMinimum == other.temperatureMinimum &&
          temperatureAvg == other.temperatureAvg &&
          temperatureMaximum == other.temperatureMaximum &&
          temperatureGranularData == other.temperatureGranularData &&
          temperatureDelta == other.temperatureDelta &&
          breathsMinimumPerMin == other.breathsMinimumPerMin &&
          breathsAvgPerMin == other.breathsAvgPerMin &&
          breathsMaximumPerMin == other.breathsMaximumPerMin &&
          breathingGranularData == other.breathingGranularData &&
          snoringEventsCount == other.snoringEventsCount &&
          snoringDurationTotalSeconds == other.snoringDurationTotalSeconds &&
          snoringGranularData == other.snoringGranularData &&
          saturationAvgPercentage == other.saturationAvgPercentage &&
          saturationMinimumPercentage == other.saturationMinimumPercentage &&
          saturationMaximumPercentage == other.saturationMaximumPercentage &&
          saturationGranularData == other.saturationGranularData;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      sourceOfData.hashCode ^
      wasTheUserUnderPhysicalActivity.hashCode ^
      sleepStartDateTime.hashCode ^
      sleepEndDateTime.hashCode ^
      sleepDate.hashCode ^
      sleepDurationSeconds.hashCode ^
      timeInBedSeconds.hashCode ^
      lightSleepDurationSeconds.hashCode ^
      remSleepDurationSeconds.hashCode ^
      deepSleepDurationSeconds.hashCode ^
      timeToFallAsleepSeconds.hashCode ^
      timeAwakeDuringSleepSeconds.hashCode ^
      sleepQualityRating1To5Score.hashCode ^
      sleepEfficiency1To100Score.hashCode ^
      sleepGoalSeconds.hashCode ^
      sleepContinuity1To5Score.hashCode ^
      sleepContinuity1To5Rating.hashCode ^
      hrMaximumBpm.hashCode ^
      hrMinimumBpm.hashCode ^
      hrAvgBpm.hashCode ^
      hrRestingBpm.hashCode ^
      hrBasalBpm.hashCode ^
      hrGranularData.hashCode ^
      hrvAvgRmssd.hashCode ^
      hrvAvgSdnn.hashCode ^
      hrvSdnnGranularData.hashCode ^
      hrvRmssdGranularData.hashCode ^
      temperatureMinimum.hashCode ^
      temperatureAvg.hashCode ^
      temperatureMaximum.hashCode ^
      temperatureGranularData.hashCode ^
      temperatureDelta.hashCode ^
      breathsMinimumPerMin.hashCode ^
      breathsAvgPerMin.hashCode ^
      breathsMaximumPerMin.hashCode ^
      breathingGranularData.hashCode ^
      snoringEventsCount.hashCode ^
      snoringDurationTotalSeconds.hashCode ^
      snoringGranularData.hashCode ^
      saturationAvgPercentage.hashCode ^
      saturationMinimumPercentage.hashCode ^
      saturationMaximumPercentage.hashCode ^
      saturationGranularData.hashCode;

  @override
  String toString() {
    return 'SleepSummary{'
        'dateTime: $dateTime, '
        'sourceOfData: $sourceOfData, '
        'wasTheUserUnderPhysicalActivity: $wasTheUserUnderPhysicalActivity, '
        'sleepStartDateTime: $sleepStartDateTime, '
        'sleepEndDateTime: $sleepEndDateTime, '
        'sleepDate: $sleepDate, '
        'sleepDurationSeconds: $sleepDurationSeconds, '
        'timeInBedSeconds: $timeInBedSeconds, '
        'lightSleepDurationSeconds: $lightSleepDurationSeconds, '
        'remSleepDurationSeconds: $remSleepDurationSeconds, '
        'deepSleepDurationSeconds: $deepSleepDurationSeconds, '
        'timeToFallAsleepSeconds: $timeToFallAsleepSeconds, '
        'timeAwakeDuringSleepSeconds: $timeAwakeDuringSleepSeconds, '
        'sleepQualityRating1To5Score: $sleepQualityRating1To5Score, '
        'sleepEfficiency1To100Score: $sleepEfficiency1To100Score, '
        'sleepGoalSeconds: $sleepGoalSeconds, '
        'sleepContinuity1To5Score: $sleepContinuity1To5Score, '
        'sleepContinuity1To5Rating: $sleepContinuity1To5Rating, '
        'hrMaximumBpm: $hrMaximumBpm, '
        'hrMinimumBpm: $hrMinimumBpm, '
        'hrAvgBpm: $hrAvgBpm, '
        'hrRestingBpm: $hrRestingBpm, '
        'hrBasalBpm: $hrBasalBpm, '
        'hrGranularData: $hrGranularData, '
        'hrvAvgRmssd: $hrvAvgRmssd, '
        'hrvAvgSdnn: $hrvAvgSdnn, '
        'hrvSdnnGranularData: $hrvSdnnGranularData, '
        'hrvRmssdGranularData: $hrvRmssdGranularData, '
        'temperatureMinimum: $temperatureMinimum, '
        'temperatureAvg: $temperatureAvg, '
        'temperatureMaximum: $temperatureMaximum, '
        'temperatureGranularData: $temperatureGranularData, '
        'temperatureDelta: $temperatureDelta, '
        'breathsMinimumPerMin: $breathsMinimumPerMin, '
        'breathsAvgPerMin: $breathsAvgPerMin, '
        'breathsMaximumPerMin: $breathsMaximumPerMin, '
        'breathingGranularData: $breathingGranularData, '
        'snoringEventsCount: $snoringEventsCount, '
        'snoringDurationTotalSeconds: $snoringDurationTotalSeconds, '
        'snoringGranularData: $snoringGranularData, '
        'saturationAvgPercentage: $saturationAvgPercentage, '
        'saturationMinimumPercentage: $saturationMinimumPercentage, '
        'saturationMaximumPercentage: $saturationMaximumPercentage, '
        'saturationGranularData: $saturationGranularData'
        '}';
  }
}
