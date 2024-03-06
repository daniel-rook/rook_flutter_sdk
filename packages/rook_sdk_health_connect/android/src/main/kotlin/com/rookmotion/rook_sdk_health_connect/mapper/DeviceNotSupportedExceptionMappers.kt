package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.DeviceNotSupportedException
import com.rookmotion.rook_sdk_health_connect.data.proto.DeviceNotSupportedExceptionProto

fun DeviceNotSupportedException.toProto(): DeviceNotSupportedExceptionProto {
    return DeviceNotSupportedExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
