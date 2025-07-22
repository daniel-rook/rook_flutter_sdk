package io.tryrook.rook_sdk_samsung_health

import android.annotation.SuppressLint
import android.content.IntentFilter
import android.util.Log
import androidx.core.content.ContextCompat
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.tryrook.rook_sdk_samsung_health.eventhandler.IsScheduledTransmitter
import io.tryrook.rook_sdk_samsung_health.eventhandler.SamsungHealthPermissionsReceiverTransmitter
import io.tryrook.rook_sdk_samsung_health.handler.BackgroundSyncHandler
import io.tryrook.rook_sdk_samsung_health.handler.ConfigurationHandler
import io.tryrook.rook_sdk_samsung_health.handler.PermissionsHandler
import io.tryrook.rook_sdk_samsung_health.handler.SyncHandler
import io.tryrook.sdk.samsung.RookSamsung
import io.tryrook.sdk.samsung.domain.enums.SamsungHealthPermission
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel

/** RookSdkSamsungHealthPlugin */
class RookSdkSamsungHealthPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var methodChannel: MethodChannel
    private lateinit var coroutineScope: CoroutineScope

    private lateinit var rookSamsung: RookSamsung

    private lateinit var configurationHandler: ConfigurationHandler
    private lateinit var permissionsHandler: PermissionsHandler
    private lateinit var syncHandler: SyncHandler
    private lateinit var backgroundSyncHandler: BackgroundSyncHandler

    private lateinit var samsungHealthPermissionsEventChannel: EventChannel
    private lateinit var isScheduledEventChannel: EventChannel

    private val samsungHealthPermissions = SamsungHealthPermissionsReceiverTransmitter()
    private lateinit var isScheduled: IsScheduledTransmitter

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        coroutineScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

        rookSamsung = RookSamsung(flutterPluginBinding.applicationContext)

        configurationHandler = ConfigurationHandler(
            coroutineScope = coroutineScope,
            rookSamsung = rookSamsung,
            onSDKInitialized = { enableAutoSync(it) }
        )
        permissionsHandler = PermissionsHandler(coroutineScope, rookSamsung)
        syncHandler = SyncHandler(coroutineScope, rookSamsung)
        backgroundSyncHandler = BackgroundSyncHandler(coroutineScope, rookSamsung)

        isScheduled = IsScheduledTransmitter(coroutineScope, rookSamsung)

        samsungHealthPermissionsEventChannel = EventChannel(
            flutterPluginBinding.binaryMessenger,
            SamsungHealthPermissionsReceiverTransmitter.EVENT_CHANNEL_NAME
        )
        isScheduledEventChannel = EventChannel(
            flutterPluginBinding.binaryMessenger,
            IsScheduledTransmitter.EVENT_CHANNEL_NAME
        )

        samsungHealthPermissionsEventChannel.setStreamHandler(samsungHealthPermissions)
        isScheduledEventChannel.setStreamHandler(isScheduled)

        ContextCompat.registerReceiver(
            flutterPluginBinding.applicationContext,
            samsungHealthPermissions,
            IntentFilter(SamsungHealthPermission.ACTION_SAMSUNG_HEALTH_PERMISSIONS),
            ContextCompat.RECEIVER_EXPORTED,
        )

        methodChannel = MethodChannel(flutterPluginBinding.binaryMessenger, "rook_sdk_samsung_health")
        methodChannel.setMethodCallHandler(this)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "enableNativeLogs" -> configurationHandler.onMethodCall(call, result)
            "getUserID" -> configurationHandler.onMethodCall(call, result)
            "initRook" -> configurationHandler.onMethodCall(call, result)
            "updateUserID" -> configurationHandler.onMethodCall(call, result)
            "clearUserID" -> configurationHandler.onMethodCall(call, result)
            "deleteUserFromRook" -> configurationHandler.onMethodCall(call, result)
            "syncUserTimeZone" -> configurationHandler.onMethodCall(call, result)

            "checkSamsungHealthAvailability" -> permissionsHandler.onMethodCall(call, result)
            "checkSamsungHealthPermissions" -> permissionsHandler.onMethodCall(call, result)
            "checkSamsungHealthPermissionsPartially" -> permissionsHandler.onMethodCall(call, result)
            "requestSamsungHealthPermissions" -> permissionsHandler.onMethodCall(call, result)

            "syncHistoricSummaries" -> syncHandler.onMethodCall(call, result)
            "syncSummariesByDate" -> syncHandler.onMethodCall(call, result)
            "syncByDateAndSummary" -> syncHandler.onMethodCall(call, result)
            "syncByDateAndEvent" -> syncHandler.onMethodCall(call, result)
            "getTodayStepsCount" -> syncHandler.onMethodCall(call, result)
            "getTodayCaloriesCount" -> syncHandler.onMethodCall(call, result)

            "isScheduled" -> backgroundSyncHandler.onMethodCall(call, result)
            "schedule" -> backgroundSyncHandler.onMethodCall(call, result)
            "cancel" -> backgroundSyncHandler.onMethodCall(call, result)

            else -> result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel.setMethodCallHandler(null)

        binding.applicationContext.unregisterReceiver(samsungHealthPermissions)

        samsungHealthPermissionsEventChannel.setStreamHandler(null)
        isScheduledEventChannel.setStreamHandler(null)

        coroutineScope.cancel()
    }

    @SuppressLint("MissingPermission", "LogNotTimber")
    private suspend fun enableAutoSync(configuration: AutoSyncConfiguration) {
        Log.i("AutoSync", "Verifying auto sync acceptation...")

        if (!configuration.enableBackgroundSync) {
            return
        }

        Log.i("AutoSync", "Verifying user session...")

        // Check if user is logged in
        rookSamsung.getUserID() ?: return

        Log.i("AutoSync", "Starting samsung background sync...")
        rookSamsung.schedule(configuration.enableNativeLogs)
    }
}
