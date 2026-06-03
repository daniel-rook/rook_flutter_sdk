import 'package:rook_sdk_core/src/domain/enum/rook_environment.dart';

String getLegacyApiUrlFromEnvironment({required RookEnvironment environment}) {
  if (environment == RookEnvironment.sandbox) {
    return "https://api.rook-connect.review/api";
  } else {
    return "https://api.rook-connect.com/api";
  }
}
