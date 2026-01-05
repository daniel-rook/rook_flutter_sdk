package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCSleepSummary
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.SleepSummariesProto
import com.rookmotion.rook_sdk_health_connect.proto.SleepSummaryResultProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.sleepSummarySuccess(summaries: List<HCSleepSummary>) {
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
