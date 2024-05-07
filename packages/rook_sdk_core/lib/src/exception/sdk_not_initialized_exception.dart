/// Exception thrown when the SDK is not initialized.
class SDKNotInitializedException implements Exception {
  final String message;

  SDKNotInitializedException(this.message);

  @override
  String toString() {
    return 'SDKNotInitializedException{message: $message}';
  }
}
