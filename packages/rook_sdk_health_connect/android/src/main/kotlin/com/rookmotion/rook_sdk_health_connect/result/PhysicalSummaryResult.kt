package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCPhysicalSummary
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.PhysicalSummaryResultProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.physicalSummarySuccess(summary: HCPhysicalSummary) {
    val bytes = PhysicalSummaryResultProto.newBuilder()
        .setSuccess(summary.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.physicalSummaryError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = PhysicalSummaryResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}
