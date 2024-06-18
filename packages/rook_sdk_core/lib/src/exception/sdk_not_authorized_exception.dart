class SDKNotAuthorizedException implements Exception {
  final String message;

  SDKNotAuthorizedException(this.message);

  @override
  String toString() {
    return 'SDKNotAuthorizedException{message: $message}';
  }
}
