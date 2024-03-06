package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.SDKNotInitializedException
import com.rookmotion.rook_sdk_health_connect.data.proto.SDKNotInitializedExceptionProto

fun SDKNotInitializedException.toProto(): SDKNotInitializedExceptionProto {
    return SDKNotInitializedExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
