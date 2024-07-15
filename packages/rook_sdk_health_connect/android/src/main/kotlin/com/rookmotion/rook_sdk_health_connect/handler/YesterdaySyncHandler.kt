package com.rookmotion.rook_sdk_health_connect.handler

import android.content.Context
import com.rookmotion.rook.sdk.RookYesterdaySyncManager
import com.rookmotion.rook.sdk.RookYesterdaySyncPermissions
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.data.proto.RookConfigurationProto
import com.rookmotion.rook_sdk_health_connect.data.proto.SyncInstructionProto
import com.rookmotion.rook_sdk_health_connect.extension.getBooleanArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getByteArrayArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getIntArgAt
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanError
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanSuccess
import com.rookmotion.rook_sdk_health_connect.mapper.toDomain
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class YesterdaySyncHandler(
    private val context: Context,
    private val coroutineScope: CoroutineScope,
    private val rookYesterdaySyncManager: RookYesterdaySyncManager,
) {

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "hasYesterdaySyncAndroidPermissions" -> {
                try {
                    val hasPermissions = RookYesterdaySyncPermissions.hasAndroidPermissions(
                        context
                    )

                    methodResult.resultBooleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "requestYesterdaySyncAndroidPermissions" -> {
                try {
                    RookYesterdaySyncPermissions.requestAndroidPermissions(context)

                    methodResult.resultBooleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "hasYesterdaySyncHealthConnectPermissions" -> coroutineScope.launch {
                try {
                    val hasPermissions = RookYesterdaySyncPermissions.hasHealthConnectPermissions(
                        context
                    )

                    methodResult.resultBooleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "requestYesterdaySyncHealthConnectPermissions" -> {
                try {
                    RookYesterdaySyncPermissions.requestHealthConnectPermissions(context)

                    methodResult.resultBooleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            "scheduleYesterdaySync" -> coroutineScope.launch {
                try {
                    val enableNativeLogs = methodCall.getBooleanArgAt(0)

                    val rookConfiguration = methodCall.getByteArrayArgAt(1).let {
                        RookConfigurationProto.parseFrom(it).toDomain()
                    }

                    val syncInstruction = methodCall.getIntArgAt(2).let {
                        SyncInstructionProto.forNumber(it).toDomain()
                    }

                    rookYesterdaySyncManager.scheduleYesterdaySync(
                        enableNativeLogs,
                        rookConfiguration.clientUUID,
                        rookConfiguration.secretKey,
                        rookConfiguration.environment,
                        syncInstruction
                    )

                    methodResult.resultBooleanSuccess(true)
                } catch (exception: Exception) {
                    methodResult.resultBooleanError(exception)
                }
            }

            else -> Unit
        }
    }
}
