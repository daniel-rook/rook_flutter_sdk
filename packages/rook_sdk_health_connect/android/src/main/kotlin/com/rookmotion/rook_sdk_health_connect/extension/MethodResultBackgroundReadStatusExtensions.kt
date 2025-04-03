package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.enums.BackgroundReadStatus
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultBackgroundReadStatusProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.backgroundReadStatusSuccess(backgroundReadStatus: BackgroundReadStatus) {
    val bytes = ResultBackgroundReadStatusProto.newBuilder()
        .setBackgroundReadStatusProto(backgroundReadStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.backgroundReadStatusError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ResultBackgroundReadStatusProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}