class RequestQuotaExceededException implements Exception {
  final String message;

  RequestQuotaExceededException(this.message);

  @override
  String toString() {
    return 'RequestQuotaExceededException{message: $message}';
  }
}
