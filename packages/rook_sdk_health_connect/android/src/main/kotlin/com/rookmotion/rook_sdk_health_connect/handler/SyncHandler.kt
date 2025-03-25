package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookSyncManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getBooleanArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getIntArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusWithDailyCaloriesError
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusWithDailyCaloriesSuccess
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusWithIntError
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusWithIntSuccess
import com.rookmotion.rook_sdk_health_connect.extension.toLocalDate
import com.rookmotion.rook_sdk_health_connect.mapper.toSyncType
import com.rookmotion.rook_sdk_health_connect.proto.EventSyncTypeProto
import com.rookmotion.rook_sdk_health_connect.proto.SummarySyncTypeProto
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import java.time.Instant

class SyncHandler(private val coroutineScope: CoroutineScope, private val rookSyncManager: RookSyncManager) {

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "syncHistoricSummaries" -> coroutineScope.launch {
                val enableLogs = methodCall.getBooleanArgAt(0)

                rookSyncManager.sync(enableLogs).fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    },
                )
            }

            "syncSummariesByDate" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSyncManager.sync(localDate).fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    },
                )
            }

            "syncByDateAndSummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()
                val summary = methodCall.getIntArgAt(1).let {
                    SummarySyncTypeProto.forNumber(it).toSyncType()
                }

                rookSyncManager.sync(localDate, summary).fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    },
                )
            }

            "syncByDateAndEvent" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()
                val event = methodCall.getIntArgAt(1).let {
                    EventSyncTypeProto.forNumber(it).toSyncType()
                }

                rookSyncManager.syncEvents(localDate, event).fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    },
                )
            }

            "getTodayStepsCount" -> coroutineScope.launch {
                rookSyncManager.getTodayStepsCount().fold(
                    {
                        methodResult.syncStatusWithIntSuccess(it)
                    },
                    {
                        methodResult.syncStatusWithIntError(it)
                    },
                )
            }

            "getTodayCaloriesCount" -> coroutineScope.launch {
                rookSyncManager.getTodayCaloriesCount().fold(
                    {
                        methodResult.syncStatusWithDailyCaloriesSuccess(it)
                    },
                    {
                        methodResult.syncStatusWithDailyCaloriesError(it)
                    },
                )
            }
        }
    }
}
