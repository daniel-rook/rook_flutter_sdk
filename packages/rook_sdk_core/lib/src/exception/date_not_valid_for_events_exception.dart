/// Exception thrown when the provided date is not valid for events extraction.
class DateNotValidForEventsException implements Exception {
  final String message;

  DateNotValidForEventsException(this.message);

  @override
  String toString() {
    return 'DateNotValidForEventsException{message: $message}';
  }
}
