/// Represents a data source that can be connected to the current user.
///
/// * [name] The name of the data source.
/// * [description] The description of the data source.
/// * [image] The image URL of the data source.
/// * [connected] True if the data source is connected, false otherwise.
/// * [authorizationUrl] The URL to authorize the data source. Null if the data source is already connected.
class DataSource {
  String name;
  String description;
  String image;
  bool connected;
  String? authorizationUrl;

  DataSource(
    this.name,
    this.description,
    this.image,
    this.connected,
    this.authorizationUrl,
  );

  @override
  String toString() {
    return 'DataSource{name: $name, description: $description, image: $image, connected: $connected, authorizationUrl: $authorizationUrl}';
  }
}
