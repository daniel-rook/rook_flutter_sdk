package com.rookmotion.rook_sdk_health_connect.handler

import com.rookmotion.rook.sdk.RookHelpers
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.data.proto.HealthDataTypeProto
import com.rookmotion.rook_sdk_health_connect.extension.getIntArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getLongArgAt
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanError
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.toLocalDate
import com.rookmotion.rook_sdk_health_connect.mapper.toDomain
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import java.time.Instant

class HelperHandler(private val coroutineScope: CoroutineScope) {

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "shouldSyncFor" -> coroutineScope.launch {
                val healthDataType = methodCall.getIntArgAt(0).let {
                    HealthDataTypeProto.forNumber(it).toDomain()
                }

                val localDate = methodCall.getLongArgAt(1).let {
                    Instant.ofEpochMilli(it).toLocalDate()
                }

                RookHelpers.shouldSyncFor(healthDataType, localDate).fold(
                    {
                        methodResult.resultBooleanSuccess(it)
                    },
                    {
                        methodResult.resultBooleanError(it)
                    }
                )
            }
        }
    }
}
