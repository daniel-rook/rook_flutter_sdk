import 'package:rook_sdk_core/src/enum/rook_environment.dart';

String getApiUrlFromEnvironment({required RookEnvironment environment}) {
  if (environment == RookEnvironment.sandbox) {
    return "https://api.sdk.rook-connect.review";
  } else {
    return "https://api.sdk.rook-connect.com";
  }
}
