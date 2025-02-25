package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.DEFAULT_INT
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusWithIntProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusWithIntProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.syncStatusWithIntSuccess(syncStatusWithData: SyncStatusWithData<Int>) {
    val bytes = when (syncStatusWithData) {
        SyncStatusWithData.RecordsNotFound -> {
            val syncStatusWithIntProto = SyncStatusWithIntProto.newBuilder()
                .setSyncStatus(SyncStatusProto.RECORDS_NOT_FOUND)
                .setSteps(DEFAULT_INT)
                .build()

            ResultSyncStatusWithIntProto.newBuilder()
                .setSyncStatusWithIntProto(syncStatusWithIntProto)
                .build()
                .toByteArray()
        }

        is SyncStatusWithData.Synced -> {
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
