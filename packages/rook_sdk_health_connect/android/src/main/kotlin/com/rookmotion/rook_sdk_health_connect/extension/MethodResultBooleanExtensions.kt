package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultBooleanProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.booleanSuccess(boolean: Boolean) {
    val bytes = ResultBooleanProto.newBuilder()
        .setSuccess(boolean)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.booleanError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getErrorMessage())

    val bytes = ResultBooleanProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}