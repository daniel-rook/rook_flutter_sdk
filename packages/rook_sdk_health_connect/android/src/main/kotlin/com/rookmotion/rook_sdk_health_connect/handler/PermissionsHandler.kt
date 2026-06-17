package com.rookmotion.rook_sdk_health_connect.handler

import android.app.Activity
import com.rookmotion.rook.sdk.RookPermissionsManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.boolean
import com.rookmotion.rook_sdk_health_connect.extension.int
import com.rookmotion.rook_sdk_health_connect.extension.throwable
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import com.rookmotion.rook_sdk_health_connect.result.backgroundReadStatusError
import com.rookmotion.rook_sdk_health_connect.result.backgroundReadStatusSuccess
import com.rookmotion.rook_sdk_health_connect.result.booleanError
import com.rookmotion.rook_sdk_health_connect.result.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.result.requestPermissionsStatusError
import com.rookmotion.rook_sdk_health_connect.result.requestPermissionsStatusSuccess
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class PermissionsHandler(
    private val coroutineScope: CoroutineScope,
    private val rookPermissionsManager: RookPermissionsManager,
) {

    private var activity: Activity? = null

    fun setActivity(activity: Activity?) {
        this.activity = activity
    }

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "checkHealthConnectAvailability" -> {
                try {
                    val hcAvailabilityStatus = rookPermissionsManager.checkHealthConnectAvailability()
                    val proto = hcAvailabilityStatus.toProto()

                    methodResult.int(proto.number)
                } catch (exception: NullPointerException) {
                    methodResult.throwable(exception)
                }
            }

            "openHealthConnectSettings" -> coroutineScope.launch {
                rookPermissionsManager.openHealthConnectSettings().fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "checkHealthConnectPermissions" -> coroutineScope.launch {
                rookPermissionsManager.checkHealthConnectPermissions().fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "checkHealthConnectPermissionsPartially" -> coroutineScope.launch {
                rookPermissionsManager.checkHealthConnectPermissionsPartially().fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "checkBackgroundReadStatus" -> coroutineScope.launch {
                rookPermissionsManager.checkBackgroundReadStatus().fold(
                    {
                        methodResult.backgroundReadStatusSuccess(it)
                    },
                    {
                        methodResult.backgroundReadStatusError(it)
                    }
                )
            }

            "requestHealthConnectPermissions" -> coroutineScope.launch {
                rookPermissionsManager.requestHealthConnectPermissions().fold(
                    {
                        methodResult.requestPermissionsStatusSuccess(it)
                    },
                    {
                        methodResult.requestPermissionsStatusError(it)
                    }
                )
            }

            "revokeHealthConnectPermissions" -> coroutineScope.launch {
                rookPermissionsManager.revokeHealthConnectPermissions().fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "checkAndroidPermissions" -> {
                val hasAndroidPermissions = rookPermissionsManager.checkAndroidPermissions()

                methodResult.boolean(hasAndroidPermissions)
            }

            "shouldRequestAndroidPermissions" -> {
                try {
                    val shouldRequestAndroidPermissions = RookPermissionsManager.shouldRequestAndroidPermissions(
                        activity!!,
                    )

                    methodResult.boolean(shouldRequestAndroidPermissions)
                } catch (exception: Exception) {
                    methodResult.throwable(exception)
                }
            }

            "requestAndroidPermissions" -> {
                val requestPermissionsStatus = rookPermissionsManager.requestAndroidPermissions()

                methodResult.requestPermissionsStatusSuccess(requestPermissionsStatus)
            }

            "checkExactAlarmPermissions" -> {
                val hasExactAlarmPermissions = rookPermissionsManager.checkExactAlarmPermissions()

                methodResult.booleanSuccess(hasExactAlarmPermissions)
            }

            "requestExactAlarmPermissions" -> {
                val requestPermissionsStatus = rookPermissionsManager.requestExactAlarmPermissions()

                methodResult.requestPermissionsStatusSuccess(requestPermissionsStatus)
            }

            "checkBatteryOptimizationsDisabled" -> {
                val batteryOptimizationsDisabled = rookPermissionsManager.checkBatteryOptimizationsDisabled()

                methodResult.booleanSuccess(batteryOptimizationsDisabled)
            }

            "requestDisableBatteryOptimizations" -> {
                val requestPermissionsStatus = rookPermissionsManager.requestDisableBatteryOptimizations()

                methodResult.requestPermissionsStatusSuccess(requestPermissionsStatus)
            }

            "requiresOemAutoStartSetup" -> {
                val requiresOemAutoStartSetup = rookPermissionsManager.requiresOemAutoStartSetup()

                methodResult.booleanSuccess(requiresOemAutoStartSetup)
            }

            "openOemAutoStartSetup" -> {
                rookPermissionsManager.openOemAutoStartSetup().fold(
                    {
                        methodResult.requestPermissionsStatusSuccess(it)
                    },
                    {
                        methodResult.requestPermissionsStatusError(it)
                    }
                )
            }

            else -> methodResult.notImplemented()
        }
    }
}
