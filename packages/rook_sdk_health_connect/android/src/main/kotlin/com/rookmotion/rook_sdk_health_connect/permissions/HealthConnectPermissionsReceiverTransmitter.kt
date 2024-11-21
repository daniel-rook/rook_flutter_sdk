package com.rookmotion.rook_sdk_health_connect.permissions

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.rookmotion.rook.sdk.RookPermissionsManager
import com.rookmotion.rook_sdk_health_connect.proto.HealthConnectPermissionsSummaryProto
import io.flutter.plugin.common.EventChannel

class HealthConnectPermissionsReceiverTransmitter : BroadcastReceiver(), EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    override fun onReceive(context: Context?, intent: Intent?) {
        val dataTypesGranted = intent?.getBooleanExtra(
            /* name = */ RookPermissionsManager.EXTRA_HEALTH_CONNECT_PERMISSIONS_GRANTED,
            /* defaultValue = */ false
        ) ?: false

        val dataTypesPartiallyGranted = intent?.getBooleanExtra(
            /* name = */ RookPermissionsManager.EXTRA_HEALTH_CONNECT_PERMISSIONS_PARTIALLY_GRANTED,
            /* defaultValue = */ false
        ) ?: false

        val bytes = HealthConnectPermissionsSummaryProto.newBuilder()
            .setDataTypesGranted(dataTypesGranted)
            .setDataTypesPartiallyGranted(dataTypesPartiallyGranted)
            .build()
            .toByteArray()

        eventSink?.success(bytes)
    }

    companion object {
        const val EVENT_CHANNEL_NAME = "io.tryrook.permissions.healthconnect"
    }
}
