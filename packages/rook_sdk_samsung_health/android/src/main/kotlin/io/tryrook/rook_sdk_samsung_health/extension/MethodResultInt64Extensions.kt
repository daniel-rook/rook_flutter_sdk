package io.tryrook.rook_sdk_samsung_health.extension

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.ResultInt64Proto

fun MethodChannel.Result.int64Success(long: Long) {
    val bytes = ResultInt64Proto.newBuilder()
        .setValue(long)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.int64Error(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ResultInt64Proto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
