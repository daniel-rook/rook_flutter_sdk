package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.MissingAndroidPermissionsException
import com.rookmotion.rook_sdk_health_connect.data.proto.MissingAndroidPermissionsExceptionProto

fun MissingAndroidPermissionsException.toProto(): MissingAndroidPermissionsExceptionProto {
    return MissingAndroidPermissionsExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
