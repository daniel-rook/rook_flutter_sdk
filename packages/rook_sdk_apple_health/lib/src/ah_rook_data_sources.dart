import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class AHRookDataSources {
  AHRookDataSources._();

  /// Returns the available data sources for the current user.
  ///
  /// * [redirectUrl] After the user successfully connects to a data source, the user will be redirected to this URL.
  static Future<List<DataSource>> getAvailableDataSources({
    String? redirectUrl,
  }) {
    return RookSdkAppleHealthPlatform.instance.getAvailableDataSources(
      redirectUrl,
    );
  }

  /// Displays a pre-built screen that allows the users to connect to a data source.
  ///
  /// * [redirectUrl] After the user successfully connects to a data source, the user will be redirected to this URL.
  static Future<void> presentDataSourceView({
    String? redirectUrl,
  }) {
    return RookSdkAppleHealthPlatform.instance.presentDataSourceView(
      redirectUrl,
    );
  }
}
