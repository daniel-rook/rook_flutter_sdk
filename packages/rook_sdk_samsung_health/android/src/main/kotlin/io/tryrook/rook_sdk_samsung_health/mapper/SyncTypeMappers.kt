package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.exception.UnknownSyncTypeException
import io.tryrook.rook_sdk_samsung_health.proto.EventSyncTypeProto
import io.tryrook.rook_sdk_samsung_health.proto.SummarySyncTypeProto
import io.tryrook.sdk.samsung.domain.model.SHSyncType

fun SummarySyncTypeProto.toSyncType(): SHSyncType.Summary {
    return when (this) {
        SummarySyncTypeProto.SLEEP -> SHSyncType.Summary.SLEEP
        SummarySyncTypeProto.PHYSICAL -> SHSyncType.Summary.PHYSICAL
        SummarySyncTypeProto.BODY -> SHSyncType.Summary.BODY
        else -> throw UnknownSyncTypeException()
    }
}

fun EventSyncTypeProto.toSyncType(): SHSyncType.Event {
    return when (this) {
        EventSyncTypeProto.ACTIVITY -> SHSyncType.Event.ACTIVITY
        EventSyncTypeProto.BLOOD_GLUCOSE -> SHSyncType.Event.BLOOD_GLUCOSE
        EventSyncTypeProto.BLOOD_PRESSURE -> SHSyncType.Event.BLOOD_PRESSURE
        EventSyncTypeProto.BODY_METRICS -> SHSyncType.Event.BODY_METRICS
        EventSyncTypeProto.HEART_RATE -> SHSyncType.Event.HEART_RATE
        EventSyncTypeProto.HYDRATION -> SHSyncType.Event.HYDRATION
        EventSyncTypeProto.NUTRITION -> SHSyncType.Event.NUTRITION
        EventSyncTypeProto.OXYGENATION -> SHSyncType.Event.OXYGENATION
        EventSyncTypeProto.STEPS -> SHSyncType.Event.STEPS
        EventSyncTypeProto.CALORIES -> SHSyncType.Event.CALORIES
        else -> throw UnknownSyncTypeException()
    }
}
