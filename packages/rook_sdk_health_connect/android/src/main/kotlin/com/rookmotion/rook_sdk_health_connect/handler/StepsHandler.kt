package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookStepsManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.int64Error
import com.rookmotion.rook_sdk_health_connect.extension.int64Success
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class StepsHandler(
    private val coroutineScope: CoroutineScope,
    private val rookStepsManager: RookStepsManager,
) {

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "isStepsAvailable" -> {
                try {
                    val isAvailable = rookStepsManager.isAvailable()

                    methodResult.booleanSuccess(isAvailable)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "isBackgroundAndroidStepsActive" -> coroutineScope.launch {
                val isActive = rookStepsManager.isBackgroundAndroidStepsActive()

                methodResult.booleanSuccess(isActive)
            }

            "hasStepsPermissions" -> {
                try {
                    val hasPermissions = rookStepsManager.hasPermissions()

                    methodResult.booleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "requestStepsPermissions" -> {
                try {
                    rookStepsManager.requestPermissions()

                    methodResult.booleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "enableBackgroundAndroidSteps" -> {
                try {
                    rookStepsManager.enableBackgroundAndroidSteps().fold(
                        {
                            methodResult.booleanSuccess(true)
                        },
                        {
                            methodResult.booleanError(it)
                        }
                    )
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "disableBackgroundAndroidSteps" -> {
                try {
                    rookStepsManager.disableBackgroundAndroidSteps().fold(
                        {
                            methodResult.booleanSuccess(true)
                        },
                        {
                            methodResult.booleanError(it)
                        }
                    )
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "syncTodayAndroidStepsCount" -> coroutineScope.launch {
                rookStepsManager.syncTodayAndroidStepsCount().fold(
                    {
                        methodResult.int64Success(it)
                    },
                    {
                        methodResult.int64Error(it)
                    }
                )
            }

            else -> Unit
        }
    }
}
