class SDKNotInitializedException implements Exception {
  final String message;

  SDKNotInitializedException(this.message);

  @override
  String toString() {
    return 'SDKNotInitializedException{message: $message}';
  }
}
