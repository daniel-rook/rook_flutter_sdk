import 'package:rook_sdk_apple_health/src/data/extension/datetime_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/complex_extensions.dart';
import 'package:rook_sdk_apple_health/src/data/mapper/granular_data_mappers.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/domain/util/check_non_default.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension SleepSummaryMappers on SleepSummaryProto {
  SleepSummary toDomain() {
    return SleepSummary(
      dateTime: DateTimeExtensions.parseLocal(dateTime),
      sourceOfData: sourceOfData,
      wasTheUserUnderPhysicalActivity: wasTheUserUnderPhysicalActivity,
      sleepStartDateTime: DateTimeExtensions.parseLocal(sleepStartDateTime),
      sleepEndDateTime: DateTimeExtensions.parseLocal(sleepEndDateTime),
      sleepDate: DateTimeExtensions.parseLocal(sleepDate),
      sleepDurationSeconds: sleepDurationSeconds.checkNonDefault(),
      timeInBedSeconds: timeInBedSeconds.checkNonDefault(),
      lightSleepDurationSeconds: lightSleepDurationSeconds.checkNonDefault(),
      remSleepDurationSeconds: remSleepDurationSeconds.checkNonDefault(),
      deepSleepDurationSeconds: deepSleepDurationSeconds.checkNonDefault(),
      timeToFallAsleepSeconds: timeToFallAsleepSeconds.checkNonDefault(),
      timeAwakeDuringSleepSeconds:
          timeAwakeDuringSleepSeconds.checkNonDefault(),
      sleepQualityRating1To5Score:
          sleepQualityRating1To5Score.checkNonDefault(),
      sleepEfficiency1To100Score: sleepEfficiency1To100Score.checkNonDefault(),
      sleepGoalSeconds: sleepGoalSeconds.checkNonDefault(),
      sleepContinuity1To5Score: sleepContinuity1To5Score.checkNonDefault(),
      sleepContinuity1To5Rating: sleepContinuity1To5Rating.checkNonDefault(),
      hrMaximumBpm: hrMaximumBpm.checkNonDefault(),
      hrMinimumBpm: hrMinimumBpm.checkNonDefault(),
      hrAvgBpm: hrAvgBpm.checkNonDefault(),
      hrRestingBpm: hrRestingBpm.checkNonDefault(),
      hrBasalBpm: hrBasalBpm.checkNonDefault(),
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
      breathsMinimumPerMin: breathsMinimumPerMin.checkNonDefault(),
      breathsAvgPerMin: breathsAvgPerMin.checkNonDefault(),
      breathsMaximumPerMin: breathsMaximumPerMin.checkNonDefault(),
      breathingGranularData: breathingGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      snoringEventsCount: snoringEventsCount.checkNonDefault(),
      snoringDurationTotalSeconds: snoringDurationTotalSeconds,
      snoringGranularData: snoringGranularData.map((element) {
        return element.toDomain();
      }).toList(),
      saturationAvgPercentage: saturationAvgPercentage.checkNonDefault(),
      saturationMinimumPercentage:
          saturationMinimumPercentage.checkNonDefault(),
      saturationMaximumPercentage:
          saturationMaximumPercentage.checkNonDefault(),
      saturationGranularData: saturationGranularData.map((element) {
        return element.toDomain();
      }).toList(),
    );
  }
}
