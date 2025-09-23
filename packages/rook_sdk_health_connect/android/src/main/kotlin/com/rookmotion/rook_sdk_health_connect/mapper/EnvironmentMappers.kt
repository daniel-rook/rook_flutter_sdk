package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.environment.RookEnvironment
import com.rookmotion.rook_sdk_health_connect.proto.EnvironmentProto

fun EnvironmentProto.toRookEnvironment(): RookEnvironment {
    return if (this == EnvironmentProto.SANDBOX) {
        RookEnvironment.SANDBOX
    } else {
        RookEnvironment.PRODUCTION
    }
}
