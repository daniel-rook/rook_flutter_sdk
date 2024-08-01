/// Exception thrown when a http request fails.
///
/// [code] The http status code.
/// [error] The error message.
class HttpRequestException implements Exception {
  final int code;
  final String error;

  HttpRequestException(this.code, this.error);

  @override
  String toString() {
    return 'HttpRequestException{code: $code, error: $error}';
  }
}
