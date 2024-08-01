package com.rookmotion.rook_sdk_health_connect.handler

import android.content.Context
import com.rookmotion.rook.sdk.RookHealthPermissionsManager
import com.rookmotion.rook_sdk_health_connect.HealthConnectPermissionsActivity
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.int
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanError
import com.rookmotion.rook_sdk_health_connect.extension.resultBooleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.throwable
import com.rookmotion.rook_sdk_health_connect.mapper.toProto
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
                    val proto = hcAvailabilityStatus.toProto()

                    methodResult.int(proto.number)
                } catch (exception: NullPointerException) {
                    methodResult.throwable(exception)
                }
            }

            "openHealthConnectSettings" -> coroutineScope.launch {
                rookHealthPermissionsManager.openHealthConnectSettings().fold(
                    {
                        methodResult.resultBooleanSuccess(true)
                    },
                    {
                        methodResult.resultBooleanError(it)
                    }
                )
            }

            "checkPermissions" -> coroutineScope.launch {
                rookHealthPermissionsManager.checkPermissions().fold(
                    {
                        methodResult.resultBooleanSuccess(it)
                    },
                    {
                        methodResult.resultBooleanError(it)
                    }
                )
            }

            "requestPermissions" -> {
                try {
                    HealthConnectPermissionsActivity.launch(context)

                    methodResult.resultBooleanSuccess(true)
                } catch (exception: NullPointerException) {
                    methodResult.resultBooleanError(exception)
                }
            }

            else -> Unit
        }
    }
}
