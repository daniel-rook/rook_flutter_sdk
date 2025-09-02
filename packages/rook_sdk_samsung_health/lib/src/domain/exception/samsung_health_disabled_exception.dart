/// Exception thrown when Samsung Health is installed but disabled.
///
/// This exception indicates that the Samsung Health application is present on the device,
/// but its functionality is currently deactivated by the user or system settings.
class SamsungHealthDisabledException implements Exception {
  final String message;

  SamsungHealthDisabledException(this.message);

  @override
  String toString() {
    return 'SamsungHealthDisabledException{message: $message}';
  }
}
