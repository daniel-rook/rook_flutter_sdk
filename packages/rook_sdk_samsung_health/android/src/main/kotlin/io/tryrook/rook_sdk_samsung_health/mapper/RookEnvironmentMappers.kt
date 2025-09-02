import io.tryrook.rook_sdk_samsung_health.proto.RookEnvironmentProto
import io.tryrook.sdk.samsung.domain.environment.SHEnvironment

fun RookEnvironmentProto.toSHEnvironment(): SHEnvironment {
    return if (this == RookEnvironmentProto.SANDBOX) {
        SHEnvironment.SANDBOX
    } else {
        SHEnvironment.PRODUCTION
    }
}
