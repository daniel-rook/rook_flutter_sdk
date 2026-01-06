package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionMessage
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.proto.SDKExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.SleepSummariesProto
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
