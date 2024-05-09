import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

class HCRookDataSources {
  HCRookDataSources._();

  /// Returns the available data sources for the current user.
  static Future<List<DataSource>> getAvailableDataSources() {
    return RookSdkHealthConnectPlatform.instance.getAvailableDataSources();
  }

  /// Displays a pre-built screen that allows the users to connect to a data source.
  static Future<void> presentDataSourceView() {
    return RookSdkHealthConnectPlatform.instance.presentDataSourceView();
  }
}
