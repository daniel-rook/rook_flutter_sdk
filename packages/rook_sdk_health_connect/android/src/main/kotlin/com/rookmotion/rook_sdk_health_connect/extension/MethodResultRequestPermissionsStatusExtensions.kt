package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.enums.RequestPermissionsStatus
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultRequestPermissionsStatusProto
import com.rookmotion.rook_sdk_health_connect.mapper.toRequestPermissionsStatusProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.requestPermissionsStatusSuccess(requestPermissionsStatus: RequestPermissionsStatus) {
    val bytes = ResultRequestPermissionsStatusProto.newBuilder()
        .setRequestPermissionsStatusProto(requestPermissionsStatus.toRequestPermissionsStatusProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.requestPermissionsStatusError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getErrorMessage())

    val bytes = ResultRequestPermissionsStatusProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
