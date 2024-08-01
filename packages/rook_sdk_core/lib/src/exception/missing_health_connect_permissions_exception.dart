/// Exception thrown when the user has not granted the required permissions to use Health Connect.
class MissingHealthConnectPermissionsException implements Exception {
  final String message;

  MissingHealthConnectPermissionsException(this.message);

  @override
  String toString() {
    return 'MissingHealthConnectPermissionsException{message: $message}';
  }
}
