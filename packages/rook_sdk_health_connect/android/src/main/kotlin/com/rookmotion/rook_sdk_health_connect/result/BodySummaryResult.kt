package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCBodySummary
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.BodySummaryResultProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.bodySummarySuccess(summary: HCBodySummary) {
    val bytes = BodySummaryResultProto.newBuilder()
        .setSuccess(summary.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.bodySummaryError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = BodySummaryResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}
