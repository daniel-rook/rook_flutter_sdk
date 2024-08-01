/// Exception thrown when the provided date is not valid for summaries extraction.
class DateNotValidForSummariesException implements Exception {
  final String message;

  DateNotValidForSummariesException(this.message);

  @override
  String toString() {
    return 'DateNotValidForEventsException{message: $message}';
  }
}
