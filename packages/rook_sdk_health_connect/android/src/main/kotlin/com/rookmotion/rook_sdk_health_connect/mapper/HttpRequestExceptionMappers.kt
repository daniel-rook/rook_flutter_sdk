package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.HttpRequestException
import com.rookmotion.rook_sdk_health_connect.data.proto.HttpRequestExceptionProto

fun HttpRequestException.toProto(): HttpRequestExceptionProto {
    return HttpRequestExceptionProto.newBuilder()
        .setMessage(message)
        .setCode(code)
        .build()
}
