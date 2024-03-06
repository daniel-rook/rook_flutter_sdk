class MissingPermissionsException implements Exception {
  final String message;

  MissingPermissionsException(this.message);

  @override
  String toString() {
    return 'MissingPermissionsException{message: $message}';
  }
}
