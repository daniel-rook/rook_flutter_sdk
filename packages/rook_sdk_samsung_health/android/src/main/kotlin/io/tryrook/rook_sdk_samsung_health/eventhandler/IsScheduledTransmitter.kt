@file:OptIn(ExperimentalRookSamsungApi::class)

package io.tryrook.rook_sdk_samsung_health.eventhandler

import io.flutter.plugin.common.EventChannel
import io.tryrook.sdk.samsung.RookSamsung
import io.tryrook.sdk.samsung.domain.annotation.ExperimentalRookSamsungApi
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class IsScheduledTransmitter(
    private val coroutineScope: CoroutineScope,
    private val rookSamsung: RookSamsung,
) : EventChannel.StreamHandler {
    private var eventSink: EventChannel.EventSink? = null
    private var isScheduledJob: Job? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        if (eventSink != null) {
            throw IllegalStateException("EventSink is already attached")
        }

        eventSink = events

        isScheduledJob = coroutineScope.launch {
            rookSamsung.isScheduledFlow().collectLatest {
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
        const val EVENT_CHANNEL_NAME = "io.tryrook.background.samsung.scheduled"
    }
}
