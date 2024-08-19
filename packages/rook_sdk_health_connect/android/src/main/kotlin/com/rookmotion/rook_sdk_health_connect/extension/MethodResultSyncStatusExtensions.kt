package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.enums.SyncStatus
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusProto
import com.rookmotion.rook_sdk_health_connect.mapper.toSyncStatusProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.syncStatusSuccess(syncStatus: SyncStatus) {
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
        .setMessage(throwable.getErrorMessage())

    val bytes = ResultSyncStatusProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
