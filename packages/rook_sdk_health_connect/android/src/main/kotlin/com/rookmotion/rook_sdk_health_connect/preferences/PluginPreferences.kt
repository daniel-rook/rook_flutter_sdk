package com.rookmotion.rook_sdk_health_connect.preferences

import android.content.Context

class PluginPreferences(context: Context) {

    private val preferences = context.getSharedPreferences("plugin_preferences", Context.MODE_PRIVATE)

    fun setEnableBackground(enableBackground: Boolean) {
        preferences.edit().putBoolean(ENABLE_BACKGROUND_KEY, enableBackground).apply()
    }

    fun getEnableBackground(): Boolean {
        return preferences.getBoolean(ENABLE_BACKGROUND_KEY, false)
    }

    fun setEnableNativeLogs(enableNativeLogs: Boolean) {
        preferences.edit().putBoolean(ENABLE_NATIVE_LOGS_KEY, enableNativeLogs).apply()
    }

    fun getEnableNativeLogs(): Boolean {
        return preferences.getBoolean(ENABLE_NATIVE_LOGS_KEY, false)
    }
}

private const val ENABLE_BACKGROUND_KEY = "enable_background"
private const val ENABLE_NATIVE_LOGS_KEY = "enable_native_logs"
