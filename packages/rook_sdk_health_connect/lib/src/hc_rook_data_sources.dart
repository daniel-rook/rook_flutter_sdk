import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

/// Helper class used to manage the data sources of the current user.
class HCRookDataSources {
  HCRookDataSources._();

  /// Returns the available data sources for the current user.
  ///
  /// * [redirectUrl] After the user successfully connects to a data source, the user will be redirected to this URL.
  static Future<List<DataSource>> getAvailableDataSources({
    String? redirectUrl,
  }) {
    return RookSdkHealthConnectPlatform.instance.getAvailableDataSources(
      redirectUrl,
    );
  }

  /// Returns the authorized data sources for the current user.
  ///
  ///  Please note that this only represents the user authorization status,
  ///  and not whether the data source is currently active (sending data) or not.
  static Future<AuthorizedDataSources> getAuthorizedDataSources() {
    return RookSdkHealthConnectPlatform.instance.getAuthorizedDataSources();
  }

  /// Unlinks (revoke authorization) from a data source for the current user.
  ///
  /// [dataSourceType] The type of the data source to revoke.
  static Future<void> revokeDataSource(DataSourceType dataSourceType) {
    return RookSdkHealthConnectPlatform.instance.revokeDataSource(
      dataSourceType,
    );
  }

  /// Displays a pre-built screen that allows the users to connect to a data source.
  ///
  /// * [redirectUrl] After the user successfully connects to a data source, the user will be redirected to this URL.
  static Future<void> presentDataSourceView({
    String? redirectUrl,
  }) {
    return RookSdkHealthConnectPlatform.instance.presentDataSourceView(
      redirectUrl,
    );
  }
}
