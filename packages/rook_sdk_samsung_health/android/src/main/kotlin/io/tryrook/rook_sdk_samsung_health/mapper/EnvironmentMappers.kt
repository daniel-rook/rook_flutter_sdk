import io.tryrook.rook_sdk_samsung_health.proto.EnvironmentProto
import io.tryrook.sdk.samsung.domain.environment.SHEnvironment

fun EnvironmentProto.toSHEnvironment(): SHEnvironment {
    return if (this == EnvironmentProto.SANDBOX) {
        SHEnvironment.SANDBOX
    } else {
        SHEnvironment.PRODUCTION
    }
}
