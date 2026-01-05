package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.enums.RequestPermissionsStatus
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.RequestPermissionsStatusProto
import com.rookmotion.rook_sdk_health_connect.proto.RequestPermissionsStatusResultProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.requestPermissionsStatusSuccess(requestPermissionsStatus: RequestPermissionsStatus) {
    val bytes = RequestPermissionsStatusResultProto.newBuilder()
        .setSuccess(requestPermissionsStatus.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.requestPermissionsStatusError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = RequestPermissionsStatusResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}

fun RequestPermissionsStatus.toProto(): RequestPermissionsStatusProto {
    return when (this) {
        RequestPermissionsStatus.REQUEST_SENT -> RequestPermissionsStatusProto.REQUEST_SENT
        RequestPermissionsStatus.ALREADY_GRANTED -> RequestPermissionsStatusProto.ALREADY_GRANTED
    }
}
