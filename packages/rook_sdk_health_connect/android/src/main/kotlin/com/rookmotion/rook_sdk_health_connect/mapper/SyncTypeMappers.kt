package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.SyncType
import com.rookmotion.rook_sdk_health_connect.exception.UnknownSyncTypeException
import com.rookmotion.rook_sdk_health_connect.proto.EventSyncTypeProto
import com.rookmotion.rook_sdk_health_connect.proto.SummarySyncTypeProto

fun SummarySyncTypeProto.toSyncType(): SyncType.Summary {
    return when (this) {
        SummarySyncTypeProto.SLEEP -> SyncType.Summary.SLEEP
        SummarySyncTypeProto.PHYSICAL -> SyncType.Summary.PHYSICAL
        SummarySyncTypeProto.BODY -> SyncType.Summary.BODY
        else -> throw UnknownSyncTypeException()
    }
}

fun EventSyncTypeProto.toSyncType(): SyncType.Event {
    return when (this) {
        EventSyncTypeProto.ACTIVITY -> SyncType.Event.ACTIVITY
        EventSyncTypeProto.BLOOD_GLUCOSE -> SyncType.Event.BLOOD_GLUCOSE
        EventSyncTypeProto.BLOOD_PRESSURE -> SyncType.Event.BLOOD_PRESSURE
        EventSyncTypeProto.BODY_METRICS -> SyncType.Event.BODY_METRICS
        EventSyncTypeProto.HEART_RATE -> SyncType.Event.HEART_RATE
        EventSyncTypeProto.HYDRATION -> SyncType.Event.HYDRATION
        EventSyncTypeProto.NUTRITION -> SyncType.Event.NUTRITION
        EventSyncTypeProto.OXYGENATION -> SyncType.Event.OXYGENATION
        EventSyncTypeProto.TEMPERATURE -> SyncType.Event.TEMPERATURE
        EventSyncTypeProto.STEPS -> SyncType.Event.STEPS
        EventSyncTypeProto.CALORIES -> SyncType.Event.CALORIES
        else -> throw UnknownSyncTypeException()
    }
}
