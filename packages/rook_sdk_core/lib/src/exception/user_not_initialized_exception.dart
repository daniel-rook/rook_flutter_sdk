/// Exception thrown when the user is not initialized.
class UserNotInitializedException implements Exception {
  final String message;

  UserNotInitializedException(this.message);

  @override
  String toString() {
    return 'UserNotInitializedException{message: $message}';
  }
}
