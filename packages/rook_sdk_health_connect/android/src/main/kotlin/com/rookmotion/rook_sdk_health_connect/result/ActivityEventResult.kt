package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.model.HCActivityEvent
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.proto.ActivityEventResultProto
import com.rookmotion.rook_sdk_health_connect.proto.ActivityEventsProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.activityEventSuccess(events: List<HCActivityEvent>) {
    val activityEvents = ActivityEventsProto.newBuilder()
        .addAllElements(events.map { it.toProto() })
        .build()

    val bytes = ActivityEventResultProto.newBuilder()
        .setSuccess(activityEvents)
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.activityEventError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = ActivityEventResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}
