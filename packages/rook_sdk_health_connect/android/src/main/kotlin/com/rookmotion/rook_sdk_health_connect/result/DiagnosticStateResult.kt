package com.rookmotion.rook_sdk_health_connect.result

import com.rookmotion.rook.sdk.domain.enums.HCDiagnosticStatePermissions
import com.rookmotion.rook.sdk.domain.model.HCDiagnosticState
import com.rookmotion.rook.sdk.domain.model.HCDiagnosticSyncState
import com.rookmotion.rook_sdk_health_connect.DEFAULT_STRING
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionCode
import com.rookmotion.rook_sdk_health_connect.extension.getSDKExceptionMessage
import com.rookmotion.rook_sdk_health_connect.extension.toProtoString
import com.rookmotion.rook_sdk_health_connect.proto.DiagnosticStatePermissionsProto
import com.rookmotion.rook_sdk_health_connect.proto.DiagnosticStateProto
import com.rookmotion.rook_sdk_health_connect.proto.DiagnosticStateResultProto
import com.rookmotion.rook_sdk_health_connect.proto.DiagnosticSyncStateProto
import com.rookmotion.rook_sdk_health_connect.proto.SDKExceptionProto
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.diagnosticStateSuccess(diagnosticState: HCDiagnosticState) {
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

fun HCDiagnosticState.toProto(): DiagnosticStateProto {
    return DiagnosticStateProto.newBuilder()
        .setIsConfigured(isConfigured)
        .setUserIdentified(userIdentified)
        .setPermissions(permissions.toProto())
        .setManualSync(manualSync.toProto())
        .setBackgroundSync(backgroundSync.toProto())
        .build()
}

fun HCDiagnosticSyncState.toProto(): DiagnosticSyncStateProto {
    return DiagnosticSyncStateProto.newBuilder()
        .setEnabled(enabled)
        .setLastSync(lastSync?.toProtoString() ?: DEFAULT_STRING)
        .build()
}

fun HCDiagnosticStatePermissions.toProto(): DiagnosticStatePermissionsProto {
    return when (this) {
        HCDiagnosticStatePermissions.NONE -> DiagnosticStatePermissionsProto.NONE
        HCDiagnosticStatePermissions.REQUESTED -> DiagnosticStatePermissionsProto.REQUESTED
        HCDiagnosticStatePermissions.GRANTED -> DiagnosticStatePermissionsProto.GRANTED
    }
}
