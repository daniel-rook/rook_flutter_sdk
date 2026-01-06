package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionMessage
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.proto.PhysicalSummaryResultProto
import io.tryrook.rook_sdk_samsung_health.proto.SDKExceptionProto
import io.tryrook.sdk.samsung.domain.model.SHPhysicalSummary

fun MethodChannel.Result.physicalSummarySuccess(summary: SHPhysicalSummary) {
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
