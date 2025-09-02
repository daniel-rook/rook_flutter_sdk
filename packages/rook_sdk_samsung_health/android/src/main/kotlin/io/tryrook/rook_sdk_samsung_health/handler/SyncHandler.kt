package io.tryrook.rook_sdk_samsung_health.handler

import io.flutter.plugin.common.MethodCall
import io.tryrook.rook_sdk_samsung_health.MethodResult
import io.tryrook.rook_sdk_samsung_health.extension.booleanError
import io.tryrook.rook_sdk_samsung_health.extension.booleanSuccess
import io.tryrook.rook_sdk_samsung_health.extension.getBooleanArgAt
import io.tryrook.rook_sdk_samsung_health.extension.getIntArgAt
import io.tryrook.rook_sdk_samsung_health.extension.getLongArgAt
import io.tryrook.rook_sdk_samsung_health.extension.syncStatusWithDailyCaloriesError
import io.tryrook.rook_sdk_samsung_health.extension.syncStatusWithDailyCaloriesSuccess
import io.tryrook.rook_sdk_samsung_health.extension.syncStatusWithIntError
import io.tryrook.rook_sdk_samsung_health.extension.syncStatusWithIntSuccess
import io.tryrook.rook_sdk_samsung_health.extension.toLocalDate
import io.tryrook.rook_sdk_samsung_health.mapper.toSyncType
import io.tryrook.rook_sdk_samsung_health.proto.EventSyncTypeProto
import io.tryrook.rook_sdk_samsung_health.proto.SummarySyncTypeProto
import io.tryrook.sdk.samsung.RookSamsung
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import java.time.Instant

class SyncHandler(private val coroutineScope: CoroutineScope, private val rookSamsung: RookSamsung) {
    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "syncHistoricSummaries" -> coroutineScope.launch {
                val enableLogs = methodCall.getBooleanArgAt(0)

                rookSamsung.sync(enableLogs).fold(
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

                rookSamsung.sync(localDate).fold(
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

                rookSamsung.sync(localDate, summary).fold(
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

                rookSamsung.syncEvents(localDate, event).fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    },
                )
            }

            "getTodayStepsCount" -> coroutineScope.launch {
                rookSamsung.getTodayStepsCount().fold(
                    {
                        methodResult.syncStatusWithIntSuccess(it)
                    },
                    {
                        methodResult.syncStatusWithIntError(it)
                    },
                )
            }

            "getTodayCaloriesCount" -> coroutineScope.launch {
                rookSamsung.getTodayCaloriesCount().fold(
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
