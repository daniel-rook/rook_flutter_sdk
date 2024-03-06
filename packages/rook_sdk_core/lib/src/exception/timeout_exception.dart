class ConnectTimeoutException implements Exception {
  final String message;

  ConnectTimeoutException(this.message);

  @override
  String toString() {
    return 'TimeoutException{message: $message}';
  }
}
