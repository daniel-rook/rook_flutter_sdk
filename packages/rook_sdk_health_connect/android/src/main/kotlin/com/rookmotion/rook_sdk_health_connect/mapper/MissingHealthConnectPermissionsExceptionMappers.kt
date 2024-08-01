package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.MissingHealthConnectPermissionsException
import com.rookmotion.rook_sdk_health_connect.data.proto.MissingPermissionsExceptionProto

fun MissingHealthConnectPermissionsException.toProto(): MissingPermissionsExceptionProto {
    return MissingPermissionsExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
