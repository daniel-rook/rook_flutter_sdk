package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookEventManager
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusError
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusSuccess
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusWithIntError
import com.rookmotion.rook_sdk_health_connect.extension.syncStatusWithIntSuccess
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
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncBloodGlucoseEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBloodGlucoseEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncBloodPressureEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBloodPressureEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncBodyMetricsEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyMetricsEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncBodyHeartRateEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyHeartRateEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncPhysicalHeartRateEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncPhysicalHeartRateEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncHydrationEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncHydrationEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncNutritionEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncNutritionEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncBodyOxygenationEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyOxygenationEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncPhysicalOxygenationEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncPhysicalOxygenationEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncTemperatureEvents" -> coroutineScope.launch {
                val millis = methodCall.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncTemperatureEvents(localDate).fold(
                    {
                        methodResult.syncStatusSuccess(it)
                    },
                    {
                        methodResult.syncStatusError(it)
                    }
                )
            }

            "syncTodayHealthConnectStepsCount" -> coroutineScope.launch {
                rookEventManager.syncTodayHealthConnectStepsCount().fold(
                    {
                        methodResult.syncStatusWithIntSuccess(it)
                    },
                    {
                        methodResult.syncStatusWithIntError(it)
                    }
                )
            }

            "syncPendingEvents" -> coroutineScope.launch {
                rookEventManager.syncPendingEvents().fold(
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
