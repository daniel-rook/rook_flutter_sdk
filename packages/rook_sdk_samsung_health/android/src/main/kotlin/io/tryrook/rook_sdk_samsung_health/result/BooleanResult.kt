package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionId
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionMessage
import io.tryrook.rook_sdk_samsung_health.proto.BooleanResultProto
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto

fun MethodChannel.Result.booleanSuccess(boolean: Boolean) {
    val bytes = BooleanResultProto.newBuilder()
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

    val bytes = BooleanResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}