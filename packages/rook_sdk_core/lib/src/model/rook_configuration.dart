import 'package:rook_sdk_core/src/enum/rook_environment.dart';

/// This class represents the credentials of the SDK.
///
/// * [clientUUID] Client unique identifier provided by ROOK.
/// * [sha] The SHA-256 hash that you provided in ROOK portal.
/// * [environment] Behaviour configuration.
/// * [enableBackgroundSync] Automatically enables background sync on Apple Health and Auto Sync on Health Connect
class RookConfiguration {
  final String clientUUID;
  final String sha;
  final RookEnvironment environment;
  final bool enableBackgroundSync;

  RookConfiguration({
    required this.clientUUID,
    required this.sha,
    required this.environment,
    required this.enableBackgroundSync,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RookConfiguration &&
          runtimeType == other.runtimeType &&
          clientUUID == other.clientUUID &&
          sha == other.sha &&
          environment == other.environment &&
          enableBackgroundSync == other.enableBackgroundSync;

  @override
  int get hashCode =>
      clientUUID.hashCode ^
      sha.hashCode ^
      environment.hashCode ^
      enableBackgroundSync.hashCode;

  @override
  String toString() {
    return 'RookConfiguration{clientUUID: $clientUUID, sha: $sha, environment: $environment}';
  }
}
