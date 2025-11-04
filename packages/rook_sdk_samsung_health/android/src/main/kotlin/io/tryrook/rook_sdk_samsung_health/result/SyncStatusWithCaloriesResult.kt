package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionId
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionMessage
import io.tryrook.rook_sdk_samsung_health.proto.CaloriesProto
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusWithCaloriesProto
import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusWithCaloriesResultProto
import io.tryrook.sdk.samsung.domain.model.SHCalories
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData

fun MethodChannel.Result.syncStatusWithDailyCaloriesSuccess(syncStatusWithData: SHSyncStatusWithData<SHCalories>) {
    val bytes = when (syncStatusWithData) {
        SHSyncStatusWithData.RecordsNotFound -> {
            val syncStatusWithCaloriesProto = SyncStatusWithCaloriesProto.newBuilder()
                .setSyncStatus(SyncStatusProto.RECORDS_NOT_FOUND)
                .build()

            SyncStatusWithCaloriesResultProto.newBuilder()
                .setSuccess(syncStatusWithCaloriesProto)
                .build()
                .toByteArray()
        }

        is SHSyncStatusWithData.Synced -> {
            val syncStatusWithCaloriesProto = SyncStatusWithCaloriesProto.newBuilder()
                .setSyncStatus(SyncStatusProto.SYNCED)
                .setCalories(syncStatusWithData.data.toProto())
                .build()

            SyncStatusWithCaloriesResultProto.newBuilder()
                .setSuccess(syncStatusWithCaloriesProto)
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

    val bytes = SyncStatusWithCaloriesResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}

fun SHCalories.toProto(): CaloriesProto {
    return CaloriesProto.newBuilder()
        .setBasal(basal)
        .setActive(active)
        .build()
}
