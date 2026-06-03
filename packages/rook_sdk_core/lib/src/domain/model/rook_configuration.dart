import 'package:rook_sdk_core/src/domain/enum/rook_environment.dart';

/// This class represents the configuration required to initialize the Rook SDK.
///
/// * [clientUUID] The unique identifier for your client, provided by ROOK.
/// * [secret] The secret word that you provided in ROOK portal. Between 8 and 150 characters.
/// * [environment] The target [RookEnvironment] (e.g., SANDBOX or PRODUCTION) for the SDK to operate in.
/// * [appId] The package name (Android) or bundle identifier (iOS) of your application. If not provided, the SDK will retrieve it from [Context.packageName] or [Bundle.main.bundleIdentifier].
/// * [enableBackgroundSync] Automatically enables background sync on Apple Health and Auto Sync on Health Connect
class RookConfiguration {
  final String clientUUID;
  final String secret;
  final RookEnvironment environment;
  final String? appId;
  final bool enableBackgroundSync;

  RookConfiguration({
    required this.clientUUID,
    required this.secret,
    required this.environment,
    this.appId,
    required this.enableBackgroundSync,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RookConfiguration &&
          runtimeType == other.runtimeType &&
          clientUUID == other.clientUUID &&
          secret == other.secret &&
          environment == other.environment &&
          appId == other.appId &&
          enableBackgroundSync == other.enableBackgroundSync;

  @override
  int get hashCode =>
      Object.hash(clientUUID, secret, environment, appId, enableBackgroundSync);

  @override
  String toString() {
    return 'RookConfiguration{clientUUID: $clientUUID, secret: $secret, environment: $environment, packageName: $appId, enableBackgroundSync: $enableBackgroundSync}';
  }
}
