//
//  GranularDataMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 28/10/25.
//

import Foundation
import RookSDK

extension RookHearRateGranular {
    func toGranularProto() -> HrGranularDataProto {
        return HrGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.hrBpm = hrBPM.toInt32()
        }
    }
}

extension RookHRVSDNNGranular {
    func toGranularProto() -> HrvSdnnGranularDataProto {
        return HrvSdnnGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.hrvSdnn = hrvSDNN
        }
    }
}

extension RookHRVRmssdGranular {
    func toGranularProto() -> HrvRmssdGranularDataProto {
        return HrvRmssdGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.hrvRmssd = hrvRmssd.toDouble()
        }
    }
}

extension RookHeartRateItem {
    func toGranularProto() -> HrGranularDataProto {
        return HrGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.hrBpm = hrBPM.toInt32()
        }
    }
}

extension RookHRVItem {
    func toGranularSdnnProto() -> HrvSdnnGranularDataProto {
        return HrvSdnnGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.hrvSdnn = hrv
        }
    }
    
    func toGranularRmssdProto() -> HrvRmssdGranularDataProto {
        return HrvRmssdGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.hrvRmssd = hrv
        }
    }
}

extension RookTemperatureGranular {
    func toGranularProto() -> TemperatureGranularDataProto {
        return TemperatureGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.measurementType = measurementType
            $0.temperatureCelsius = temperatureCelsius.toDouble()
        }
    }
}

extension RookBreatingGranular {
    func toGranularProto() -> BreathingGranularDataProto {
        return BreathingGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.breathsPerMin = breathsPerMin.toDouble()
        }
    }
}

extension RookSnoringGranular {
    func toGranularProto() -> SnoringGranularDataProto {
        return SnoringGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.snoringEventsCount = snoringEventsCountNumber.toInt32()
        }
    }
}

extension RookSaturationGranular {
    func toGranularProto() -> SaturationGranularDataProto {
        return SaturationGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.saturationPercentage = saturationPercentage.toDouble()
        }
    }
}

extension RookStepsGranular {
    func toStepsGranularProto() -> StepsGranularDataProto {
        return StepsGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.steps = steps.toInt32()
        }
    }

    func toActiveStepsGranularProto() -> ActiveStepsGranularDataProto {
        return ActiveStepsGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.activeSteps = steps.toInt32()
        }
    }
}

extension RookTraveledDistanceGranular {
    func toGranularProto() -> TraveledDistanceGranularDataProto {
        return TraveledDistanceGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.traveledDistanceMeters = traveledDistanceMeters.toDouble()
        }
    }
}

extension RookFloorsClimbedGranular {
    func toGranularProto() -> FloorsClimbedGranularDataProto {
        return FloorsClimbedGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.floorsClimbed = floorsClimbed.toDouble()
        }
    }
}

extension RookElevationGranular {
    func toGranularProto() -> ElevationGranularDataProto {
        return ElevationGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.elevationChangeMeters = elevationChange.toDouble()
        }
    }
}

extension RookSwimmingDistanceGranular {
    func toGranularProto() -> SwimmingDistanceGranularDataProto {
        return SwimmingDistanceGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.swimmingDistanceMeters = swimmingDistanceMeters.toDouble()
        }
    }
}

extension RookVo2Granular {
    func toGranularProto() -> Vo2GranularDataProto {
        return Vo2GranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.vo2MlPerMinPerKg = vo2MlPerMinPerKg
        }
    }
}

extension RookActivityLevelGranularData {
    func toGranularProto() -> ActivityLevelGranularDataProto {
        return ActivityLevelGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.activityLevel = activityLevel.toInt32()
        }
    }
}

extension RookStressGranular {
    func toGranularProto() -> StressGranularDataProto {
        return StressGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.stressScore = stressScore.toInt32()
        }
    }
}

extension RookBloodGlucoseGranular {
    func toGranularProto() -> BloodGlucoseGranularDataProto {
        return BloodGlucoseGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.bloodGlucoseMgPerDl = bloodGlucoseMgPerDL
        }
    }
}

extension RookBloodPressureGranularSystolicDiastolicBp {
    func toGranularProto() -> BloodPressureGranularDataProto {
        return BloodPressureGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.diastolicMmHg = diastolicBp.toDouble()
            $0.systolicMmHg = systolicBp.toDouble()
        }
    }
}

extension RookHydrationAmountGranular {
    func toGranularProto() -> HydrationAmountGranularDataProto {
        return HydrationAmountGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.hydrationAmountMl = hydrationAmountMl.toDouble()
        }
    }
}

extension RookHydrationLevelGranular {
    func toGranularProto() -> HydrationLevelGranularDataProto {
        return HydrationLevelGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.hydrationLevelPercentage = hydrationLevelPercentage.toDouble()
        }
    }
}

extension RookMoodGranular {
    func toGranularProto() -> MoodGranularDataProto {
        return MoodGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.moodScale = moodScale.toDouble()
        }
    }
}

extension RookSpeedGranular {
    func toGranularProto() -> SpeedGranularDataProto {
        return SpeedGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.speedMetersPerSecond = speedMetersPerSecond.toDouble()
        }
    }
}

extension RookCadenceGranular {
    func toGranularProto() -> CadenceGranularDataProto {
        return CadenceGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.cadenceRpm = cadenceRPM.toDouble()
        }
    }
}

extension RookTorqueGranular {
    func toGranularProto() -> TorqueGranularDataProto {
        return TorqueGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.torqueNewtonMeters = torqueNewtonMeters.toDouble()
        }
    }
}

extension RookLapGranular {
    func toGranularProto() -> LapGranularDataProto {
        return LapGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.laps = laps.toInt32()
        }
    }
}

extension RookPowerGranular {
    func toGranularProto() -> PowerGranularDataProto {
        return PowerGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.powerWatts = powerWatts.toDouble()
        }
    }
}

extension RookPositionGranular {
    func toGranularProto() -> PositionGranularDataProto {
        return PositionGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.latDeg = lat
            $0.lngDeg = lng
        }
    }
}

extension RookTssGranular {
    func toGranularProto() -> TssGranularDataProto {
        return TssGranularDataProto.with {
            $0.dateTime = dateTime.toProtoString()
            $0.intervalDurationSeconds = intervalDurationSeconds.toInt32()
            $0.tssScore = tss1_500_Score.toInt32()
        }
    }
}
