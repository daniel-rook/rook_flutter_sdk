package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.enums.HistoryReadStatus
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.HistoryReadStatusProto
import com.rookmotion.rook_sdk_health_connect.proto.HistoryReadStatusResultProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.historyReadStatusSuccess(historyReadStatus: HistoryReadStatus) {
    val bytes = HistoryReadStatusResultProto.newBuilder()
        .setSuccess(historyReadStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.historyReadStatusError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = HistoryReadStatusResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}

fun HistoryReadStatus.toProto(): HistoryReadStatusProto {
    return when (this) {
        HistoryReadStatus.UNAVAILABLE -> HistoryReadStatusProto.HISTORY_UNAVAILABLE
        HistoryReadStatus.PERMISSION_NOT_GRANTED -> HistoryReadStatusProto.HISTORY_PERMISSION_NOT_GRANTED
        HistoryReadStatus.PERMISSION_GRANTED -> HistoryReadStatusProto.HISTORY_PERMISSION_GRANTED
    }
}
