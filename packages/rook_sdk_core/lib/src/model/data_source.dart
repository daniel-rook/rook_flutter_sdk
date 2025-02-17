// ignore_for_file: deprecated_member_use_from_same_package

/// Represents a data source that can be connected to the current user.
///
/// * [name] The name of the data source.
/// * [description] The description of the data source.
/// * [image] The image URL of the data source.
/// * [imageUrl] The image URL of the data source.
/// * [connected] True if the data source is connected, false otherwise.
/// * [authorizationUrl] The URL to authorize the data source. Null if the data source is already connected.
class DataSource {
  String name;
  String description;
  @Deprecated('Use imageUrl instead')
  String image;
  String imageUrl;
  bool connected;
  String? authorizationUrl;

  DataSource(
    this.name,
    this.description,
    this.image,
    this.imageUrl,
    this.connected,
    this.authorizationUrl,
  );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataSource &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          description == other.description &&
          image == other.image &&
          imageUrl == other.imageUrl &&
          connected == other.connected &&
          authorizationUrl == other.authorizationUrl;

  @override
  int get hashCode =>
      name.hashCode ^
      description.hashCode ^
      image.hashCode ^
      imageUrl.hashCode ^
      connected.hashCode ^
      authorizationUrl.hashCode;

  @override
  String toString() {
    return 'DataSource{name: $name, description: $description, image: $image, imageUrl: $imageUrl, connected: $connected, authorizationUrl: $authorizationUrl}';
  }
}
