package com.rookmotion.rook_sdk_health_connect

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import com.rookmotion.rook.sdk.RookHealthPermissionsManager

class HealthConnectPermissionsActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_health_connect_permissions)

        RookHealthPermissionsManager.registerPermissionsRequestLauncher(
            componentActivity = this,
            onFinished = { finish() }
        )

        RookHealthPermissionsManager.launchPermissionsRequest()
    }

    override fun onDestroy() {
        RookHealthPermissionsManager.unregisterPermissionsRequestLauncher()
        super.onDestroy()
    }

    companion object {
        fun launch(context: Context) {
            val intent = Intent(context, HealthConnectPermissionsActivity::class.java).apply {
                flags = Intent.FLAG_ACTIVITY_NEW_TASK
            }

            context.startActivity(intent)
        }
    }
}
