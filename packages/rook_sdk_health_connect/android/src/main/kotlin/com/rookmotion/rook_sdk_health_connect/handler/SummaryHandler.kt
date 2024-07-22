package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookSummaryManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanError
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.resultSyncStatusSuccess
import com.rookmotion.rook_sdk_health_connect.extension.resultSyncStatusError
import com.rookmotion.rook_sdk_health_connect.extension.toLocalDate
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import java.time.Instant

class SummaryHandler(private val coroutineScope: CoroutineScope, private val rookSummaryManager: RookSummaryManager) {

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "syncSleepSummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncSleepSummary(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncBodySummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncBodySummary(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncPhysicalSummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncPhysicalSummary(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncPendingSummaries" -> coroutineScope.launch {
                rookSummaryManager.syncPendingSummaries().fold(
                    {
                        methodResult.resultBooleanSuccess(true)
                    },
                    {
                        methodResult.resultBooleanError(it)
                    }
                )
            }

            else -> Unit
        }
    }
}
