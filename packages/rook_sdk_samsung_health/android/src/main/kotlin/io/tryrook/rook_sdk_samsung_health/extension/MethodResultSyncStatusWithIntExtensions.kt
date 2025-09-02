package io.tryrook.rook_sdk_samsung_health.extension

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.DEFAULT_INT
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.ResultSyncStatusWithIntProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusWithIntProto
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData

fun MethodChannel.Result.syncStatusWithIntSuccess(syncStatusWithData: SHSyncStatusWithData<Int>) {
    val bytes = when (syncStatusWithData) {
        SHSyncStatusWithData.RecordsNotFound -> {
            val syncStatusWithIntProto = SyncStatusWithIntProto.newBuilder()
                .setSyncStatus(SyncStatusProto.RECORDS_NOT_FOUND)
                .setSteps(DEFAULT_INT)
                .build()

            ResultSyncStatusWithIntProto.newBuilder()
                .setSyncStatusWithIntProto(syncStatusWithIntProto)
                .build()
                .toByteArray()
        }

        is SHSyncStatusWithData.Synced -> {
            val syncStatusWithIntProto = SyncStatusWithIntProto.newBuilder()
                .setSyncStatus(SyncStatusProto.SYNCED)
                .setSteps(syncStatusWithData.data)
                .build()

            ResultSyncStatusWithIntProto.newBuilder()
                .setSyncStatusWithIntProto(syncStatusWithIntProto)
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

    val bytes = ResultSyncStatusWithIntProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
