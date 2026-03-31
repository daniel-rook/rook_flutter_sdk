package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.DEFAULT_DOUBLE
import io.tryrook.rook_sdk_samsung_health.DEFAULT_INT
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionMessage
import io.tryrook.rook_sdk_samsung_health.extension.toProtoString
import io.tryrook.rook_sdk_samsung_health.mapper.toGranularDataProto
import io.tryrook.rook_sdk_samsung_health.mapper.toObjectProto
import io.tryrook.rook_sdk_samsung_health.proto.SDKExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.SleepSummariesProto
import io.tryrook.rook_sdk_samsung_health.proto.SleepSummaryProto
import io.tryrook.rook_sdk_samsung_health.proto.SleepSummaryResultProto
import io.tryrook.sdk.samsung.domain.model.SHSleepSummary

fun MethodChannel.Result.sleepSummarySuccess(summaries: List<SHSleepSummary>) {
    val sleepSummaries = SleepSummariesProto.newBuilder()
        .addAllElements(summaries.map { it.toProto() })
        .build()

    val bytes = SleepSummaryResultProto.newBuilder()
        .setSuccess(sleepSummaries)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.sleepSummaryError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = SleepSummaryResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}

fun SHSleepSummary.toProto(): SleepSummaryProto {
    return SleepSummaryProto.newBuilder()
        .setDateTime(dateTime.toProtoString())
        .setSourceOfData(sourceOfData)
        .setWasTheUserUnderPhysicalActivity(wasTheUserUnderPhysicalActivity)
        .setSleepStartDateTime(sleepStartDateTime.toProtoString())
        .setSleepEndDateTime(sleepEndDateTime.toProtoString())
        .setSleepDate(sleepDate.toProtoString())
        .setSleepDurationSeconds(sleepDurationSeconds ?: DEFAULT_INT)
        .setTimeInBedSeconds(timeInBedSeconds ?: DEFAULT_INT)
        .setLightSleepDurationSeconds(lightSleepDurationSeconds ?: DEFAULT_INT)
        .setRemSleepDurationSeconds(remSleepDurationSeconds ?: DEFAULT_INT)
        .setDeepSleepDurationSeconds(deepSleepDurationSeconds ?: DEFAULT_INT)
        .setTimeToFallAsleepSeconds(timeToFallAsleepSeconds ?: DEFAULT_INT)
        .setTimeAwakeDuringSleepSeconds(timeAwakeDuringSleepSeconds ?: DEFAULT_INT)
        .setSleepQualityRating1To5Score(sleepQualityRating1To5Score ?: DEFAULT_INT)
        .setSleepEfficiency1To100Score(sleepEfficiency1To100Score ?: DEFAULT_INT)
        .setSleepGoalSeconds(sleepGoalSeconds ?: DEFAULT_INT)
        .setSleepContinuity1To5Score(sleepContinuity1To5Score ?: DEFAULT_INT)
        .setSleepContinuity1To5Rating(sleepContinuity1To5Rating ?: DEFAULT_INT)
        .setHrMaximumBpm(hrMaximumBpm ?: DEFAULT_INT)
        .setHrMinimumBpm(hrMinimumBpm ?: DEFAULT_INT)
        .setHrAvgBpm(hrAvgBpm ?: DEFAULT_INT)
        .setHrRestingBpm(hrRestingBpm ?: DEFAULT_INT)
        .setHrBasalBpm(hrBasalBpm ?: DEFAULT_INT)
        .addAllHrGranularData(hrGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setHrvAvgRmssd(hrvAvgRmssd ?: DEFAULT_DOUBLE)
        .setHrvAvgSdnn(hrvAvgSdnn ?: DEFAULT_DOUBLE)
        .addAllHrvSdnnGranularData(hrvSdnnGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllHrvRmssdGranularData(hrvRmssdGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllTemperatureMinimum(temperatureMinimum?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .addAllTemperatureAvg(temperatureAvg?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .addAllTemperatureMaximum(temperatureMaximum?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .addAllTemperatureGranularData(temperatureGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllTemperatureDelta(temperatureDelta?.toObjectProto()?.let { listOf(it) } ?: emptyList())
        .setBreathsMinimumPerMin(breathsMinimumPerMin ?: DEFAULT_DOUBLE)
        .setBreathsAvgPerMin(breathsAvgPerMin ?: DEFAULT_DOUBLE)
        .setBreathsMaximumPerMin(breathsMaximumPerMin ?: DEFAULT_DOUBLE)
        .addAllBreathingGranularData(breathingGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setSnoringEventsCount(snoringEventsCount ?: DEFAULT_INT)
        .setSnoringDurationTotalSeconds(snoringDurationTotalSeconds ?: DEFAULT_INT)
        .addAllSnoringGranularData(snoringGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setSaturationAvgPercentage(saturationAvgPercentage ?: DEFAULT_DOUBLE)
        .setSaturationMinimumPercentage(saturationMinimumPercentage ?: DEFAULT_DOUBLE)
        .setSaturationMaximumPercentage(saturationMaximumPercentage ?: DEFAULT_DOUBLE)
        .addAllSaturationGranularData(saturationGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .build()
}

