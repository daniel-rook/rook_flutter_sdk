import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class AHRookDataSources {
  AHRookDataSources._();

  /// Returns the available data sources for the current user.
  static Future<List<DataSource>> getAvailableDataSources() {
    return RookSdkAppleHealthPlatform.instance.getAvailableDataSources();
  }

  /// Displays a pre-built screen that allows the users to connect to a data source.
  static Future<void> presentDataSourceView() {
    return RookSdkAppleHealthPlatform.instance.presentDataSourceView();
  }
}