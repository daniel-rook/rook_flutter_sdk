class HealthConnectNotInstalledException implements Exception {
  final String message;

  HealthConnectNotInstalledException(this.message);

  @override
  String toString() {
    return 'HealthConnectNotInstalledException{message: $message}';
  }
}
