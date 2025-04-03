package com.rookmotion.rook_sdk_health_connect.eventhandler

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.rookmotion.rook.sdk.RookPermissionsManager
import com.rookmotion.rook_sdk_health_connect.proto.AndroidPermissionsSummaryProto
import io.flutter.plugin.common.EventChannel

class AndroidPermissionsReceiverTransmitter : BroadcastReceiver(), EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    override fun onReceive(context: Context?, intent: Intent?) {
        val permissionsGranted = intent?.getBooleanExtra(
            /* name = */ RookPermissionsManager.EXTRA_ANDROID_PERMISSIONS_GRANTED,
            /* defaultValue = */ false
        ) ?: false

        val dialogDisplayed = intent?.getBooleanExtra(
            /* name = */ RookPermissionsManager.EXTRA_ANDROID_PERMISSIONS_DIALOG_DISPLAYED,
            /* defaultValue = */ false
        ) ?: false

        val bytes = AndroidPermissionsSummaryProto.newBuilder()
            .setPermissionsGranted(permissionsGranted)
            .setDialogDisplayed(dialogDisplayed)
            .build()
            .toByteArray()

        eventSink?.success(bytes)
    }

    companion object {
        const val EVENT_CHANNEL_NAME = "io.tryrook.permissions.android"
    }
}
