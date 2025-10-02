package com.rookmotion.rook_sdk_health_connect.handler

import android.content.Context
import com.rookmotion.rook.sdk.RookDataSources
import com.rookmotion.rook_sdk_health_connect.MethodResult
import com.rookmotion.rook_sdk_health_connect.extension.dataSourcesError
import com.rookmotion.rook_sdk_health_connect.extension.dataSourcesSuccess
import com.rookmotion.rook_sdk_health_connect.extension.getStringArgAt
import com.rookmotion.rook_sdk_health_connect.extension.getStringNullableArgAt
import com.rookmotion.rook_sdk_health_connect.result.authorizedDataSourceV2Error
import com.rookmotion.rook_sdk_health_connect.result.authorizedDataSourceV2Success
import com.rookmotion.rook_sdk_health_connect.result.authorizedDataSourcesError
import com.rookmotion.rook_sdk_health_connect.result.authorizedDataSourcesSuccess
import com.rookmotion.rook_sdk_health_connect.result.booleanError
import com.rookmotion.rook_sdk_health_connect.result.booleanSuccess
import com.rookmotion.rook_sdk_health_connect.result.dataSourceAuthorizerError
import com.rookmotion.rook_sdk_health_connect.result.dataSourceAuthorizerSuccess
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

            "getDataSourceAuthorizer" -> coroutineScope.launch {
                val dataSource = methodCall.getStringArgAt(0)
                val redirectUrl = methodCall.getStringNullableArgAt(1)

                rookDataSources.getDataSourceAuthorizer(dataSource, redirectUrl).fold(
                    {
                        methodResult.dataSourceAuthorizerSuccess(it)
                    },
                    {
                        methodResult.dataSourceAuthorizerError(it)
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

            "getAuthorizedDataSourcesV2" -> coroutineScope.launch {
                rookDataSources.getAuthorizedDataSourcesV2().fold(
                    {
                        methodResult.authorizedDataSourceV2Success(it)
                    },
                    {
                        methodResult.authorizedDataSourceV2Error(it)
                    }
                )
            }

            "revokeDataSource" -> coroutineScope.launch {
                val dataSource = methodCall.getStringArgAt(0)

                rookDataSources.revokeDataSource(dataSource).fold(
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
