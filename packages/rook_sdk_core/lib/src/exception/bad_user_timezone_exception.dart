/// Exception thrown when the provided timezone offset is out of range.
class BadUserTimeZoneException implements Exception {
  final String message;

  BadUserTimeZoneException(this.message);

  @override
  String toString() {
    return 'BadUserTimeZoneException{message: $message}';
  }
}
