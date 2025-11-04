package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionId
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionMessage
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusResultProto
import io.tryrook.sdk.samsung.domain.enums.SHSyncStatus

fun MethodChannel.Result.syncStatusSuccess(syncStatus: SHSyncStatus) {
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

fun SHSyncStatus.toProto(): SyncStatusProto {
    return when (this) {
        SHSyncStatus.SYNCED -> SyncStatusProto.SYNCED
        SHSyncStatus.RECORDS_NOT_FOUND -> SyncStatusProto.RECORDS_NOT_FOUND
    }
}
