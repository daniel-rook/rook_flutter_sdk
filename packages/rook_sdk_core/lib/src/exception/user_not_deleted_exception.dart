/// Exception thrown when a user could not be deleted from ROOK servers.
class UserNotDeletedException implements Exception {
  final String message;

  UserNotDeletedException(this.message);

  @override
  String toString() {
    return 'UserNotDeletedException{message: $message}';
  }
}
