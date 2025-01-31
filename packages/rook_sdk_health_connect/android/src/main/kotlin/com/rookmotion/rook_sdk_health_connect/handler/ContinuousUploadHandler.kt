package com.rookmotion.rook_sdk_health_connect.handler

import android.annotation.SuppressLint
import android.content.Context
import com.rookmotion.rook.sdk.RookContinuousUploadManager
import com.rookmotion.rook.sdk.RookYesterdaySyncPermissions
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getBooleanArgAt
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class ContinuousUploadHandler(
    private val context: Context,
    private val coroutineScope: CoroutineScope,
    private val rookContinuousUploadManager: RookContinuousUploadManager,
) {

    @SuppressLint("MissingPermission")
    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "hasYesterdaySyncAndroidPermissions" -> {
                try {
                    val hasPermissions = RookYesterdaySyncPermissions.hasAndroidPermissions(
                        context
                    )

                    methodResult.booleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "requestYesterdaySyncAndroidPermissions" -> {
                try {
                    RookYesterdaySyncPermissions.requestAndroidPermissions(context)

                    methodResult.booleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "hasYesterdaySyncHealthConnectPermissions" -> coroutineScope.launch {
                try {
                    val hasPermissions = RookYesterdaySyncPermissions.hasHealthConnectPermissions(
                        context
                    )

                    methodResult.booleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "requestYesterdaySyncHealthConnectPermissions" -> {
                try {
                    RookYesterdaySyncPermissions.requestHealthConnectPermissions(context)

                    methodResult.booleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "scheduleYesterdaySync" -> coroutineScope.launch {
                try {
                    val enableNativeLogs = methodCall.getBooleanArgAt(0)

                    rookContinuousUploadManager.launchInForegroundService(enableNativeLogs).fold(
                        {
                            methodResult.booleanSuccess(true)
                        },
                        {
                            methodResult.booleanError(it)
                        }
                    )
                } catch (exception: Exception) {
                    methodResult.booleanError(exception)
                }
            }

            else -> Unit
        }
    }
}
