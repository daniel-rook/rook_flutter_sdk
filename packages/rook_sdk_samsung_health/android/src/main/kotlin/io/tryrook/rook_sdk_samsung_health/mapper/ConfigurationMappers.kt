package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.extension.checkNonDefault
import io.tryrook.rook_sdk_samsung_health.proto.ConfigurationProto
import io.tryrook.sdk.samsung.domain.model.SHConfiguration
import toSHEnvironment

fun ConfigurationProto.toSHConfiguration(): SHConfiguration {
    return SHConfiguration(
        clientUUID = clientUUID,
        secret = secret,
        environment = environment.toSHEnvironment(),
        packageName = appId.checkNonDefault(),
    )
}
