package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.RequestQuotaExceededException
import com.rookmotion.rook_sdk_health_connect.data.proto.RequestQuotaExceededExceptionProto

fun RequestQuotaExceededException.toProto(): RequestQuotaExceededExceptionProto {
    return RequestQuotaExceededExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}