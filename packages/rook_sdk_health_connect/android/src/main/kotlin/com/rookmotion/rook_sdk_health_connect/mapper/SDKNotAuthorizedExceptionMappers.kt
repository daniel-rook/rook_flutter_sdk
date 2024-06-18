package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.SDKNotAuthorizedException
import com.rookmotion.rook_sdk_health_connect.data.proto.SDKNotAuthorizedExceptionProto

fun SDKNotAuthorizedException.toProto(): SDKNotAuthorizedExceptionProto {
    return SDKNotAuthorizedExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
