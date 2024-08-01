package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookStepsManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanError
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.resultInt64Error
import com.rookmotion.rook_sdk_health_connect.extension.resultInt64Success
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

                    methodResult.resultBooleanSuccess(isAvailable)
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "isBackgroundAndroidStepsActive" -> coroutineScope.launch {
                val isActive = rookStepsManager.isBackgroundAndroidStepsActive()

                methodResult.resultBooleanSuccess(isActive)
            }

            "hasStepsPermissions" -> {
                try {
                    val hasPermissions = rookStepsManager.hasPermissions()

                    methodResult.resultBooleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "requestStepsPermissions" -> {
                try {
                    rookStepsManager.requestPermissions()

                    methodResult.resultBooleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "enableBackgroundAndroidSteps" -> {
                try {
                    rookStepsManager.enableBackgroundAndroidSteps().fold(
                        {
                            methodResult.resultBooleanSuccess(true)
                        },
                        {
                            methodResult.resultBooleanError(it)
                        }
                    )
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "disableBackgroundAndroidSteps" -> {
                try {
                    rookStepsManager.disableBackgroundAndroidSteps().fold(
                        {
                            methodResult.resultBooleanSuccess(true)
                        },
                        {
                            methodResult.resultBooleanError(it)
                        }
                    )
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "syncTodayAndroidStepsCount" -> coroutineScope.launch {
                rookStepsManager.syncTodayAndroidStepsCount().fold(
                    {
                        methodResult.resultInt64Success(it)
                    },
                    {
                        methodResult.resultInt64Error(it)
                    }
                )
            }

            else -> Unit
        }
    }
}
