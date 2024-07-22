package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookEventManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanError
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.resultSyncStatusSuccess
import com.rookmotion.rook_sdk_health_connect.extension.resultSyncStatusError
import com.rookmotion.rook_sdk_health_connect.extension.resultSyncStatusWithIntSuccess
import com.rookmotion.rook_sdk_health_connect.extension.resultSyncStatusWithIntError
import com.rookmotion.rook_sdk_health_connect.extension.toLocalDate
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import java.time.Instant

class EventHandler(private val coroutineScope: CoroutineScope, private val rookEventManager: RookEventManager) {

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "syncPhysicalEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncPhysicalEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncBloodGlucoseEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBloodGlucoseEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncBloodPressureEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBloodPressureEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncBodyMetricsEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyMetricsEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncBodyHeartRateEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyHeartRateEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncPhysicalHeartRateEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncPhysicalHeartRateEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncHydrationEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncHydrationEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncNutritionEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncNutritionEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncBodyOxygenationEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyOxygenationEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncPhysicalOxygenationEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncPhysicalOxygenationEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncTemperatureEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncTemperatureEvents(localDate).fold(
                    {
                        methodResult.resultSyncStatusSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusError(it)
                    }
                )
            }

            "syncTodayHealthConnectStepsCount" -> coroutineScope.launch {
                rookEventManager.syncTodayHealthConnectStepsCount().fold(
                    {
                        methodResult.resultSyncStatusWithIntSuccess(it)
                    },
                    {
                        methodResult.resultSyncStatusWithIntError(it)
                    }
                )
            }

            "syncPendingEvents" -> coroutineScope.launch {
                rookEventManager.syncPendingEvents().fold(
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
