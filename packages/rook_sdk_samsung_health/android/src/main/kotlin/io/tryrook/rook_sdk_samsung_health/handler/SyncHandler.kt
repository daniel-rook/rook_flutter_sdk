package io.tryrook.rook_sdk_samsung_health.handler

import io.flutter.plugin.common.MethodCall
import io.tryrook.rook_sdk_samsung_health.MethodResult
import io.tryrook.rook_sdk_samsung_health.extension.getBooleanArgAt
import io.tryrook.rook_sdk_samsung_health.extension.getIntArgAt
import io.tryrook.rook_sdk_samsung_health.extension.getLongArgAt
import io.tryrook.rook_sdk_samsung_health.extension.toLocalDate
import io.tryrook.rook_sdk_samsung_health.mapper.toSyncType
import io.tryrook.rook_sdk_samsung_health.proto.EventSyncTypeProto
import io.tryrook.rook_sdk_samsung_health.proto.SummarySyncTypeProto
import io.tryrook.rook_sdk_samsung_health.result.activityEventError
import io.tryrook.rook_sdk_samsung_health.result.activityEventSuccess
import io.tryrook.rook_sdk_samsung_health.result.bodySummaryError
import io.tryrook.rook_sdk_samsung_health.result.bodySummarySuccess
import io.tryrook.rook_sdk_samsung_health.result.booleanError
import io.tryrook.rook_sdk_samsung_health.result.booleanSuccess
import io.tryrook.rook_sdk_samsung_health.result.caloriesError
import io.tryrook.rook_sdk_samsung_health.result.caloriesSuccess
import io.tryrook.rook_sdk_samsung_health.result.int64Error
import io.tryrook.rook_sdk_samsung_health.result.int64Success
import io.tryrook.rook_sdk_samsung_health.result.physicalSummaryError
import io.tryrook.rook_sdk_samsung_health.result.physicalSummarySuccess
import io.tryrook.rook_sdk_samsung_health.result.sleepSummaryError
import io.tryrook.rook_sdk_samsung_health.result.sleepSummarySuccess
import io.tryrook.sdk.samsung.RookSamsung
import io.tryrook.sdk.samsung.domain.enums.SHSyncStatus
import io.tryrook.sdk.samsung.domain.exception.SHRecordsNotFoundException
import io.tryrook.sdk.samsung.domain.model.SHActivityEvent
import io.tryrook.sdk.samsung.domain.model.SHBodySummary
import io.tryrook.sdk.samsung.domain.model.SHCalories
import io.tryrook.sdk.samsung.domain.model.SHPhysicalSummary
import io.tryrook.sdk.samsung.domain.model.SHSleepSummary
import io.tryrook.sdk.samsung.domain.model.SHSyncStatusWithData
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import timber.log.Timber
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

                val result = rookSamsung.sync(localDate)

                try {
                    val sleepSummaryStatus = result.sleepSummary.getOrThrow()
                    val physicalSummaryStatus = result.physicalSummary.getOrThrow()
                    val bodySummaryStatus = result.bodySummary.getOrThrow()

                    Timber.i("Sleep Summary: $sleepSummaryStatus")
                    Timber.i("Physical Summary: $physicalSummaryStatus")
                    Timber.i("Body Summary: $bodySummaryStatus")

                    val noSleepData = sleepSummaryStatus == SHSyncStatus.RECORDS_NOT_FOUND
                    val noPhysicalData = physicalSummaryStatus == SHSyncStatus.RECORDS_NOT_FOUND
                    val noBodyData = bodySummaryStatus == SHSyncStatus.RECORDS_NOT_FOUND

                    if (noSleepData && noPhysicalData && noBodyData) {
                        val throwable = SHRecordsNotFoundException("Sleep, Physical and Body summary")

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

                rookSamsung.sync(localDate, summary).fold(
                    { syncStatus ->
                        when (syncStatus) {
                            SHSyncStatus.SYNCED -> {
                                methodResult.booleanSuccess(true)
                            }

                            SHSyncStatus.RECORDS_NOT_FOUND -> {
                                methodResult.booleanError(SHRecordsNotFoundException(summary.name))
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

                rookSamsung.syncEvents(localDate, event).fold(
                    { syncStatus ->
                        when (syncStatus) {
                            SHSyncStatus.SYNCED -> {
                                methodResult.booleanSuccess(true)
                            }

                            SHSyncStatus.RECORDS_NOT_FOUND -> {
                                methodResult.booleanError(SHRecordsNotFoundException(event.name))
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

                rookSamsung.getSleepSummary(localDate).fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SHSyncStatusWithData.Synced<List<SHSleepSummary>> -> {
                                methodResult.sleepSummarySuccess(syncStatus.data)
                            }

                            SHSyncStatusWithData.RecordsNotFound -> {
                                methodResult.sleepSummaryError(SHRecordsNotFoundException("Sleep Summary"))
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

                rookSamsung.getPhysicalSummary(localDate).fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SHSyncStatusWithData.Synced<SHPhysicalSummary> -> {
                                methodResult.physicalSummarySuccess(syncStatus.data)
                            }

                            SHSyncStatusWithData.RecordsNotFound -> {
                                methodResult.physicalSummaryError(SHRecordsNotFoundException("Physical Summary"))
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

                rookSamsung.getBodySummary(localDate).fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SHSyncStatusWithData.Synced<SHBodySummary> -> {
                                methodResult.bodySummarySuccess(syncStatus.data)
                            }

                            SHSyncStatusWithData.RecordsNotFound -> {
                                methodResult.bodySummaryError(SHRecordsNotFoundException("Body Summary"))
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

                rookSamsung.getActivityEvents(localDate).fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SHSyncStatusWithData.Synced<List<SHActivityEvent>> -> {
                                methodResult.activityEventSuccess(syncStatus.data)
                            }

                            SHSyncStatusWithData.RecordsNotFound -> {
                                methodResult.activityEventError(SHRecordsNotFoundException("Activity Event"))
                            }
                        }
                    },
                    {
                        methodResult.activityEventError(it)
                    },
                )
            }

            "getTodayStepsCount" -> coroutineScope.launch {
                rookSamsung.getTodayStepsCount().fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SHSyncStatusWithData.Synced<Int> -> {
                                methodResult.int64Success(syncStatus.data.toLong())
                            }

                            SHSyncStatusWithData.RecordsNotFound -> {
                                methodResult.int64Error(SHRecordsNotFoundException("Steps"))
                            }
                        }
                    },
                    {
                        methodResult.int64Error(it)
                    },
                )
            }

            "getTodayCaloriesCount" -> coroutineScope.launch {
                rookSamsung.getTodayCaloriesCount().fold(
                    { syncStatus ->
                        when (syncStatus) {
                            is SHSyncStatusWithData.Synced<SHCalories> -> {
                                methodResult.caloriesSuccess(syncStatus.data)
                            }

                            SHSyncStatusWithData.RecordsNotFound -> {
                                methodResult.caloriesError(SHRecordsNotFoundException("Calories"))
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
