package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionId
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionMessage
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.proto.BodySummaryResultProto
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.sdk.samsung.domain.model.SHBodySummary
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData

fun MethodChannel.Result.bodySummarySuccess(syncStatusWithData: SHSyncStatusWithData<SHBodySummary>) {
    val bytes = when (syncStatusWithData) {
        SHSyncStatusWithData.RecordsNotFound -> {
            BodySummaryResultProto.newBuilder()
                .setRecordsNotFound(true)
                .build()
                .toByteArray()
        }

        is SHSyncStatusWithData.Synced -> {
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
