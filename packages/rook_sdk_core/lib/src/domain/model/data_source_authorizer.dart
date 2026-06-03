/// Represents a data source that can be connected to the current user.
///
/// * [dataSource] The name of the data source.
/// * [authorized] True if the data source is connected, false otherwise.
/// * [authorizationUrl] The URL to authorize the data source. Null if the data source is already connected.
class DataSourceAuthorizer {
  String dataSource;
  bool authorized;
  String? authorizationUrl;

  DataSourceAuthorizer({
    required this.dataSource,
    required this.authorized,
    required this.authorizationUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataSourceAuthorizer &&
          runtimeType == other.runtimeType &&
          dataSource == other.dataSource &&
          authorized == other.authorized &&
          authorizationUrl == other.authorizationUrl;

  @override
  int get hashCode =>
      dataSource.hashCode ^ authorized.hashCode ^ authorizationUrl.hashCode;

  @override
  String toString() {
    return 'DataSourceAuthorizer{dataSource: $dataSource, authorized: $authorized, authorizationUrl: $authorizationUrl}';
  }
}
