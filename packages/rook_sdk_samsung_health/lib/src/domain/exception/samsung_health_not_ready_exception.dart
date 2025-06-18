/// Exception thrown when Samsung Health is installed but not yet ready for use.
/// This typically means the user hasn't completed the initial setup process,
/// such as agreeing to the Terms and Conditions.
class SamsungHealthNotReadyException implements Exception {
  final String message;

  SamsungHealthNotReadyException(this.message);

  @override
  String toString() {
    return 'SamsungHealthNotReadyException{message: $message}';
  }
}
