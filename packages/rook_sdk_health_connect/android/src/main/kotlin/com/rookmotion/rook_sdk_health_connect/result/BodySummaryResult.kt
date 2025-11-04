package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCBodySummary
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.BodySummaryResultProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.bodySummarySuccess(syncStatusWithData: SyncStatusWithData<HCBodySummary>) {
    val bytes = when (syncStatusWithData) {
        SyncStatusWithData.RecordsNotFound -> {
            BodySummaryResultProto.newBuilder()
                .setRecordsNotFound(true)
                .build()
                .toByteArray()
        }

        is SyncStatusWithData.Synced -> {
            BodySummaryResultProto.newBuilder()
                .setSynced(syncStatusWithData.data.toProto())
                .build()
                .toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.bodySummaryError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = BodySummaryResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
