/// Exception thrown when the Health Connect App is not installed on the device.
class HealthConnectNotInstalledException implements Exception {
  final String message;

  HealthConnectNotInstalledException(this.message);

  @override
  String toString() {
    return 'HealthConnectNotInstalledException{message: $message}';
  }
}
