package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.enums.RequestPermissionsStatus
import com.rookmotion.rook_sdk_health_connect.data.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.ResultRequestPermissionsStatusProto
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.requestPermissionsStatusSuccess(requestPermissionsStatus: RequestPermissionsStatus) {
    val bytes = ResultRequestPermissionsStatusProto.newBuilder()
        .setRequestPermissionsStatusProto(requestPermissionsStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.requestPermissionsStatusError(throwable: Throwable) {
    // TODO: 01/08/24 Should check for real ID
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(-1)
        .setCode(0)
        .setMessage(throwable.getErrorMessage())

    val bytes = ResultRequestPermissionsStatusProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
