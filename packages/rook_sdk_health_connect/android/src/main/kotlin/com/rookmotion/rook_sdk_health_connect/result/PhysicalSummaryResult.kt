package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCPhysicalSummary
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.PhysicalSummaryResultProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.physicalSummarySuccess(syncStatusWithData: SyncStatusWithData<HCPhysicalSummary>) {
    val bytes = when (syncStatusWithData) {
        SyncStatusWithData.RecordsNotFound -> {
            PhysicalSummaryResultProto.newBuilder()
                .setRecordsNotFound(true)
                .build()
                .toByteArray()
        }

        is SyncStatusWithData.Synced -> {
            PhysicalSummaryResultProto.newBuilder()
                .setSynced(syncStatusWithData.data.toProto())
                .build()
                .toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.physicalSummaryError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = PhysicalSummaryResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
