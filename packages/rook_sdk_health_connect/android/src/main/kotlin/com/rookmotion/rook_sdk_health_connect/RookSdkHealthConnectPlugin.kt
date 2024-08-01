package com.rookmotion.rook_sdk_health_connect

import com.rookmotion.rook.sdk.RookConfigurationManager
import com.rookmotion.rook.sdk.RookEventManager
import com.rookmotion.rook.sdk.RookHealthPermissionsManager
import com.rookmotion.rook.sdk.RookPermissionsManager
import com.rookmotion.rook.sdk.RookStepsManager
import com.rookmotion.rook.sdk.RookSummaryManager
import com.rookmotion.rook.sdk.RookYesterdaySyncManager
import com.rookmotion.rook_sdk_health_connect.handler.ConfigurationHandler
import com.rookmotion.rook_sdk_health_connect.handler.DataSourcesHandler
import com.rookmotion.rook_sdk_health_connect.handler.EventHandler
import com.rookmotion.rook_sdk_health_connect.handler.HelperHandler
import com.rookmotion.rook_sdk_health_connect.handler.PermissionsHandler
import com.rookmotion.rook_sdk_health_connect.handler.PermissionsHandlerLegacy
import com.rookmotion.rook_sdk_health_connect.handler.StepsHandler
import com.rookmotion.rook_sdk_health_connect.handler.SummaryHandler
import com.rookmotion.rook_sdk_health_connect.handler.YesterdaySyncHandler
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

/** RookSdkHealthConnectPlugin */
class RookSdkHealthConnectPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {
    private lateinit var methodChannel: MethodChannel
    private lateinit var coroutineScope: CoroutineScope

    private lateinit var configurationHandler: ConfigurationHandler
    private lateinit var permissionsHandler: PermissionsHandler
    private lateinit var permissionsHandlerLegacy: PermissionsHandlerLegacy
    private lateinit var summaryHandler: SummaryHandler
    private lateinit var eventHandler: EventHandler
    private lateinit var helperHandler: HelperHandler
    private lateinit var stepsHandler: StepsHandler
    private lateinit var yesterdaySyncHandler: YesterdaySyncHandler
    private lateinit var dataSourcesHandler: DataSourcesHandler

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        coroutineScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

        val rookConfigurationManager = RookConfigurationManager(flutterPluginBinding.applicationContext)
        val rookPermissionsManager = RookPermissionsManager(flutterPluginBinding.applicationContext)
        val rookHealthPermissionsManager = RookHealthPermissionsManager(rookConfigurationManager)
        val rookSummaryManager = RookSummaryManager(rookConfigurationManager)
        val rookEventManager = RookEventManager(rookConfigurationManager)
        val rookStepsManager = RookStepsManager(flutterPluginBinding.applicationContext)
        val yesterdaySyncManager = RookYesterdaySyncManager(flutterPluginBinding.applicationContext)

        configurationHandler = ConfigurationHandler(
            coroutineScope = coroutineScope,
            rookConfigurationManager = rookConfigurationManager,
            rookYesterdaySyncManager = yesterdaySyncManager,
            rookStepsManager = rookStepsManager,
        )
        permissionsHandler = PermissionsHandler(coroutineScope, rookPermissionsManager)
        permissionsHandlerLegacy = PermissionsHandlerLegacy(
            context = flutterPluginBinding.applicationContext,
            coroutineScope = coroutineScope,
            rookHealthPermissionsManager = rookHealthPermissionsManager,
        )
        summaryHandler = SummaryHandler(coroutineScope, rookSummaryManager)
        eventHandler = EventHandler(coroutineScope, rookEventManager)
        helperHandler = HelperHandler(coroutineScope)
        stepsHandler = StepsHandler(coroutineScope, rookStepsManager)
        yesterdaySyncHandler = YesterdaySyncHandler(
            context = flutterPluginBinding.applicationContext,
            coroutineScope = coroutineScope,
            rookYesterdaySyncManager = yesterdaySyncManager,
        )
        dataSourcesHandler = DataSourcesHandler(flutterPluginBinding.applicationContext, coroutineScope)

        methodChannel = MethodChannel(flutterPluginBinding.binaryMessenger, "rook_sdk_health_connect")
        methodChannel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "enableNativeLogs" -> configurationHandler.onMethodCall(call, result)
            "setConfiguration" -> configurationHandler.onMethodCall(call, result)
            "getUserID" -> configurationHandler.onMethodCall(call, result)
            "initRook" -> configurationHandler.onMethodCall(call, result)
            "updateUserID" -> configurationHandler.onMethodCall(call, result)
            "clearUserID" -> configurationHandler.onMethodCall(call, result)
            "deleteUserFromRook" -> configurationHandler.onMethodCall(call, result)
            "syncUserTimeZone" -> configurationHandler.onMethodCall(call, result)

            "checkAvailability" -> permissionsHandlerLegacy.onMethodCall(call, result)
            "checkPermissions" -> permissionsHandlerLegacy.onMethodCall(call, result)
            "requestPermissions" -> permissionsHandlerLegacy.onMethodCall(call, result)

            "checkHealthConnectAvailability" -> permissionsHandler.onMethodCall(call, result)
            "openHealthConnectSettings" -> permissionsHandler.onMethodCall(call, result)
            "checkHealthConnectPermissions" -> permissionsHandler.onMethodCall(call, result)
            "requestHealthConnectPermissions" -> permissionsHandler.onMethodCall(call, result)
            "checkAndroidPermissions" -> permissionsHandler.onMethodCall(call, result)
            "shouldRequestAndroidPermissions" -> permissionsHandler.onMethodCall(call, result)
            "requestAndroidPermissions" -> permissionsHandler.onMethodCall(call, result)

            "shouldSyncFor" -> helperHandler.onMethodCall(call, result)

            "syncSleepSummary" -> summaryHandler.onMethodCall(call, result)
            "syncBodySummary" -> summaryHandler.onMethodCall(call, result)
            "syncPhysicalSummary" -> summaryHandler.onMethodCall(call, result)
            "syncPendingSummaries" -> summaryHandler.onMethodCall(call, result)

            "syncPhysicalEvents" -> eventHandler.onMethodCall(call, result)
            "syncBloodGlucoseEvents" -> eventHandler.onMethodCall(call, result)
            "syncBloodPressureEvents" -> eventHandler.onMethodCall(call, result)
            "syncBodyMetricsEvents" -> eventHandler.onMethodCall(call, result)
            "syncBodyHeartRateEvents" -> eventHandler.onMethodCall(call, result)
            "syncPhysicalHeartRateEvents" -> eventHandler.onMethodCall(call, result)
            "syncHydrationEvents" -> eventHandler.onMethodCall(call, result)
            "syncNutritionEvents" -> eventHandler.onMethodCall(call, result)
            "syncBodyOxygenationEvents" -> eventHandler.onMethodCall(call, result)
            "syncPhysicalOxygenationEvents" -> eventHandler.onMethodCall(call, result)
            "syncTemperatureEvents" -> eventHandler.onMethodCall(call, result)
            "syncTodayHealthConnectStepsCount" -> eventHandler.onMethodCall(call, result)
            "syncPendingEvents" -> eventHandler.onMethodCall(call, result)

            "isStepsAvailable" -> stepsHandler.onMethodCall(call, result)
            "isBackgroundAndroidStepsActive" -> stepsHandler.onMethodCall(call, result)
            "hasStepsPermissions" -> stepsHandler.onMethodCall(call, result)
            "requestStepsPermissions" -> stepsHandler.onMethodCall(call, result)
            "enableBackgroundAndroidSteps" -> stepsHandler.onMethodCall(call, result)
            "disableBackgroundAndroidSteps" -> stepsHandler.onMethodCall(call, result)
            "syncTodayAndroidStepsCount" -> stepsHandler.onMethodCall(call, result)

            "hasYesterdaySyncAndroidPermissions" -> yesterdaySyncHandler.onMethodCall(call, result)
            "requestYesterdaySyncAndroidPermissions" -> yesterdaySyncHandler.onMethodCall(call, result)
            "hasYesterdaySyncHealthConnectPermissions" -> yesterdaySyncHandler.onMethodCall(call, result)
            "requestYesterdaySyncHealthConnectPermissions" -> yesterdaySyncHandler.onMethodCall(call, result)
            "scheduleYesterdaySync" -> yesterdaySyncHandler.onMethodCall(call, result)

            "getAvailableDataSources" -> dataSourcesHandler.onMethodCall(call, result)
            "presentDataSourceView" -> dataSourcesHandler.onMethodCall(call, result)

            else -> result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel.setMethodCallHandler(null)
        coroutineScope.cancel()
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        try {
            permissionsHandler.setActivity(binding.activity)
        } catch (ignored: Exception) {
            // Ignored
        }
    }

    override fun onDetachedFromActivityForConfigChanges() {
        permissionsHandler.setActivity(null)
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        try {
            permissionsHandler.setActivity(binding.activity)
        } catch (ignored: Exception) {
            // Ignored
        }
    }

    override fun onDetachedFromActivity() {
        permissionsHandler.setActivity(null)
    }
}
