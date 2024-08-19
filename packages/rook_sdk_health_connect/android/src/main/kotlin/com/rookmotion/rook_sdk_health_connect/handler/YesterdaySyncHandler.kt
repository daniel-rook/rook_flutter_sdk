package com.rookmotion.rook_sdk_health_connect.handler

import android.content.Context
import com.rookmotion.rook.sdk.RookYesterdaySyncManager
import com.rookmotion.rook.sdk.RookYesterdaySyncPermissions
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.proto.RookConfigurationProto
import com.rookmotion.rook_sdk_health_connect.proto.SyncInstructionProto
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getBooleanArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getByteArrayArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getIntArgAt
import com.rookmotion.rook_sdk_health_connect.mapper.toRookConfiguration
import com.rookmotion.rook_sdk_health_connect.mapper.toSyncInstruction
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

                    methodResult.booleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "requestYesterdaySyncAndroidPermissions" -> {
                try {
                    RookYesterdaySyncPermissions.requestAndroidPermissions(context)

                    methodResult.booleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "hasYesterdaySyncHealthConnectPermissions" -> coroutineScope.launch {
                try {
                    val hasPermissions = RookYesterdaySyncPermissions.hasHealthConnectPermissions(
                        context
                    )

                    methodResult.booleanSuccess(hasPermissions)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "requestYesterdaySyncHealthConnectPermissions" -> {
                try {
                    RookYesterdaySyncPermissions.requestHealthConnectPermissions(context)

                    methodResult.booleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            "scheduleYesterdaySync" -> coroutineScope.launch {
                try {
                    val enableNativeLogs = methodCall.getBooleanArgAt(0)

                    val rookConfiguration = methodCall.getByteArrayArgAt(1).let {
                        RookConfigurationProto.parseFrom(it).toRookConfiguration()
                    }

                    rookYesterdaySyncManager.scheduleYesterdaySync(
                        enableNativeLogs,
                        rookConfiguration.clientUUID,
                        rookConfiguration.secretKey,
                        rookConfiguration.environment,
                    )

                    methodResult.booleanSuccess(true)
                } catch (exception: Exception) {
                    methodResult.booleanError(exception)
                }
            }

            else -> Unit
        }
    }
}
