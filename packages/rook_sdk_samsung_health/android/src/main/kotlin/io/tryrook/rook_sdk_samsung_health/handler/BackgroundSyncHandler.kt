package io.tryrook.rook_sdk_samsung_health.handler

import io.flutter.plugin.common.MethodCall
import io.tryrook.rook_sdk_samsung_health.MethodResult
import io.tryrook.rook_sdk_samsung_health.extension.getBooleanArgAt
import io.tryrook.rook_sdk_samsung_health.result.booleanError
import io.tryrook.rook_sdk_samsung_health.result.booleanSuccess
import io.tryrook.sdk.samsung.RookSamsung
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class BackgroundSyncHandler(private val coroutineScope: CoroutineScope, private val rookSamsung: RookSamsung) {
    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "isScheduled" -> coroutineScope.launch {
                rookSamsung.isScheduled().fold(
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
                val cancelAndReschedule = methodCall.getBooleanArgAt(1)

                rookSamsung.schedule(enableLogs, cancelAndReschedule)
                methodResult.booleanSuccess(true)
            }

            "cancel" -> coroutineScope.launch {
                rookSamsung.cancel()
                methodResult.booleanSuccess(true)
            }

            else -> methodResult.notImplemented()
        }
    }
}
