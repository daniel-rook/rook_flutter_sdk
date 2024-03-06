import 'package:rook_sdk_core/src/enum/rook_environment.dart';

/// This class represents the credentials of the SDK.
///
/// * [clientUUID] Client unique identifier provided by ROOK.
/// * [secretKey] Client secretKey provided by ROOK.
/// * [environment] Behaviour configuration.
class RookConfiguration {
  final String clientUUID;
  final String secretKey;
  final RookEnvironment environment;

  RookConfiguration(
    this.clientUUID,
    this.secretKey,
    this.environment,
  );

  @override
  String toString() {
    return 'RookConfiguration{clientUUID: $clientUUID, secretKey: $secretKey, environment: $environment}';
  }
}
