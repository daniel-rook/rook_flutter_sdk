package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.DailyCalories
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.CaloriesProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusWithCaloriesProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncStatusWithCaloriesResultProto
import com.rookmotion.rook_sdk_health_connect.result.toProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.syncStatusWithDailyCaloriesSuccess(syncStatusWithData: SyncStatusWithData<DailyCalories>) {
    val bytes = when (syncStatusWithData) {
        SyncStatusWithData.RecordsNotFound -> {
            val syncStatusWithCaloriesProto = SyncStatusWithCaloriesProto.newBuilder()
                .setSyncStatus(SyncStatusProto.RECORDS_NOT_FOUND)
                .build()

            SyncStatusWithCaloriesResultProto.newBuilder()
                .setSuccess(syncStatusWithCaloriesProto)
                .build()
                .toByteArray()
        }

        is SyncStatusWithData.Synced -> {
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

fun DailyCalories.toProto(): CaloriesProto {
    return CaloriesProto.newBuilder()
        .setBasal(basal)
        .setActive(active)
        .build()
}
