package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultInt64Proto
import io.flutter.plugin.common.MethodChannel

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
