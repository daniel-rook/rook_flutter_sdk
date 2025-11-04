package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionId
import io.tryrook.rook_sdk_samsung_health.extension.getPluginExceptionMessage
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.proto.PluginExceptionProto
import io.tryrook.rook_sdk_samsung_health.proto.SleepSummariesProto
import io.tryrook.rook_sdk_samsung_health.proto.SleepSummaryResultProto
import io.tryrook.sdk.samsung.domain.model.SHSleepSummary
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData

fun MethodChannel.Result.sleepSummarySuccess(syncStatusWithData: SHSyncStatusWithData<List<SHSleepSummary>>) {
    val bytes = when (syncStatusWithData) {
        SHSyncStatusWithData.RecordsNotFound -> {
            SleepSummaryResultProto.newBuilder()
                .setRecordsNotFound(true)
                .build()
                .toByteArray()
        }

        is SHSyncStatusWithData.Synced -> {
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
