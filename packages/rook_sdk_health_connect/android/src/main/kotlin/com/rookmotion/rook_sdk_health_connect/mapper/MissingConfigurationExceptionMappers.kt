package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.exception.MissingConfigurationException
import com.rookmotion.rook_sdk_health_connect.data.proto.MissingConfigurationExceptionProto

fun MissingConfigurationException.toProto(): MissingConfigurationExceptionProto {
    return MissingConfigurationExceptionProto.newBuilder()
        .setMessage(message)
        .build()
}
