package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookBackgroundSyncManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getBooleanArgAt
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class BackgroundSyncHandler(
    private val coroutineScope: CoroutineScope,
    private val backgroundSyncManager: RookBackgroundSyncManager,
) {

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "isScheduled" -> coroutineScope.launch {
                backgroundSyncManager.isScheduled().fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "schedule" -> {
                val enableLogs = methodCall.getBooleanArgAt(0)

                backgroundSyncManager.schedule(enableLogs)
                methodResult.booleanSuccess(true)
            }

            "cancel" -> coroutineScope.launch {
                backgroundSyncManager.cancel()
                methodResult.booleanSuccess(true)
            }
        }
    }
}
