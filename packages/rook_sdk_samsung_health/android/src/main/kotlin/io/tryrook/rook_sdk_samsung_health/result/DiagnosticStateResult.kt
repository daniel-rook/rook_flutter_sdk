package io.tryrook.rook_sdk_samsung_health.result

import io.flutter.plugin.common.MethodChannel
import io.tryrook.rook_sdk_samsung_health.DEFAULT_STRING
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionCode
import io.tryrook.rook_sdk_samsung_health.extension.getSDKExceptionMessage
import io.tryrook.rook_sdk_samsung_health.extension.toProtoString
import io.tryrook.rook_sdk_samsung_health.proto.DiagnosticStatePermissionsProto
import io.tryrook.rook_sdk_samsung_health.proto.DiagnosticStateProto
import io.tryrook.rook_sdk_samsung_health.proto.DiagnosticStateResultProto
import io.tryrook.rook_sdk_samsung_health.proto.DiagnosticSyncStateProto
import io.tryrook.rook_sdk_samsung_health.proto.SDKExceptionProto
import io.tryrook.sdk.samsung.domain.enums.SHDiagnosticStatePermissions
import io.tryrook.sdk.samsung.domain.model.SHDiagnosticState
import io.tryrook.sdk.samsung.domain.model.SHDiagnosticSyncState

fun MethodChannel.Result.diagnosticStateSuccess(diagnosticState: SHDiagnosticState) {
    val bytes = DiagnosticStateResultProto.newBuilder()
        .setSuccess(diagnosticState.toProto())
        .build()
        .toByteArray()

    success(bytes)
}

fun MethodChannel.Result.diagnosticStateError(throwable: Throwable) {
    val exception = SDKExceptionProto.newBuilder()
        .setCode(throwable.getSDKExceptionCode())
        .setMessage(throwable.getSDKExceptionMessage())

    val bytes = DiagnosticStateResultProto.newBuilder()
        .setFailure(exception)
        .build()
        .toByteArray()

    success(bytes)
}

fun SHDiagnosticState.toProto(): DiagnosticStateProto {
    return DiagnosticStateProto.newBuilder()
        .setIsConfigured(isConfigured)
        .setUserIdentified(userIdentified)
        .setPermissions(permissions.toProto())
        .setManualSync(manualSync.toProto())
        .setBackgroundSync(backgroundSync.toProto())
        .build()
}

fun SHDiagnosticSyncState.toProto(): DiagnosticSyncStateProto {
    return DiagnosticSyncStateProto.newBuilder()
        .setEnabled(enabled)
        .setLastSync(lastSync?.toProtoString() ?: DEFAULT_STRING)
        .build()
}

fun SHDiagnosticStatePermissions.toProto(): DiagnosticStatePermissionsProto {
    return when (this) {
        SHDiagnosticStatePermissions.NOT_REQUESTED -> DiagnosticStatePermissionsProto.NOT_REQUESTED
        SHDiagnosticStatePermissions.REQUESTED -> DiagnosticStatePermissionsProto.REQUESTED
        SHDiagnosticStatePermissions.GRANTED -> DiagnosticStatePermissionsProto.GRANTED
    }
}
