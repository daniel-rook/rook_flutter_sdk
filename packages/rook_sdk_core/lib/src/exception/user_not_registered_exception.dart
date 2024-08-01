/// Exception thrown when the user could not be registered in ROOK API.
class UserNotRegisteredException implements Exception {
  final String message;

  UserNotRegisteredException(this.message);

  @override
  String toString() {
    return 'UserNotRegisteredException{message: $message}';
  }
}
