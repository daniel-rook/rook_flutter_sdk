package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionId
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionMessage
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.proto.ActivityEventResultProto
import io.tryrook.rook_sdk_samsung_health.proto.ActivityEventsProto
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.sdk.samsung.domain.model.SHActivityEvent
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData

fun MethodChannel.Result.activityEventSuccess(syncStatusWithData: SHSyncStatusWithData<List<SHActivityEvent>>) {
    val bytes = when (syncStatusWithData) {
        SHSyncStatusWithData.RecordsNotFound -> {
            ActivityEventResultProto.newBuilder()
                .setRecordsNotFound(true)
                .build()
                .toByteArray()
        }

        is SHSyncStatusWithData.Synced -> {
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
