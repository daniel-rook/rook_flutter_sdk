package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.proto.RookConfigurationProto
import io.tryrook.sdk.samsung.domain.model.SHConfiguration
import toSHEnvironment

fun RookConfigurationProto.toSHConfiguration(): SHConfiguration {
    return SHConfiguration(
        clientUUID = clientUUID,
        secretKey = secretKey,
        environment = environment.toSHEnvironment()
    )
}
