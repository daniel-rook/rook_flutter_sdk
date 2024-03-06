class DeviceNotSupportedException implements Exception {
  final String message;

  DeviceNotSupportedException(this.message);

  @override
  String toString() {
    return 'DeviceNotSupportedException{message: $message}';
  }
}
