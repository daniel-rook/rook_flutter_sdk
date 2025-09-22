// ignore_for_file: deprecated_member_use_from_same_package

/// Represents a data source that can be connected to the current user.
///
/// * [name] The name of the data source.
/// * [authorized] True if the data source is connected, false otherwise.
/// * [imageUrl] The image URL of the data source.
class AuthorizedDataSourceV2 {
  String name;
  bool authorized;
  String imageUrl;

  AuthorizedDataSourceV2({
    required this.name,
    required this.authorized,
    required this.imageUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorizedDataSourceV2 &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          authorized == other.authorized &&
          imageUrl == other.imageUrl;

  @override
  int get hashCode => name.hashCode ^ authorized.hashCode ^ imageUrl.hashCode;

  @override
  String toString() {
    return 'AuthorizedDataSourceV2{name: $name, authorized: $authorized, imageUrl: $imageUrl}';
  }
}
