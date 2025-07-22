package io.tryrook.rook_sdk_samsung_health.extension

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.ResultSyncStatusWithDailyCaloriesProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusWithDailyCaloriesProto
import io.tryrook.sdk.samsung.domain.model.SHCalories
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData

fun MethodChannel.Result.syncStatusWithDailyCaloriesSuccess(syncStatusWithData: SHSyncStatusWithData<SHCalories>) {
    val bytes = when (syncStatusWithData) {
        SHSyncStatusWithData.RecordsNotFound -> {
            val syncStatusWithDailyCaloriesProto = SyncStatusWithDailyCaloriesProto.newBuilder()
                .setSyncStatus(SyncStatusProto.RECORDS_NOT_FOUND)
                .build()

            ResultSyncStatusWithDailyCaloriesProto.newBuilder()
                .setSyncStatusWithDailyCaloriesProto(syncStatusWithDailyCaloriesProto)
                .build()
                .toByteArray()
        }

        is SHSyncStatusWithData.Synced -> {
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
