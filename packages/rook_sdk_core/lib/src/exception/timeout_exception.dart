/// Exception thrown when an http request could not be completed due to a timeout.
class ConnectTimeoutException implements Exception {
  final String message;

  ConnectTimeoutException(this.message);

  @override
  String toString() {
    return 'TimeoutException{message: $message}';
  }
}
