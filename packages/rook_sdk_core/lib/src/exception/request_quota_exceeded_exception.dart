/// Exception thrown when the Health Connect rate limited request quota has been exceeded.
class RequestQuotaExceededException implements Exception {
  final String message;

  RequestQuotaExceededException(this.message);

  @override
  String toString() {
    return 'RequestQuotaExceededException{message: $message}';
  }
}
