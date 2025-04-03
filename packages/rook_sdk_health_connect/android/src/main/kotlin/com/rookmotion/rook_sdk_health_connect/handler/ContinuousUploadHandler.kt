package com.rookmotion.rook_sdk_health_connect.handler

import android.annotation.SuppressLint
import com.rookmotion.rook.sdk.RookContinuousUploadManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getBooleanArgAt
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class ContinuousUploadHandler(
    private val coroutineScope: CoroutineScope,
    private val rookContinuousUploadManager: RookContinuousUploadManager,
) {

    @SuppressLint("MissingPermission")
    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
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
