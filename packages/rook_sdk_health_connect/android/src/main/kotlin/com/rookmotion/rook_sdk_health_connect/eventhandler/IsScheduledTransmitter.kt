@file:OptIn(ExperimentalRookApi::class)

package com.rookmotion.rook_sdk_health_connect.eventhandler

import com.rookmotion.rook.sdk.RookBackgroundSyncManager
import com.rookmotion.rook.sdk.domain.annotation.ExperimentalRookApi
import io.flutter.plugin.common.EventChannel
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class IsScheduledTransmitter(
    private val coroutineScope: CoroutineScope,
    private val backgroundSyncManager: RookBackgroundSyncManager,
) : EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null
    private var isScheduledJob: Job? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        if (eventSink != null) {
            throw IllegalStateException("EventSink is already attached")
        }

        eventSink = events

        isScheduledJob = coroutineScope.launch {
            backgroundSyncManager.isScheduledFlow().collectLatest {
                withContext(Dispatchers.Main) {
                    eventSink?.success(it)
                }
            }
        }
    }

    override fun onCancel(arguments: Any?) {
        isScheduledJob?.cancel()
        isScheduledJob = null
        eventSink = null
    }

    companion object {
        const val EVENT_CHANNEL_NAME = "io.tryrook.background.healthconnect.scheduled"
    }
}
