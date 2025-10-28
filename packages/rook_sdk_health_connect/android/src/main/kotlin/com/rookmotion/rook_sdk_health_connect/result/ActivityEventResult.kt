package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCActivityEvent
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionId
import com.rookmotion.rook_sdk_health_connect.extension.getPluginExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.ActivityEventResultProto
import com.rookmotion.rook_sdk_health_connect.proto.ActivityEventsProto
import com.rookmotion.rook_sdk_health_connect.proto.PluginExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.activityEventSuccess(syncStatusWithData: SyncStatusWithData<List<HCActivityEvent>>) {
    val bytes = when (syncStatusWithData) {
        SyncStatusWithData.RecordsNotFound -> {
            ActivityEventResultProto.newBuilder()
                .setRecordsNotFound(true)
                .build()
                .toByteArray()
        }

        is SyncStatusWithData.Synced -> {
            val activityEvents = ActivityEventsProto.newBuilder()
                .addAllElements(syncStatusWithData.data.map { it.toProto() })
                .build()

            ActivityEventResultProto.newBuilder()
                .setSynced(activityEvents)
                .build()
                .toByteArray()
        }
    }

    success(bytes)
}

fun MethodChannel.Result.activityEventError(throwable: Throwable) {
    val pluginExceptionProto = PluginExceptionProto.newBuilder()
        .setId(throwable.getPluginExceptionId())
        .setCode(throwable.getPluginExceptionCode())
        .setMessage(throwable.getPluginExceptionMessage())

    val bytes = ActivityEventResultProto.newBuilder()
        .setFailure(pluginExceptionProto)
        .build()
        .toByteArray()

    success(bytes)
}
