package io.tryrook.rook_flutter_sdk

import android.os.Build
import android.os.Bundle
import androidx.lifecycle.Lifecycle
import com.rookmotion.rook.sdk.domain.enums.SyncInstruction
import com.rookmotion.rook.sdk.framework.delegate.rookYesterdaySync
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity() {

    private val rookYesterdaySync by rookYesterdaySync(
        enableLogs = isDebug,
        clientUUID = clientUUID,
        secretKey = secretKey,
        environment = rookEnvironment,
        doOnEnd = SyncInstruction.NOTHING,
        state = Lifecycle.State.CREATED,
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        // Must be before super.onCreate(savedInstanceState)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
//            rookYesterdaySync.enable(this)
        }

        super.onCreate(savedInstanceState)
    }
}
