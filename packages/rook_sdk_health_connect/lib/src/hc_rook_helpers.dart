import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_data_type.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookHelpers {
  /// Checks if the provided [HealthDataType] hasn't been synced for the provided [localDate].
  static Future<bool> shouldSyncFor(
    HCHealthDataType hcHealthDataType,
    DateTime date,
  ) {
    return RookSdkHealthConnectPlatform.instance
        .shouldSyncFor(hcHealthDataType, date);
  }
}
