import 'dart:convert';

String getBasicAuthFromCredentials({
  required String username,
  required String password,
}) {
  final valueToEncode = '$username:$password';

  final bytes = utf8.encode(valueToEncode);
  final base64String = base64.encode(bytes);

  return 'Basic $base64String';
}
