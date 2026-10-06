//
//  SleepSummaryMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 28/10/25.
//

import Foundation
import RookSDK

extension RookSleepSummary {
    func toProto() -> SleepSummaryProto {
        return SleepSummaryProto.with {
            $0.dateTime = datetime.toProtoString()
            $0.sourceOfData = sourceOfData
            $0.wasTheUserUnderPhysicalActivity = false
            $0.sleepStartDateTime = sleepStartDatetime.toProtoString()
            $0.sleepEndDateTime = sleepEndDatetime.toProtoString()
            $0.sleepDate = sleepDate.toProtoString()
            $0.sleepDurationSeconds = sleepDurationSeconds.toInt32()
            $0.timeInBedSeconds = timeInBedSeconds.toInt32()
            $0.lightSleepDurationSeconds = lightSleepDurationSeconds.toInt32()
            $0.remSleepDurationSeconds = remSleepDurationSeconds.toInt32()
            $0.deepSleepDurationSeconds = deepSleepDurationSeconds.toInt32()
            $0.timeToFallAsleepSeconds = timeToFallAsleepSeconds.toInt32()
            $0.timeAwakeDuringSleepSeconds = timeAwakeDuringSleepSeconds.toInt32()
            $0.sleepQualityRating1To5Score = sleepQualityRating1_5_Score.toInt32()
            $0.sleepEfficiency1To100Score = sleepEfficiency1_100_Score.toInt32()
            $0.sleepGoalSeconds = sleepGoalSeconds.toInt32()
            $0.sleepContinuity1To5Score = sleepContinuity1_5_Score.toInt32()
            $0.sleepContinuity1To5Rating = sleepContinuity1_5_Rating.toInt32()
            $0.hrMaximumBpm = hrMaxBPM.toInt32()
            $0.hrMinimumBpm = hrMinimumBPM.toInt32()
            $0.hrAvgBpm = hrAvgBPM.toInt32()
            $0.hrRestingBpm = hrRestingBPM.toInt32()
            $0.hrBasalBpm = hrBasalBPM.toInt32()
            $0.hrGranularData = hrGranularDataBPM?.map { $0.toGranularProto() } ?? []
            $0.hrvAvgRmssd = hrvAvgRmssdNumber.toDouble()
            $0.hrvAvgSdnn = hrvAvgSdnnNumber.toDouble()
            $0.hrvSdnnGranularData = hrvSdnnGranularData?.map { $0.toGranularProto() } ?? []
            $0.hrvRmssdGranularData = hrvRmssdGranularData?.map { $0.toGranularProto() } ?? []
            $0.temperatureMinimum = temperatureMinimumCelsius?.map { $0.toObjectProto() } ?? []
            $0.temperatureAvg = temperatureAvgCelsius?.map { $0.toObjectProto() } ?? []
            $0.temperatureMaximum = temperatureMaxCelsius?.map { $0.toObjectProto() } ?? []
            $0.temperatureGranularData = temperatureGranularDataCelsius?.map { $0.toGranularProto() } ?? []
            $0.temperatureDelta = temperatureDeltaCelsius?.map { $0.toObjectProto() } ?? []
            $0.breathsMinimumPerMin = breathsMinimumPerMin.toDouble()
            $0.breathsAvgPerMin = breathsAvgPerMin.toDouble()
            $0.breathsMaximumPerMin = breathsMaxPerMin.toDouble()
            $0.breathingGranularData = breathingGranularDataBreathsPerMin?.map { $0.toGranularProto() } ?? []
            $0.snoringEventsCount = snoringEventsCountNumber.toInt32()
            $0.snoringDurationTotalSeconds = snoringDurationTotalSeconds.toInt32()
            $0.snoringGranularData = snoringGranularDataSnores?.map { $0.toGranularProto() } ?? []
            $0.saturationAvgPercentage = saturationAvgPercentage.toDouble()
            $0.saturationMinimumPercentage = saturationMinPercentage.toDouble()
            $0.saturationMaximumPercentage = saturationMaxPercentage.toDouble()
            $0.saturationGranularData = saturationGranularDataPercentage?.map { $0.toGranularProto() } ?? []
        }
    }
}
