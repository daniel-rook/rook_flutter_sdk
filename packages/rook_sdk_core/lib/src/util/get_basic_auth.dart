import 'dart:convert';

import 'package:crypto/crypto.dart';

String getBasicAuth({
  required String id,
  required String client,
  required String sha,
}) {
  final idToClientBytes = utf8.encode("$id:$client");
  final shaBytes = utf8.encode(sha);

  final hmacSha256 = Hmac(sha256, shaBytes);

  final digest = hmacSha256.convert(idToClientBytes);
  final shaDigest = digest.toString().toLowerCase();

  final valueToEncode = "$id:$client:$shaDigest";
  final base64String = base64.encode(utf8.encode(valueToEncode));

  return "Basic $base64String";
}
