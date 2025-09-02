package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.proto.SamsungHealthAvailabilityProto
import io.tryrook.sdk.samsung.domain.enums.SamsungHealthAvailability

fun SamsungHealthAvailability.toAvailabilityStatusProto(): SamsungHealthAvailabilityProto {
    return when (this) {
        SamsungHealthAvailability.INSTALLED -> SamsungHealthAvailabilityProto.INSTALLED
        SamsungHealthAvailability.NOT_INSTALLED -> SamsungHealthAvailabilityProto.NOT_INSTALLED
        SamsungHealthAvailability.OUTDATED -> SamsungHealthAvailabilityProto.OUTDATED
        SamsungHealthAvailability.DISABLED -> SamsungHealthAvailabilityProto.DISABLED
        SamsungHealthAvailability.NOT_READY -> SamsungHealthAvailabilityProto.NOT_READY
    }
}
