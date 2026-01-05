package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.enums.BackgroundReadStatus
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.BackgroundReadStatusProto
import com.rookmotion.rook_sdk_health_connect.proto.BackgroundReadStatusResultProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.backgroundReadStatusSuccess(backgroundReadStatus: BackgroundReadStatus) {
    val bytes = BackgroundReadStatusResultProto.newBuilder()
        .setSuccess(backgroundReadStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.backgroundReadStatusError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = BackgroundReadStatusResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}

fun BackgroundReadStatus.toProto(): BackgroundReadStatusProto {
    return when (this) {
        BackgroundReadStatus.UNAVAILABLE -> BackgroundReadStatusProto.UNAVAILABLE
        BackgroundReadStatus.PERMISSION_NOT_GRANTED -> BackgroundReadStatusProto.PERMISSION_NOT_GRANTED
        BackgroundReadStatus.PERMISSION_GRANTED -> BackgroundReadStatusProto.PERMISSION_GRANTED
    }
}
