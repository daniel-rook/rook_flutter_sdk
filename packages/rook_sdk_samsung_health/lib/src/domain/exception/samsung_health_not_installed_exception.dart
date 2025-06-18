/// Exception indicating that Samsung Health is not installed on the device.
class SamsungHealthNotInstalledException implements Exception {
  final String message;

  SamsungHealthNotInstalledException(this.message);

  @override
  String toString() {
    return 'SamsungHealthNotInstalledException{message: $message}';
  }
}
