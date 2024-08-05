package com.rookmotion.rook_sdk_health_connect.handler

import android.content.Context
import com.rookmotion.rook.sdk.RookHealthPermissionsManager
import com.rookmotion.rook_sdk_health_connect.HealthConnectPermissionsActivity
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.int
import com.rookmotion.rook_sdk_health_connect.extension.throwable
import com.rookmotion.rook_sdk_health_connect.mapper.toAvailabilityStatusProto
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

@Deprecated(message = "Will be deleted in next VERSION release")
class PermissionsHandlerLegacy(
    private val context: Context,
    private val coroutineScope: CoroutineScope,
    private val rookHealthPermissionsManager: RookHealthPermissionsManager,
) {

    @Deprecated(message = "Will be deleted in next VERSION release")
    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "checkAvailability" -> {
                try {
                    val hcAvailabilityStatus = RookHealthPermissionsManager.checkAvailability(context)
                    val proto = hcAvailabilityStatus.toAvailabilityStatusProto()

                    methodResult.int(proto.number)
                } catch (exception: NullPointerException) {
                    methodResult.throwable(exception)
                }
            }

            "openHealthConnectSettings" -> coroutineScope.launch {
                rookHealthPermissionsManager.openHealthConnectSettings().fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "checkPermissions" -> coroutineScope.launch {
                rookHealthPermissionsManager.checkPermissions().fold(
                    {
                        methodResult.booleanSuccess(it)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "requestPermissions" -> {
                try {
                    HealthConnectPermissionsActivity.launch(context)

                    methodResult.booleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.booleanError(exception)
                }
            }

            else -> Unit
        }
    }
}
