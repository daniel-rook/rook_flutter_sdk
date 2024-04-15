package com.rookmotion.rook_sdk_health_connect

import android.app.Activity
import android.content.Context
import com.rookmotion.rook.sdk.RookConfigurationManager
import com.rookmotion.rook.sdk.RookEventManager
import com.rookmotion.rook.sdk.RookHealthPermissionsManager
import com.rookmotion.rook.sdk.RookHelpers
import com.rookmotion.rook.sdk.RookStepsManager
import com.rookmotion.rook.sdk.RookSummaryManager
import com.rookmotion.rook.sdk.RookYesterdaySyncPermissions
import com.rookmotion.rook.sdk.internal.analytics.RookAnalytics
import com.rookmotion.rook.sdk.internal.analytics.RookFramework
import com.rookmotion.rook_sdk_health_connect.data.proto.HealthDataTypeProto
import com.rookmotion.rook_sdk_health_connect.data.proto.HealthPermissionProto
import com.rookmotion.rook_sdk_health_connect.data.proto.RookConfigurationProto
import com.rookmotion.rook_sdk_health_connect.extension.getByteArrayArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getIntArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getStringArgAt
import com.rookmotion.rook_sdk_health_connect.extension.intSuccess
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanError
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.resultInt64Error
import com.rookmotion.rook_sdk_health_connect.extension.resultInt64Success
import com.rookmotion.rook_sdk_health_connect.extension.resultSyncStatusError
import com.rookmotion.rook_sdk_health_connect.extension.resultSyncStatusSuccess
import com.rookmotion.rook_sdk_health_connect.extension.throwableError
import com.rookmotion.rook_sdk_health_connect.extension.toLocalDate
import com.rookmotion.rook_sdk_health_connect.mapper.toDomain
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import java.time.Instant

/** RookSdkHealthConnectPlugin */
class RookSdkHealthConnectPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {
    private lateinit var channel: MethodChannel
    private lateinit var scope: CoroutineScope

    private var context: Context? = null
    private var activity: Activity? = null

    private lateinit var rookConfigurationManager: RookConfigurationManager
    private lateinit var rookHealthPermissionsManager: RookHealthPermissionsManager
    private lateinit var rookSummaryManager: RookSummaryManager
    private lateinit var rookEventManager: RookEventManager
    private lateinit var rookStepsManager: RookStepsManager

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        context = flutterPluginBinding.applicationContext

        rookConfigurationManager = RookConfigurationManager(flutterPluginBinding.applicationContext)
        rookHealthPermissionsManager = RookHealthPermissionsManager(rookConfigurationManager)
        rookSummaryManager = RookSummaryManager(rookConfigurationManager)
        rookEventManager = RookEventManager(rookConfigurationManager)
        rookStepsManager = RookStepsManager(flutterPluginBinding.applicationContext)

        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "rook_sdk_health_connect")
        scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "enableNativeLogs" -> {
                rookConfigurationManager.enableLocalLogs()

                result.resultBooleanSuccess(true)
            }

            "setConfiguration" -> {
                val bytes = call.getByteArrayArgAt(0)
                val proto = RookConfigurationProto.parseFrom(bytes)

                rookConfigurationManager.setConfiguration(proto.toDomain())

                result.resultBooleanSuccess(true)
            }

            "getUserID" -> {
                val userID = rookConfigurationManager.getUserID()

                result.success(userID)
            }

            "initRook" -> scope.launch {
                RookAnalytics.setFramework(RookFramework.FLUTTER)

                rookConfigurationManager.initRook().fold(
                    {
                        result.resultBooleanSuccess(true)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "updateUserID" -> scope.launch {
                val userID = call.getStringArgAt(0)

                rookConfigurationManager.updateUserID(userID).fold(
                    {
                        result.resultBooleanSuccess(true)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "clearUserID" -> {
                rookConfigurationManager.clearUserID()

                result.resultBooleanSuccess(true)
            }

            "deleteUserFromRook" -> scope.launch {
                rookConfigurationManager.deleteUserFromRook().fold(
                    {
                        result.resultBooleanSuccess(true)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "syncUserTimeZone" -> scope.launch {
                rookConfigurationManager.syncUserTimeZone().fold(
                    {
                        result.resultBooleanSuccess(true)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "checkAvailability" -> {
                try {
                    val hcAvailabilityStatus = RookHealthPermissionsManager.checkAvailability(
                        context!!,
                    )
                    val proto = hcAvailabilityStatus.toProto()

                    result.intSuccess(proto.number)
                } catch (exception: NullPointerException) {
                    result.throwableError(exception)
                }
            }

            "openHealthConnectSettings" -> scope.launch {
                rookHealthPermissionsManager.openHealthConnectSettings().fold(
                    {
                        result.resultBooleanSuccess(true)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "checkPermissions" -> scope.launch {
                val healthPermission = call.getIntArgAt(0).let {
                    HealthPermissionProto.forNumber(it).toDomain()
                }

                rookHealthPermissionsManager.checkPermissions(healthPermission).fold(
                    {
                        result.resultBooleanSuccess(it)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "requestPermissions" -> {
                val healthPermission = call.getIntArgAt(0).let {
                    HealthPermissionProto.forNumber(it).toDomain()
                }

                try {
                    HealthConnectPermissionsActivity.launch(context!!, healthPermission)

                    result.resultBooleanSuccess(true)
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "shouldSyncFor" -> scope.launch {
                val healthDataType = call.getIntArgAt(0).let {
                    HealthDataTypeProto.forNumber(it).toDomain()
                }

                val localDate = call.getLongArgAt(1).let {
                    Instant.ofEpochMilli(it).toLocalDate()
                }

                RookHelpers.shouldSyncFor(healthDataType, localDate).fold(
                    {
                        result.resultBooleanSuccess(it)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "syncSleepSummary" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncSleepSummary(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncBodySummary" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncBodySummary(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncPhysicalSummary" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookSummaryManager.syncPhysicalSummary(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncPendingSummaries" -> scope.launch {
                rookSummaryManager.syncPendingSummaries().fold(
                    {
                        result.resultBooleanSuccess(true)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "syncYesterdaySummaries" -> scope.launch {
                rookSummaryManager.syncYesterdaySummaries()
                result.resultBooleanSuccess(true)
            }

            "syncPhysicalEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncPhysicalEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncBloodGlucoseEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBloodGlucoseEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncBloodPressureEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBloodPressureEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncBodyMetricsEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyMetricsEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncBodyHeartRateEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyHeartRateEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncPhysicalHeartRateEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncPhysicalHeartRateEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncHydrationEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncHydrationEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncNutritionEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncNutritionEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncBodyOxygenationEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncBodyOxygenationEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncPhysicalOxygenationEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncPhysicalOxygenationEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncTemperatureEvents" -> scope.launch {
                val millis = call.getLongArgAt(0)
                val localDate = Instant.ofEpochMilli(millis).toLocalDate()

                rookEventManager.syncTemperatureEvents(localDate).fold(
                    {
                        result.resultSyncStatusSuccess(it)
                    },
                    {
                        result.resultSyncStatusError(it)
                    }
                )
            }

            "syncPendingEvents" -> scope.launch {
                rookEventManager.syncPendingEvents().fold(
                    {
                        result.resultBooleanSuccess(true)
                    },
                    {
                        result.resultBooleanError(it)
                    }
                )
            }

            "syncYesterdayEvents" -> scope.launch {
                rookEventManager.syncYesterdayEvents()
                result.resultBooleanSuccess(true)
            }

            "isStepsAvailable" -> {
                try {
                    val isAvailable = rookStepsManager.isAvailable()

                    result.resultBooleanSuccess(isAvailable)
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "isStepsActive" -> scope.launch {
                val isActive = rookStepsManager.isActive()

                result.resultBooleanSuccess(isActive)
            }

            "hasStepsPermissions" -> {
                try {
                    val hasPermissions = rookStepsManager.hasPermissions()

                    result.resultBooleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "requestStepsPermissions" -> {
                try {
                    rookStepsManager.requestPermissions()

                    result.resultBooleanSuccess(true)
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "startSteps" -> {
                try {
                    rookStepsManager.start().fold(
                        {
                            result.resultBooleanSuccess(true)
                        },
                        {
                            result.resultBooleanError(it)
                        }
                    )
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "stopSteps" -> {
                try {
                    rookStepsManager.stop().fold(
                        {
                            result.resultBooleanSuccess(true)
                        },
                        {
                            result.resultBooleanError(it)
                        }
                    )
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "getTodaySteps" -> scope.launch {
                rookStepsManager.getTodaySteps().fold(
                    {
                        result.resultInt64Success(it)
                    },
                    {
                        result.resultInt64Error(it)
                    }
                )
            }

            "hasYesterdaySyncAndroidPermissions" -> {
                try {
                    val hasPermissions = RookYesterdaySyncPermissions.hasAndroidPermissions(
                        context!!
                    )

                    result.resultBooleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "requestYesterdaySyncAndroidPermissions" -> {
                try {
                    RookYesterdaySyncPermissions.requestAndroidPermissions(context!!)

                    result.resultBooleanSuccess(true)
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "hasYesterdaySyncHealthConnectPermissions" -> scope.launch {
                try {
                    val hasPermissions = RookYesterdaySyncPermissions.hasHealthConnectPermissions(
                        context!!
                    )

                    result.resultBooleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            "requestYesterdaySyncHealthConnectPermissions" -> {
                try {
                    RookYesterdaySyncPermissions.requestHealthConnectPermissions(context!!)

                    result.resultBooleanSuccess(true)
                } catch (exception: NullPointerException) {
                    result.resultBooleanError(exception)
                }
            }

            else -> result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        scope.cancel()
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        initializeActivity(binding)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        destroyActivity()
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        initializeActivity(binding)
    }

    override fun onDetachedFromActivity() {
        destroyActivity()
    }

    private fun initializeActivity(binding: ActivityPluginBinding) {
        try {
            activity = binding.activity
        } catch (ignored: Exception) {
            // Ignored
        }
    }

    private fun destroyActivity() {
        try {
            activity = null
        } catch (ignored: Exception) {
            // Ignored
        }
    }
}
