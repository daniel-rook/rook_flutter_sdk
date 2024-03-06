package com.rookmotion.rook_sdk_health_connect

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import com.rookmotion.rook.sdk.RookHealthPermissionsManager
import com.rookmotion.rook.sdk.domain.enums.HealthPermission

class HealthConnectPermissionsActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_health_connect_permissions)

        val permission = intent.getStringExtra(EXTRA_PERMISSION)!!.let {
            HealthPermission.valueOf(it)
        }

        RookHealthPermissionsManager.registerPermissionsRequestLauncher(
            componentActivity = this,
            onFinished = { finish() }
        )

        RookHealthPermissionsManager.launchPermissionsRequest(permission)
    }

    override fun onDestroy() {
        RookHealthPermissionsManager.unregisterPermissionsRequestLauncher()
        super.onDestroy()
    }

    companion object {
        private const val EXTRA_PERMISSION = "HC_PERMISSION"

        fun launch(context: Context, permission: HealthPermission) {
            val intent = Intent(context, HealthConnectPermissionsActivity::class.java).apply {
                flags = Intent.FLAG_ACTIVITY_NEW_TASK
                putExtra(EXTRA_PERMISSION, permission.name)
            }

            context.startActivity(intent)
        }
    }
}
