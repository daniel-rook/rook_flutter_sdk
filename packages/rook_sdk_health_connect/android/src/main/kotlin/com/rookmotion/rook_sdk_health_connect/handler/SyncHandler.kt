package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookSyncManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.getBooleanArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getIntArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.toLocalDate
import com.rookmotion.rook_sdk_health_connect.mapper.toSyncType
import com.rookmotion.rook_sdk_health_connect.proto.EventSyncTypeProto
import com.rookmotion.rook_sdk_health_connect.proto.SummarySyncTypeProto
import com.rookmotion.rook_sdk_health_connect.result.activityEventError
import com.rookmotion.rook_sdk_health_connect.result.activityEventSuccess
import com.rookmotion.rook_sdk_health_connect.result.bodySummaryError
import com.rookmotion.rook_sdk_health_connect.result.bodySummarySuccess
import com.rookmotion.rook_sdk_health_connect.result.booleanError
import com.rookmotion.rook_sdk_health_connect.result.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.result.physicalSummaryError
import com.rookmotion.rook_sdk_health_connect.result.physicalSummarySuccess
import com.rookmotion.rook_sdk_health_connect.result.sleepSummaryError
import com.rookmotion.rook_sdk_health_connect.result.sleepSummarySuccess
import com.rookmotion.rook_sdk_health_connect.result.syncStatusWithDailyCaloriesError
import com.rookmotion.rook_sdk_health_connect.result.syncStatusWithDailyCaloriesSuccess
import com.rookmotion.rook_sdk_health_connect.result.syncStatusWithIntError
import com.rookmotion.rook_sdk_health_connect.result.syncStatusWithIntSuccess
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

            "getSleepSummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSyncManager.getSleepSummary(localDate).fold(
                    {
                        methodResult.sleepSummarySuccess(it)
                    },
                    {
                        methodResult.sleepSummaryError(it)
                    },
                )
            }

            "getPhysicalSummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSyncManager.getPhysicalSummary(localDate).fold(
                    {
                        methodResult.physicalSummarySuccess(it)
                    },
                    {
                        methodResult.physicalSummaryError(it)
                    },
                )
            }

            "getBodySummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSyncManager.getBodySummary(localDate).fold(
                    {
                        methodResult.bodySummarySuccess(it)
                    },
                    {
                        methodResult.bodySummaryError(it)
                    },
                )
            }

            "getActivityEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSyncManager.getActivityEvents(localDate).fold(
                    {
                        methodResult.activityEventSuccess(it)
                    },
                    {
                        methodResult.activityEventError(it)
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
