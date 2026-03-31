import 'dart:convert';

import 'package:crypto/crypto.dart';

String getBasicAuth({
  required String id,
  required String client,
  required String secret,
}) {
  final messageBytes = utf8.encode(secret);
  final keyBytes = utf8.encode(client);

  final hmacSha256 = Hmac(sha256, keyBytes);
  final digest = hmacSha256.convert(messageBytes);

  final digestString = digest.toString().toLowerCase();

  final valueToEncode = "$id:$client:$digestString";
  final base64Value = base64.encode(utf8.encode(valueToEncode));

  return "Basic $base64Value";
}
