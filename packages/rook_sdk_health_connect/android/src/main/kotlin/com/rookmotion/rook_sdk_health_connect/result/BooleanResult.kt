package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.proto.BooleanResultProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.booleanSuccess(boolean: Boolean) {
    val bytes = BooleanResultProto.newBuilder()
        .setSuccess(boolean)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.booleanError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = BooleanResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}