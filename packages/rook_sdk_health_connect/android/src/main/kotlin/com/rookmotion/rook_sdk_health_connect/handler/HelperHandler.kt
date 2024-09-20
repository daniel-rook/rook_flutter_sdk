package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookHelpers
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getIntArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.toLocalDate
import com.rookmotion.rook_sdk_health_connect.mapper.toHealthDataType
import com.rookmotion.rook_sdk_health_connect.proto.HealthDataTypeProto
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import java.time.Instant

class HelperHandler(private val coroutineScope: CoroutineScope) {

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "shouldSyncFor" -> coroutineScope.launch {
                val healthDataType = methodCall.getIntArgAt(0).let {
                    HealthDataTypeProto.forNumber(it).toHealthDataType()
                }

                val localDate = methodCall.getLongArgAt(1).let {
                    Instant.ofEpochMilli(it).toLocalDate()
                }

                RookHelpers.shouldSyncFor(healthDataType, localDate).fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }
        }
    }
}
