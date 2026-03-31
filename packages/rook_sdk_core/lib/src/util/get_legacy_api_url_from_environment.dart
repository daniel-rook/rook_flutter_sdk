import 'package:rook_sdk_core/src/enum/rook_environment.dart';

String getLegacyApiUrlFromEnvironment({required RookEnvironment environment}) {
  if (environment == RookEnvironment.sandbox) {
    return "https://api.rook-connect.review/api";
  } else {
    return "https://api.rook-connect.com/api";
  }
}
