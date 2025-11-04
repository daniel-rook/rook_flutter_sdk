package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionId
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionMessage
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.proto.PhysicalSummaryResultProto
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.sdk.samsung.domain.model.SHPhysicalSummary
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData

fun MethodChannel.Result.physicalSummarySuccess(syncStatusWithData: SHSyncStatusWithData<SHPhysicalSummary>) {
    val bytes = when (syncStatusWithData) {
        SHSyncStatusWithData.RecordsNotFound -> {
            PhysicalSummaryResultProto.newBuilder()
                .setRecordsNotFound(true)
                .build()
                .toByteArray()
        }

        is SHSyncStatusWithData.Synced -> {
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
