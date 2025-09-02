/// Exception thrown when the version of Samsung Health installed on the device is too old
/// and does not support the requested functionality.
class SamsungHealthOutdatedException implements Exception {
  final String message;

  SamsungHealthOutdatedException(this.message);

  @override
  String toString() {
    return 'SamsungHealthOutdatedException{message: $message}';
  }
}
