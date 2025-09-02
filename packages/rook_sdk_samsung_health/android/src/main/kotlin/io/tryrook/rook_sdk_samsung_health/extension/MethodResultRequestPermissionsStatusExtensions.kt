package io.tryrook.rook_sdk_samsung_health.extension

import io.tryrook.rook_sdk_samsung_health.mapper.toRequestPermissionsStatusProto
import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.ResultRequestPermissionsStatusProto
import io.tryrook.sdk.samsung.domain.enums.SHRequestPermissionsStatus

fun MethodChannel.Result.requestPermissionsStatusSuccess(requestPermissionsStatus: SHRequestPermissionsStatus) {
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
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ResultRequestPermissionsStatusProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
