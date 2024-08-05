package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.RookConfiguration
import com.rookmotion.rook_sdk_health_connect.data.proto.RookConfigurationProto

fun RookConfigurationProto.toRookConfiguration(): RookConfiguration {
    return RookConfiguration(
        clientUUID,
        secretKey,
        environment.toRookEnvironment(),
    )
}
