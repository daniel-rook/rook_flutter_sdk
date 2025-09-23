package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.enums.BackgroundReadStatus
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.BackgroundReadStatusProto
import com.rookmotion.rook_sdk_health_connect.proto.BackgroundReadStatusResultProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.result.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.backgroundReadStatusSuccess(backgroundReadStatus: BackgroundReadStatus) {
    val bytes = BackgroundReadStatusResultProto.newBuilder()
        .setSuccess(backgroundReadStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.backgroundReadStatusError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = BackgroundReadStatusResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
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
