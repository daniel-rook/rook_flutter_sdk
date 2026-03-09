import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

RookApiSources buildApiSources() {
  // Available environments:
  //
  // * SANDBOX ➞ Use this during your app development process.
  // * PRODUCTION ➞ Use this ONLY when your app is published to the PlayStore.
  RookEnvironment rookEnvironment =
      isDebug ? RookEnvironment.sandbox : RookEnvironment.production;

  // Enable logging only on debug builds
  bool enableLogs = isDebug;

  RookApiSources rookApiSources = RookApiSources(
    clientUUID: Secrets.clientUUID,
    secretKey: Secrets.sha,
    environment: rookEnvironment,
    enableLogs: enableLogs,
  );

  return rookApiSources;
}
