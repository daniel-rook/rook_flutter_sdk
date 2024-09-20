import 'package:rook_sdk_health_connect/src/domain/enums/hc_health_data_type.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookHelpers {
  HCRookHelpers._();

  /// Checks if the provided [HealthDataType] hasn't been synced for the provided [localDate].
  @Deprecated(
    "No longer necessary, RookSummaryManager and RookEventManager already handle this",
  )
  static Future<bool> shouldSyncFor(
    HCHealthDataType hcHealthDataType,
    DateTime date,
  ) {
    return RookSdkHealthConnectPlatform.instance.shouldSyncFor(
      hcHealthDataType,
      date,
    );
  }
}
