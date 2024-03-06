class HttpRequestException implements Exception {
  final String message;
  final int code;

  HttpRequestException(this.message, this.code);

  @override
  String toString() {
    return 'HttpRequestException{message: $message, code: $code}';
  }
}
