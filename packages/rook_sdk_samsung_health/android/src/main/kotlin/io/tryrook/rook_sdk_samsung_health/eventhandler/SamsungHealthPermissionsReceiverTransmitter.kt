package io.tryrook.rook_sdk_samsung_health.eventhandler

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import io.flutter.plugin.common.EventChannel
import io.tryrook.rook_sdk_samsung_health.proto.SamsungHealthPermissionsSummaryProto
import io.tryrook.sdk.samsung.domain.enums.SamsungHealthPermission

class SamsungHealthPermissionsReceiverTransmitter : BroadcastReceiver(), EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    override fun onReceive(context: Context?, intent: Intent?) {
        val dataTypesGranted = intent?.getBooleanExtra(
            /* name = */ SamsungHealthPermission.EXTRA_SAMSUNG_HEALTH_PERMISSIONS_GRANTED,
            /* defaultValue = */ false
        ) ?: false

        val dataTypesPartiallyGranted = intent?.getBooleanExtra(
            /* name = */ SamsungHealthPermission.EXTRA_SAMSUNG_HEALTH_PERMISSIONS_PARTIALLY_GRANTED,
            /* defaultValue = */ false
        ) ?: false

        val bytes = SamsungHealthPermissionsSummaryProto.newBuilder()
            .setDataTypesGranted(dataTypesGranted)
            .setDataTypesPartiallyGranted(dataTypesPartiallyGranted)
            .build()
            .toByteArray()

        eventSink?.success(bytes)
    }

    companion object {
        const val EVENT_CHANNEL_NAME = "io.tryrook.permissions.samsunghealth"
    }
}
