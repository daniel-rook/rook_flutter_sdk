package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionMessage
import io.tryrook.rook_sdk_samsung_health.mapper.toProto
import io.tryrook.rook_sdk_samsung_health.proto.ActivityEventResultProto
import io.tryrook.rook_sdk_samsung_health.proto.ActivityEventsProto
import io.tryrook.rook_sdk_samsung_health.proto.SDKExceptionProto
import io.tryrook.sdk.samsung.domain.model.SHActivityEvent

fun MethodChannel.Result.activityEventSuccess(events: List<SHActivityEvent>) {
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
