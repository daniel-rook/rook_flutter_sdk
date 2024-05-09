/// Exception thrown when the user has not granted the required permissions for the Health SDK to work.
class MissingPermissionsException implements Exception {
  final String message;

  MissingPermissionsException(this.message);

  @override
  String toString() {
    return 'MissingPermissionsException{message: $message}';
  }
}
