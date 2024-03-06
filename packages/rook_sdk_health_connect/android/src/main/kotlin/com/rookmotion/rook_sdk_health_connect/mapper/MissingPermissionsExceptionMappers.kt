package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.MissingPermissionsException
import com.rookmotion.rook_sdk_health_connect.data.proto.MissingPermissionsExceptionProto

fun MissingPermissionsException.toProto(): MissingPermissionsExceptionProto {
    return MissingPermissionsExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
