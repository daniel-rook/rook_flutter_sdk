package io.tryrook.rook_sdk_samsung_health.mapper

import io.tryrook.rook_sdk_samsung_health.proto.SyncStatusProto
import io.tryrook.sdk.samsung.domain.enums.SHSyncStatus

fun SHSyncStatus.toSyncStatusProto(): SyncStatusProto {
    return when (this) {
        SHSyncStatus.SYNCED -> SyncStatusProto.SYNCED
        SHSyncStatus.RECORDS_NOT_FOUND -> SyncStatusProto.RECORDS_NOT_FOUND
    }
}