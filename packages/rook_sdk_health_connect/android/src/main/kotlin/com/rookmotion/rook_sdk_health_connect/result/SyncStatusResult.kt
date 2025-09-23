package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.enums.SyncStatus
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusResultProto
import com.rookmotion.rook_sdk_health_connect.result.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.syncStatusSuccess(syncStatus: SyncStatus) {
    val bytes = SyncStatusResultProto.newBuilder()
        .setSuccess(syncStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.syncStatusError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = SyncStatusResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}

fun SyncStatus.toProto(): SyncStatusProto {
    return when (this) {
        SyncStatus.SYNCED -> SyncStatusProto.SYNCED
        SyncStatus.RECORDS_NOT_FOUND -> SyncStatusProto.RECORDS_NOT_FOUND
    }
}
