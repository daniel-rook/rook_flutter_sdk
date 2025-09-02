package io.tryrook.rook_sdk_samsung_health.extension

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.ResultBooleanProto

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
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ResultBooleanProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}