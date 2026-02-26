package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookSyncManager
import com.rookmotion.rook.sdk.domain.enums.SyncStatus
import com.rookmotion.rook.sdk.domain.exception.HCRecordsNotFoundException
import com.rookmotion.rook.sdk.domain.model.HCActivityEvent
import com.rookmotion.rook.sdk.domain.model.HCBodySummary
import com.rookmotion.rook.sdk.domain.model.HCCalories
import com.rookmotion.rook.sdk.domain.model.HCHeartRate
import com.rookmotion.rook.sdk.domain.model.HCPhysicalSummary
import com.rookmotion.rook.sdk.domain.model.HCSleepSummary
import com.rookmotion.rook.sdk.domain.model.SyncStatusWithData
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
import com.rookmotion.rook_sdk_health_connect.result.caloriesError
import com.rookmotion.rook_sdk_health_connect.result.caloriesSuccess
import com.rookmotion.rook_sdk_health_connect.result.heartRateError
import com.rookmotion.rook_sdk_health_connect.result.heartRateSuccess
import com.rookmotion.rook_sdk_health_connect.result.int64Error
import com.rookmotion.rook_sdk_health_connect.result.int64Success
import com.rookmotion.rook_sdk_health_connect.result.physicalSummaryError
import com.rookmotion.rook_sdk_health_connect.result.physicalSummarySuccess
import com.rookmotion.rook_sdk_health_connect.result.sleepSummaryError
import com.rookmotion.rook_sdk_health_connect.result.sleepSummarySuccess
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import timber.log.Timber
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

                val result = rookSyncManager.sync(localDate)

                try {
                    val sleepSummaryStatus = result.sleepSummary.getOrThrow()
                    val physicalSummaryStatus = result.physicalSummary.getOrThrow()
                    val bodySummaryStatus = result.bodySummary.getOrThrow()

                    Timber.i("Sleep Summary: $sleepSummaryStatus")
                    Timber.i("Physical Summary: $physicalSummaryStatus")
                    Timber.i("Body Summary: $bodySummaryStatus")

                    val noSleepData = sleepSummaryStatus == SyncStatus.RECORDS_NOT_FOUND
                    val noPhysicalData = physicalSummaryStatus == SyncStatus.RECORDS_NOT_FOUND
                    val noBodyData = bodySummaryStatus == SyncStatus.RECORDS_NOT_FOUND

                    if (noSleepData && noPhysicalData && noBodyData) {
                        val throwable = HCRecordsNotFoundException("Sleep, Physical and Body summary")

                        methodResult.booleanError(throwable)
                    } else {
                        methodResult.booleanSuccess(true)
                    }
                } catch (exception: Exception) {
                    methodResult.booleanError(exception)
                }
            }

            "syncByDateAndSummary" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()
                val summary = methodCall.getIntArgAt(1).let {
                    SummarySyncTypeProto.forNumber(it).toSyncType()
                }

                rookSyncManager.sync(localDate, summary).fold(
                    { syncStatus ->
                        when (syncStatus) {
                            SyncStatus.SYNCED -> {
                                methodResult.booleanSuccess(true)
                            }

                            SyncStatus.RECORDS_NOT_FOUND -> {
                                methodResult.booleanError(HCRecordsNotFoundException(summary.name))
                            }
                        }
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
                    { syncStatus ->
                        when (syncStatus) {
                            SyncStatus.SYNCED -> {
                                methodResult.booleanSuccess(true)
                            }

                            SyncStatus.RECORDS_NOT_FOUND -> {
                                methodResult.booleanError(HCRecordsNotFoundException(event.name))
                            }
                        }
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
                    { syncStatus ->
                        when (syncStatus) {
                            is SyncStatusWithData.Synced<List<HCSleepSummary>> -> {
                                methodResult.sleepSummarySuccess(syncStatus.data)
                            }

                            SyncStatusWithData.RecordsNotFound -> {
                                methodResult.sleepSummaryError(HCRecordsNotFoundException("Sleep Summary"))
                            }
                        }
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
                    { syncStatus ->
                        when (syncStatus) {
                            is SyncStatusWithData.Synced<HCPhysicalSummary> -> {
                                methodResult.physicalSummarySuccess(syncStatus.data)
                            }

                            SyncStatusWithData.RecordsNotFound -> {
                                methodResult.physicalSummaryError(HCRecordsNotFoundException("Physical Summary"))
                            }
                        }
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
                    { syncStatus ->
                        when (syncStatus) {
                            is SyncStatusWithData.Synced<HCBodySummary> -> {
                                methodResult.bodySummarySuccess(syncStatus.data)
                            }

                            SyncStatusWithData.RecordsNotFound -> {
                                methodResult.bodySummaryError(HCRecordsNotFoundException("Body Summary"))
                            }
                        }
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
                    { syncStatus ->
                        when (syncStatus) {
                            is SyncStatusWithData.Synced<List<HCActivityEvent>> -> {
                                methodResult.activityEventSuccess(syncStatus.data)
                            }

                            SyncStatusWithData.RecordsNotFound -> {
                                methodResult.activityEventError(HCRecordsNotFoundException("Activity Event"))
                            }
                        }
                    },
                    {
                        methodResult.activityEventError(it)
                    },
                )
            }

            "getTodayStepsCount" -> coroutineScope.launch {
                rookSyncManager.getTodayStepsCount().fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SyncStatusWithData.Synced<Int> -> {
                                methodResult.int64Success(syncStatus.data.toLong())
                            }

                            SyncStatusWithData.RecordsNotFound -> {
                                methodResult.int64Error(HCRecordsNotFoundException("Steps"))
                            }
                        }
                    },
                    {
                        methodResult.int64Error(it)
                    },
                )
            }

            "getTodayCaloriesCount" -> coroutineScope.launch {
                rookSyncManager.getTodayCaloriesCount().fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SyncStatusWithData.Synced<HCCalories> -> {
                                methodResult.caloriesSuccess(syncStatus.data)
                            }

                            SyncStatusWithData.RecordsNotFound -> {
                                methodResult.caloriesError(HCRecordsNotFoundException("Calories"))
                            }
                        }
                    },
                    {
                        methodResult.caloriesError(it)
                    },
                )
            }

            "getTodayHeartRate" -> coroutineScope.launch {
                rookSyncManager.getTodayHeartRate().fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SyncStatusWithData.Synced<HCHeartRate> -> {
                                methodResult.heartRateSuccess(syncStatus.data)
                            }

                            SyncStatusWithData.RecordsNotFound -> {
                                methodResult.heartRateError(HCRecordsNotFoundException("Heart Rate"))
                            }
                        }
                    },
                    {
                        methodResult.caloriesError(it)
                    },
                )
            }
        }
    }
}
