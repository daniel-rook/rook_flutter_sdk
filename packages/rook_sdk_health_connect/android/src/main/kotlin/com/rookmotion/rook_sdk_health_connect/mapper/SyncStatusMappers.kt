package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.model.SyncStatus
import com.rookmotion.rook_sdk_health_connect.data.proto.SyncStatusProto

fun SyncStatus.toProto(): SyncStatusProto {
    return when (this) {
        SyncStatus.SYNCED -> SyncStatusProto.SYNCED
        SyncStatus.RECORDS_NOT_FOUND -> SyncStatusProto.RECORDS_NOT_FOUND
    }
}