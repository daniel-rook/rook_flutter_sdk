package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookConfigurationManager
import com.rookmotion.rook.sdk.RookStepsManager
import com.rookmotion.rook.sdk.RookYesterdaySyncManager
import com.rookmotion.rook.sdk.domain.model.RookConfiguration
import com.rookmotion.rook.sdk.internal.analytics.RookAnalytics
import com.rookmotion.rook.sdk.internal.analytics.RookFramework
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getByteArrayArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getStringArgAt
import com.rookmotion.rook_sdk_health_connect.mapper.toRookConfiguration
import com.rookmotion.rook_sdk_health_connect.proto.RookConfigurationProto
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class ConfigurationHandler(
    private val coroutineScope: CoroutineScope,
    private val rookConfigurationManager: RookConfigurationManager,
    private val rookYesterdaySyncManager: RookYesterdaySyncManager,
    private val rookStepsManager: RookStepsManager,
) {

    private var enableNativeLogs: Boolean = false
    private var enableBackgroundSync: Boolean = false
    private var rookConfiguration: RookConfiguration? = null

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "enableNativeLogs" -> {
                enableNativeLogs = true
                rookConfigurationManager.enableLocalLogs()

                methodResult.booleanSuccess(true)
            }

            "setConfiguration" -> {
                val rookConfigurationProto = methodCall.getByteArrayArgAt(0).let {
                    RookConfigurationProto.parseFrom(it)
                }

                enableBackgroundSync = rookConfigurationProto.enableBackgroundSync
                rookConfiguration = rookConfigurationProto.toRookConfiguration()

                rookConfigurationManager.setConfiguration(rookConfigurationProto.toRookConfiguration())

                methodResult.booleanSuccess(true)
            }

            "getUserID" -> coroutineScope.launch {
                val userID = rookConfigurationManager.getUserID()

                methodResult.success(userID)
            }

            "initRook" -> coroutineScope.launch {
                RookAnalytics.setFramework(RookFramework.FLUTTER)

                rookConfigurationManager.initRook().fold(
                    {
                        attemptToEnableBackgroundSync()
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "updateUserID" -> coroutineScope.launch {
                val userID = methodCall.getStringArgAt(0)

                rookConfigurationManager.updateUserID(userID).fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "clearUserID" -> coroutineScope.launch {
                rookConfigurationManager.clearUserID().fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    },
                )
            }

            "deleteUserFromRook" -> coroutineScope.launch {
                rookConfigurationManager.deleteUserFromRook().fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "syncUserTimeZone" -> coroutineScope.launch {
                rookConfigurationManager.syncUserTimeZone().fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            else -> Unit
        }
    }

    private suspend fun attemptToEnableBackgroundSync() {
        if (!enableBackgroundSync) {
            return
        }

        val configuration = rookConfiguration ?: return

        rookYesterdaySyncManager.scheduleYesterdaySync(
            enableLogs = enableNativeLogs,
            clientUUID = configuration.clientUUID,
            secretKey = configuration.secretKey,
            environment = configuration.environment,
        )

        rookStepsManager.enableBackgroundAndroidSteps()
    }
}
