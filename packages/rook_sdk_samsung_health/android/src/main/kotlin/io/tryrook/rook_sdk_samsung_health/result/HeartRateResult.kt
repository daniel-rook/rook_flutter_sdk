package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.DEFAULT_DOUBLE
import io.tryrook.rook_sdk_samsung_health.DEFAULT_INT
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionMessage
import io.tryrook.rook_sdk_samsung_health.mapper.toGranularDataProto
import io.tryrook.rook_sdk_samsung_health.proto.HearRateProto
import io.tryrook.rook_sdk_samsung_health.proto.HearRateResultProto
import io.tryrook.rook_sdk_samsung_health.proto.SDKExceptionProto
import io.tryrook.sdk.samsung.domain.model.SHHeartRate

fun MethodChannel.Result.heartRateSuccess(heartRate: SHHeartRate) {
    val bytes = HearRateResultProto.newBuilder()
        .setSuccess(heartRate.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.heartRateError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = HearRateResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}

fun SHHeartRate.toProto(): HearRateProto {
    return HearRateProto.newBuilder()
        .setHrMaximumBpm(hrMaximumBpm ?: DEFAULT_INT)
        .setHrMinimumBpm(hrMinimumBpm ?: DEFAULT_INT)
        .setHrAvgBpm(hrAvgBpm ?: DEFAULT_INT)
        .setHrRestingBpm(hrRestingBpm ?: DEFAULT_INT)
        .addAllHrGranularData(hrGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .setHrvAvgRmssd(hrvAvgRmssd ?: DEFAULT_DOUBLE)
        .setHrvAvgSdnn(hrvAvgSdnn ?: DEFAULT_DOUBLE)
        .addAllHrvSdnnGranularData(hrvSdnnGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .addAllHrvRmssdGranularData(hrvRmssdGranularData?.map { it.toGranularDataProto() } ?: emptyList())
        .build()
}
