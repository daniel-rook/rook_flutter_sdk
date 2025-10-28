package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.granular.ActiveStepsGranularData
import com.rookmotion.rook.sdk.domain.model.granular.ActivityLevelGranularData
import com.rookmotion.rook.sdk.domain.model.granular.BloodGlucoseGranularData
import com.rookmotion.rook.sdk.domain.model.granular.BloodPressureGranularData
import com.rookmotion.rook.sdk.domain.model.granular.BreathingGranularData
import com.rookmotion.rook.sdk.domain.model.granular.CadenceGranularData
import com.rookmotion.rook.sdk.domain.model.granular.ElevationGranularData
import com.rookmotion.rook.sdk.domain.model.granular.FloorsClimbedGranularData
import com.rookmotion.rook.sdk.domain.model.granular.HrGranularData
import com.rookmotion.rook.sdk.domain.model.granular.HrvRmssdGranularData
import com.rookmotion.rook.sdk.domain.model.granular.HrvSdnnGranularData
import com.rookmotion.rook.sdk.domain.model.granular.HydrationAmountGranularData
import com.rookmotion.rook.sdk.domain.model.granular.HydrationLevelGranularData
import com.rookmotion.rook.sdk.domain.model.granular.LapGranularData
import com.rookmotion.rook.sdk.domain.model.granular.MenstruationFlowGranularData
import com.rookmotion.rook.sdk.domain.model.granular.MoodGranularData
import com.rookmotion.rook.sdk.domain.model.granular.PositionGranularData
import com.rookmotion.rook.sdk.domain.model.granular.PowerGranularData
import com.rookmotion.rook.sdk.domain.model.granular.SaturationGranularData
import com.rookmotion.rook.sdk.domain.model.granular.SnoringGranularData
import com.rookmotion.rook.sdk.domain.model.granular.SpeedGranularData
import com.rookmotion.rook.sdk.domain.model.granular.StepsGranularData
import com.rookmotion.rook.sdk.domain.model.granular.StressGranularData
import com.rookmotion.rook.sdk.domain.model.granular.SwimmingDistanceGranularData
import com.rookmotion.rook.sdk.domain.model.granular.TemperatureGranularData
import com.rookmotion.rook.sdk.domain.model.granular.TorqueGranularData
import com.rookmotion.rook.sdk.domain.model.granular.TraveledDistanceGranularData
import com.rookmotion.rook.sdk.domain.model.granular.TssGranularData
import com.rookmotion.rook.sdk.domain.model.granular.Vo2GranularData
import com.rookmotion.rook_sdk_health_connect.extension.toProtoString
import com.rookmotion.rook_sdk_health_connect.proto.ActiveStepsGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.ActivityLevelGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.BloodGlucoseGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.BloodPressureGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.BreathingGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.CadenceGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.ElevationGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.FloorsClimbedGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.HrGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.HrvRmssdGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.HrvSdnnGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.HydrationAmountGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.HydrationLevelGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.LapGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.MenstruationFlowGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.MoodGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.PositionGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.PowerGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.SaturationGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.SnoringGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.SpeedGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.StepsGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.StressGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.SwimmingDistanceGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.TemperatureGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.TorqueGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.TraveledDistanceGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.TssGranularDataProto
import com.rookmotion.rook_sdk_health_connect.proto.Vo2GranularDataProto

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
