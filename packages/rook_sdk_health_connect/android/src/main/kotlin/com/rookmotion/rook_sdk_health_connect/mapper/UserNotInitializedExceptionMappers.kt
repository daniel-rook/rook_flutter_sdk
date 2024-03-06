package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.UserNotInitializedException
import com.rookmotion.rook_sdk_health_connect.data.proto.UserNotInitializedExceptionProto

fun UserNotInitializedException.toProto(): UserNotInitializedExceptionProto {
    return UserNotInitializedExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
