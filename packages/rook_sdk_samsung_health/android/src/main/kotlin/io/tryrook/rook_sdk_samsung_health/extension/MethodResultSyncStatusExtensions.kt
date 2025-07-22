package io.tryrook.rook_sdk_samsung_health.extension

import io.tryrook.rook_sdk_samsung_health.mapper.toSyncStatusProto
import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.ResultSyncStatusProto
import io.tryrook.sdk.samsung.domain.enums.SHSyncStatus

fun MethodChannel.Result.syncStatusSuccess(syncStatus: SHSyncStatus) {
    val bytes = ResultSyncStatusProto.newBuilder()
        .setSyncStatusProto(syncStatus.toSyncStatusProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.syncStatusError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ResultSyncStatusProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
