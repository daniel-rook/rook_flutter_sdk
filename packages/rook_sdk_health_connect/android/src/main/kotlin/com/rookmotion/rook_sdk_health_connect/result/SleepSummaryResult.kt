package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCSleepSummary
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import com.rookmotion.rook_sdk_health_connect.proto.SleepSummariesProto
import com.rookmotion.rook_sdk_health_connect.proto.SleepSummaryResultProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.sleepSummarySuccess(syncStatusWithData: SyncStatusWithData<List<HCSleepSummary>>) {
    val bytes = when (syncStatusWithData) {
        SyncStatusWithData.RecordsNotFound -> {
            SleepSummaryResultProto.newBuilder()
                .setRecordsNotFound(true)
                .build()
                .toByteArray()
        }

        is SyncStatusWithData.Synced -> {
            val sleepSummaries = SleepSummariesProto.newBuilder()
                .addAllElements(syncStatusWithData.data.map { it.toProto() })
                .build()

            SleepSummaryResultProto.newBuilder()
                .setSynced(sleepSummaries)
                .build()
                .toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.sleepSummaryError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = SleepSummaryResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
