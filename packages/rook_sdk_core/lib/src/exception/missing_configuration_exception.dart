class MissingConfigurationException implements Exception {
  final String message;

  MissingConfigurationException(this.message);

  @override
  String toString() {
    return 'MissingConfigurationException{message: $message}';
  }
}
