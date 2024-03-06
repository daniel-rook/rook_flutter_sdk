class NotAuthorizedException implements Exception {
  final String message;

  NotAuthorizedException(this.message);

  @override
  String toString() {
    return 'NotAuthorizedException{message: $message}';
  }
}
