package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookSummaryManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusError
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusSuccess
import com.rookmotion.rook_sdk_health_connect.extension.toLocalDate
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import java.time.Instant

@Deprecated(message = "Use SyncHandler instead")
class SummaryHandler(private val coroutineScope: CoroutineScope, private val rookSummaryManager: RookSummaryManager) {

    @Deprecated(message = "Use SyncHandler.onMethodCall() instead")
    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "syncSleepSummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncSleepSummary(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncBodySummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncBodySummary(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncPhysicalSummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncPhysicalSummary(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncPendingSummaries" -> coroutineScope.launch {
                rookSummaryManager.syncPendingSummaries().fold(
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
}
