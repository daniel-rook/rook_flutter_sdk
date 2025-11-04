package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionId
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionMessage
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusWithIntProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusWithIntResultProto
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData

fun MethodChannel.Result.syncStatusWithIntSuccess(syncStatusWithData: SHSyncStatusWithData<Int>) {
    val bytes = when (syncStatusWithData) {
        SHSyncStatusWithData.RecordsNotFound -> {
            val syncStatusWithIntProto = SyncStatusWithIntProto.newBuilder()
                .setSyncStatus(SyncStatusProto.RECORDS_NOT_FOUND)
                .build()

            SyncStatusWithIntResultProto.newBuilder()
                .setSuccess(syncStatusWithIntProto)
                .build()
                .toByteArray()
        }

        is SHSyncStatusWithData.Synced -> {
            val syncStatusWithIntProto = SyncStatusWithIntProto.newBuilder()
                .setSyncStatus(SyncStatusProto.SYNCED)
                .setValue(syncStatusWithData.data)
                .build()

            SyncStatusWithIntResultProto.newBuilder()
                .setSuccess(syncStatusWithIntProto)
                .build()
                .toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.syncStatusWithIntError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = SyncStatusWithIntResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
