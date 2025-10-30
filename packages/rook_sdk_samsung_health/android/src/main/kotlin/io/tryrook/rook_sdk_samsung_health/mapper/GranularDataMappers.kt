package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.extension.toProtoString
import io.tryrook.rook_sdk_samsung_health.proto.ActiveStepsGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.ActivityLevelGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.BloodGlucoseGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.BloodPressureGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.BreathingGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.CadenceGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.ElevationGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.FloorsClimbedGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.HrGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.HrvRmssdGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.HrvSdnnGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.HydrationAmountGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.HydrationLevelGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.LapGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.MenstruationFlowGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.MoodGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.PositionGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.PowerGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.SaturationGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.SnoringGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.SpeedGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.StepsGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.StressGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.SwimmingDistanceGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.TemperatureGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.TorqueGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.TraveledDistanceGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.TssGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.Vo2GranularDataProto
import io.tryrook.sdk.samsung.domain.model.granular.ActiveStepsGranularData
import io.tryrook.sdk.samsung.domain.model.granular.ActivityLevelGranularData
import io.tryrook.sdk.samsung.domain.model.granular.BloodGlucoseGranularData
import io.tryrook.sdk.samsung.domain.model.granular.BloodPressureGranularData
import io.tryrook.sdk.samsung.domain.model.granular.BreathingGranularData
import io.tryrook.sdk.samsung.domain.model.granular.CadenceGranularData
import io.tryrook.sdk.samsung.domain.model.granular.ElevationGranularData
import io.tryrook.sdk.samsung.domain.model.granular.FloorsClimbedGranularData
import io.tryrook.sdk.samsung.domain.model.granular.HrGranularData
import io.tryrook.sdk.samsung.domain.model.granular.HrvRmssdGranularData
import io.tryrook.sdk.samsung.domain.model.granular.HrvSdnnGranularData
import io.tryrook.sdk.samsung.domain.model.granular.HydrationAmountGranularData
import io.tryrook.sdk.samsung.domain.model.granular.HydrationLevelGranularData
import io.tryrook.sdk.samsung.domain.model.granular.LapGranularData
import io.tryrook.sdk.samsung.domain.model.granular.MenstruationFlowGranularData
import io.tryrook.sdk.samsung.domain.model.granular.MoodGranularData
import io.tryrook.sdk.samsung.domain.model.granular.PositionGranularData
import io.tryrook.sdk.samsung.domain.model.granular.PowerGranularData
import io.tryrook.sdk.samsung.domain.model.granular.SaturationGranularData
import io.tryrook.sdk.samsung.domain.model.granular.SnoringGranularData
import io.tryrook.sdk.samsung.domain.model.granular.SpeedGranularData
import io.tryrook.sdk.samsung.domain.model.granular.StepsGranularData
import io.tryrook.sdk.samsung.domain.model.granular.StressGranularData
import io.tryrook.sdk.samsung.domain.model.granular.SwimmingDistanceGranularData
import io.tryrook.sdk.samsung.domain.model.granular.TemperatureGranularData
import io.tryrook.sdk.samsung.domain.model.granular.TorqueGranularData
import io.tryrook.sdk.samsung.domain.model.granular.TraveledDistanceGranularData
import io.tryrook.sdk.samsung.domain.model.granular.TssGranularData
import io.tryrook.sdk.samsung.domain.model.granular.Vo2GranularData

fun ActiveStepsGranularData.toGranularDataProto(): ActiveStepsGranularDataProto {
    return ActiveStepsGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setActiveSteps(activeSteps)
        .build()
}

fun ActivityLevelGranularData.toGranularDataProto(): ActivityLevelGranularDataProto {
    return ActivityLevelGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setActivityLevel(activityLevel)
        .build()
}

fun BloodGlucoseGranularData.toGranularDataProto(): BloodGlucoseGranularDataProto {
    return BloodGlucoseGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setBloodGlucoseMgPerDl(bloodGlucoseMgPerDl)
        .build()
}

fun BloodPressureGranularData.toGranularDataProto(): BloodPressureGranularDataProto {
    return BloodPressureGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setSystolicMmHg(systolicMmHg)
        .setDiastolicMmHg(diastolicMmHg)
        .build()
}

fun BreathingGranularData.toGranularDataProto(): BreathingGranularDataProto {
    return BreathingGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setBreathsPerMin(breathsPerMin)
        .build()
}

fun CadenceGranularData.toGranularDataProto(): CadenceGranularDataProto {
    return CadenceGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setCadenceRpm(cadenceRpm)
        .build()
}

fun ElevationGranularData.toGranularDataProto(): ElevationGranularDataProto {
    return ElevationGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setElevationChangeMeters(elevationChangeMeters)
        .build()
}

fun FloorsClimbedGranularData.toGranularDataProto(): FloorsClimbedGranularDataProto {
    return FloorsClimbedGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setFloorsClimbed(floorsClimbed)
        .build()
}

fun HrGranularData.toGranularDataProto(): HrGranularDataProto {
    return HrGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setHrBpm(hrBpm)
        .build()
}

fun HrvRmssdGranularData.toGranularDataProto(): HrvRmssdGranularDataProto {
    return HrvRmssdGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setHrvRmssd(hrvRmssd)
        .build()
}

fun HrvSdnnGranularData.toGranularDataProto(): HrvSdnnGranularDataProto {
    return HrvSdnnGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setHrvSdnn(hrvSdnn)
        .build()
}

fun HydrationAmountGranularData.toGranularDataProto(): HydrationAmountGranularDataProto {
    return HydrationAmountGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setHydrationAmountMl(hydrationAmountMl)
        .build()
}

fun HydrationLevelGranularData.toGranularDataProto(): HydrationLevelGranularDataProto {
    return HydrationLevelGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setHydrationLevelPercentage(hydrationLevelPercentage)
        .build()
}

fun LapGranularData.toGranularDataProto(): LapGranularDataProto {
    return LapGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setLaps(laps)
        .build()
}

fun MenstruationFlowGranularData.toGranularDataProto(): MenstruationFlowGranularDataProto {
    return MenstruationFlowGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setFlowMl(flowMl)
        .build()
}

fun MoodGranularData.toGranularDataProto(): MoodGranularDataProto {
    return MoodGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setMoodScale(moodScale)
        .build()
}

fun PositionGranularData.toGranularDataProto(): PositionGranularDataProto {
    return PositionGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setLatDeg(latDeg)
        .setLngDeg(lngDeg)
        .build()
}

fun PowerGranularData.toGranularDataProto(): PowerGranularDataProto {
    return PowerGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setPowerWatts(powerWatts)
        .build()
}

fun SaturationGranularData.toGranularDataProto(): SaturationGranularDataProto {
    return SaturationGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setSaturationPercentage(saturationPercentage)
        .build()
}

fun SnoringGranularData.toGranularDataProto(): SnoringGranularDataProto {
    return SnoringGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setSnoringEventsCount(snoringEventsCount)
        .build()
}

fun SpeedGranularData.toGranularDataProto(): SpeedGranularDataProto {
    return SpeedGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setSpeedMetersPerSecond(speedMetersPerSecond)
        .build()
}

fun StepsGranularData.toGranularDataProto(): StepsGranularDataProto {
    return StepsGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setSteps(steps)
        .build()
}

fun StressGranularData.toGranularDataProto(): StressGranularDataProto {
    return StressGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setStressScore(stressScore)
        .build()
}

fun SwimmingDistanceGranularData.toGranularDataProto(): SwimmingDistanceGranularDataProto {
    return SwimmingDistanceGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setSwimmingDistanceMeters(swimmingDistanceMeters)
        .build()
}

fun TemperatureGranularData.toGranularDataProto(): TemperatureGranularDataProto {
    return TemperatureGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setMeasurementType(measurementType)
        .setTemperatureCelsius(temperatureCelsius)
        .build()
}

fun TorqueGranularData.toGranularDataProto(): TorqueGranularDataProto {
    return TorqueGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setTorqueNewtonMeters(torqueNewtonMeters)
        .build()
}

fun TraveledDistanceGranularData.toGranularDataProto(): TraveledDistanceGranularDataProto {
    return TraveledDistanceGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setTraveledDistanceMeters(traveledDistanceMeters)
        .build()
}

fun TssGranularData.toGranularDataProto(): TssGranularDataProto {
    return TssGranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setIntervalDurationSeconds(intervalDurationSeconds)
        .setTssScore(tssScore)
        .build()
}

fun Vo2GranularData.toGranularDataProto(): Vo2GranularDataProto {
    return Vo2GranularDataProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setVo2MlPerMinPerKg(vo2MlPerMinPerKg)
        .build()
} 
