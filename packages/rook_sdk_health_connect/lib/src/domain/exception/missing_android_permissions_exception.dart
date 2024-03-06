class MissingAndroidPermissionsException implements Exception {
  final String message;

  MissingAndroidPermissionsException(this.message);

  @override
  String toString() {
    return 'MissingAndroidPermissionsException{message: $message}';
  }
}
