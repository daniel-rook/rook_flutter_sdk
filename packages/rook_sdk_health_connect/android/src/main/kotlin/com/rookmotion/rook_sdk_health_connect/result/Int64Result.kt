package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.Int64ResultProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.int64Success(long: Long) {
    val bytes = Int64ResultProto.newBuilder()
        .setSuccess(long)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.int64Error(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = Int64ResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
