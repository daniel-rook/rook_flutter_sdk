/// Exception thrown when the current device is not supported.
class DeviceNotSupportedException implements Exception {
  final String message;

  DeviceNotSupportedException(this.message);

  @override
  String toString() {
    return 'DeviceNotSupportedException{message: $message}';
  }
}
