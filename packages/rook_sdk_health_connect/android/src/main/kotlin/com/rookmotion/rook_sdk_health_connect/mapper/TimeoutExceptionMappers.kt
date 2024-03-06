package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.TimeoutException
import com.rookmotion.rook_sdk_health_connect.data.proto.TimeoutExceptionProto

fun TimeoutException.toProto(): TimeoutExceptionProto {
    return TimeoutExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
