package com.rookmotion.rook_sdk_health_connect.extension

import com.rookmotion.rook.sdk.domain.model.DailyCalories
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.ResultSyncStatusWithDailyCaloriesProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusWithDailyCaloriesProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.syncStatusWithDailyCaloriesSuccess(syncStatusWithData: SyncStatusWithData<DailyCalories>) {
    val bytes = when (syncStatusWithData) {
        SyncStatusWithData.RecordsNotFound -> {
            val syncStatusWithDailyCaloriesProto = SyncStatusWithDailyCaloriesProto.newBuilder()
                .setSyncStatus(SyncStatusProto.RECORDS_NOT_FOUND)
                .build()

            ResultSyncStatusWithDailyCaloriesProto.newBuilder()
                .setSyncStatusWithDailyCaloriesProto(syncStatusWithDailyCaloriesProto)
                .build()
                .toByteArray()
        }

        is SyncStatusWithData.Synced -> {
            val syncStatusWithDailyCaloriesProto = SyncStatusWithDailyCaloriesProto.newBuilder()
                .setSyncStatus(SyncStatusProto.SYNCED)
                .setDailyCalories(syncStatusWithData.data.toProto())
                .build()

            ResultSyncStatusWithDailyCaloriesProto.newBuilder()
                .setSyncStatusWithDailyCaloriesProto(syncStatusWithDailyCaloriesProto)
                .build()
                .toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.syncStatusWithDailyCaloriesError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ResultSyncStatusWithDailyCaloriesProto.newBuilder()
        .setPluginExceptionProto(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
