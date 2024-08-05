package com.rookmotion.rook_sdk_health_connect.mapper

import com.rookmotion.rook.sdk.domain.enums.SyncStatus
import com.rookmotion.rook_sdk_health_connect.data.proto.SyncStatusProto

fun SyncStatus.toSyncStatusProto(): SyncStatusProto {
    return when (this) {
        SyncStatus.SYNCED -> SyncStatusProto.SYNCED
        SyncStatus.RECORDS_NOT_FOUND -> SyncStatusProto.RECORDS_NOT_FOUND
    }
}