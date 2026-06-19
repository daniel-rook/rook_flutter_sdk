package io.tryrook.rook_sdk_samsung_health.handler

import io.flutter.plugin.common.MethodCall
import io.tryrook.rook_sdk_samsung_health.AutoSyncConfiguration
import io.tryrook.rook_sdk_samsung_health.MethodResult
import io.tryrook.rook_sdk_samsung_health.extension.getByteArrayArgAt
import io.tryrook.rook_sdk_samsung_health.extension.getStringArgAt
import io.tryrook.rook_sdk_samsung_health.mapper.toSHConfiguration
import io.tryrook.rook_sdk_samsung_health.proto.ConfigurationProto
import io.tryrook.rook_sdk_samsung_health.result.booleanError
import io.tryrook.rook_sdk_samsung_health.result.booleanSuccess
import io.tryrook.rook_sdk_samsung_health.result.diagnosticStateError
import io.tryrook.rook_sdk_samsung_health.result.diagnosticStateSuccess
import io.tryrook.sdk.samsung.RookSamsung
import io.tryrook.sdk.samsung.domain.analytics.SHRookAnalytics
import io.tryrook.sdk.samsung.domain.analytics.SHRookFramework
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class ConfigurationHandler(
    private val coroutineScope: CoroutineScope,
    private val rookSamsung: RookSamsung,
    private val onSDKInitialized: suspend (AutoSyncConfiguration) -> Unit,
) {
    private var enableNativeLogs: Boolean = false

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "getDiagnosticState" -> coroutineScope.launch {
                rookSamsung.getDiagnosticState().fold(
                    {
                        methodResult.diagnosticStateSuccess(it)
                    },
                    {
                        methodResult.diagnosticStateError(it)
                    },
                )
            }

            "enableNativeLogs" -> {
                enableNativeLogs = true
                rookSamsung.enableLocalLogs()

                methodResult.booleanSuccess(true)
            }

            "getUserID" -> coroutineScope.launch {
                val userID = rookSamsung.getUserID()

                methodResult.success(userID)
            }

            "initRook" -> coroutineScope.launch {
                val rookConfigurationProto = methodCall.getByteArrayArgAt(0).let {
                    ConfigurationProto.parseFrom(it)
                }

                val enableBackgroundSync = rookConfigurationProto.enableBackgroundSync
                val configuration = rookConfigurationProto.toSHConfiguration()

                SHRookAnalytics.setFramework(SHRookFramework.FLUTTER)

                rookSamsung.initRook(configuration).fold(
                    {
                        val autoSyncConfiguration = AutoSyncConfiguration(
                            enableBackgroundSync = enableBackgroundSync,
                            enableNativeLogs = enableNativeLogs,
                        )

                        onSDKInitialized(autoSyncConfiguration)
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "updateUserID" -> coroutineScope.launch {
                val userID = methodCall.getStringArgAt(0)

                rookSamsung.updateUserID(userID).fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "deleteUserFromRook" -> coroutineScope.launch {
                rookSamsung.deleteUserFromRook().fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "syncUserTimeZone" -> coroutineScope.launch {
                rookSamsung.syncUserTimeZone().fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            else -> methodResult.notImplemented()
        }
    }
}
