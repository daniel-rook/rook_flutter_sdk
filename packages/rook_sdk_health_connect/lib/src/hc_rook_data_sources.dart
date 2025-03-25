import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

/// Helper class used to manage the data sources of the current user.
class HCRookDataSources {
  HCRookDataSources._();

  /// Returns the available data sources for the current user.
  ///
  /// * [redirectUrl] After the user successfully connects to a data source, the user will be redirected to this URL.
  @Deprecated(
    "It is recommended to query individual authorizations using getDataSourceAuthorizer to get a more efficient and scalable solution, reducing unnecessary data retrieval",
  )
  static Future<List<DataSource>> getAvailableDataSources({
    String? redirectUrl,
  }) {
    return RookSdkHealthConnectPlatform.instance.getAvailableDataSources(
      redirectUrl,
    );
  }

  /// Returns a [DataSourceAuthorizer] of a specific data source for the current user.
  ///
  /// * If the user is not authorized, an [DataSourceAuthorizer.authorizationUrl] is provided,
  /// otherwise [DataSourceAuthorizer.authorizationUrl] will be null.
  ///
  /// [dataSource] The data source type. Allowed values: Garmin, Oura, Polar, Fitbit, Withings, Whoop, Dexcom.
  /// [redirectUrl] After the user successfully connects to a data source, the user will be redirected to this URL.
  static Future<DataSourceAuthorizer> getDataSourceAuthorizer(
    String dataSource, {
    String? redirectUrl,
  }) {
    return RookSdkHealthConnectPlatform.instance.getDataSourceAuthorizer(
      dataSource,
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
  /// [dataSource] The data source type. Allowed values: Garmin, Oura, Polar, Fitbit, Withings, Whoop.
  static Future<void> revokeDataSource(String dataSource) {
    return RookSdkHealthConnectPlatform.instance.revokeDataSource(
      dataSource,
    );
  }

  /// Displays a pre-built screen that allows the users to connect to a data source.
  ///
  /// * [redirectUrl] After the user successfully connects to a data source, the user will be redirected to this URL.
  @Deprecated(
    "It is recommended to query individual authorizations using getDataSourceAuthorizer to get a more efficient and scalable solution, reducing unnecessary data retrieval",
  )
  static Future<void> presentDataSourceView({
    String? redirectUrl,
  }) {
    return RookSdkHealthConnectPlatform.instance.presentDataSourceView(
      redirectUrl,
    );
  }
}
