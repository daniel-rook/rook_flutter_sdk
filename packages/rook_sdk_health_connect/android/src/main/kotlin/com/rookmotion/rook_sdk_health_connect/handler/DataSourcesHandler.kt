package com.rookmotion.rook_sdk_health_connect.handler

import android.content.Context
import com.rookmotion.rook.sdk.RookDataSources
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.authorizedDataSourcesError
import com.rookmotion.rook_sdk_health_connect.extension.authorizedDataSourcesSuccess
import com.rookmotion.rook_sdk_health_connect.extension.booleanError
import com.rookmotion.rook_sdk_health_connect.extension.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.extension.dataSourcesError
import com.rookmotion.rook_sdk_health_connect.extension.dataSourcesSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getIntArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getStringNullableArgAt
import com.rookmotion.rook_sdk_health_connect.mapper.toDataSourceType
import com.rookmotion.rook_sdk_health_connect.proto.DataSourceTypeProto
import io.flutter.plugin.common.MethodCall
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch

class DataSourcesHandler(context: Context, private val coroutineScope: CoroutineScope) {

    private val rookDataSources = RookDataSources(context)

    fun onMethodCall(methodCall: MethodCall, methodResult: MethodResult) {
        when (methodCall.method) {
            "getAvailableDataSources" -> coroutineScope.launch {
                val redirectUrl = methodCall.getStringNullableArgAt(0)

                rookDataSources.getAvailableDataSources(redirectUrl = redirectUrl).fold(
                    {
                        methodResult.dataSourcesSuccess(it)
                    },
                    {
                        methodResult.dataSourcesError(it)
                    }
                )
            }

            "getAuthorizedDataSources" -> coroutineScope.launch {
                rookDataSources.getAuthorizedDataSources().fold(
                    {
                        methodResult.authorizedDataSourcesSuccess(it)
                    },
                    {
                        methodResult.authorizedDataSourcesError(it)
                    }
                )
            }

            "revokeDataSource" -> coroutineScope.launch {
                val dataSourceType = methodCall.getIntArgAt(0).let {
                    DataSourceTypeProto.forNumber(it).toDataSourceType()
                }

                rookDataSources.revokeDataSource(dataSourceType).fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            "presentDataSourceView" -> coroutineScope.launch {
                val redirectUrl = methodCall.getStringNullableArgAt(0)

                rookDataSources.presentDataSourceView(redirectUrl = redirectUrl).fold(
                    {
                        methodResult.booleanSuccess(true)
                    },
                    {
                        methodResult.booleanError(it)
                    }
                )
            }

            else -> Unit
        }
    }
}
