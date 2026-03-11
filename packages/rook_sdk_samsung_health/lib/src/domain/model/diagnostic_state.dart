import 'package:rook_sdk_samsung_health/src/domain/enums/diagnostic_state_permissions.dart';
import 'package:rook_sdk_samsung_health/src/domain/model/diagnostic_sync_state.dart';

/// Represents the current state of the Samsung Health diagnostic checks.
///
/// [isConfigured] Indicates whether the SDK has been properly configured.
/// [userIdentified] Indicates whether a user has been successfully identified within the SDK.
/// [permissions] The current status of the required Samsung Health permissions.
/// [backgroundSync] The current state and diagnostic information for background data synchronization.
/// [manualSync] The current state and diagnostic information for manual data synchronization.
final class SHDiagnosticState {
  final bool isConfigured;
  final bool userIdentified;
  final SHDiagnosticStatePermissions permissions;
  final SHDiagnosticSyncState backgroundSync;
  final SHDiagnosticSyncState manualSync;

  SHDiagnosticState({
    required this.isConfigured,
    required this.userIdentified,
    required this.permissions,
    required this.backgroundSync,
    required this.manualSync,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SHDiagnosticState &&
          runtimeType == other.runtimeType &&
          isConfigured == other.isConfigured &&
          userIdentified == other.userIdentified &&
          permissions == other.permissions &&
          backgroundSync == other.backgroundSync &&
          manualSync == other.manualSync;

  @override
  int get hashCode => Object.hash(
    isConfigured,
    userIdentified,
    permissions,
    backgroundSync,
    manualSync,
  );

  @override
  String toString() {
    return 'SHDiagnosticState{isConfigured: $isConfigured, userIdentified: $userIdentified, permissions: $permissions, backgroundSync: $backgroundSync, manualSync: $manualSync}';
  }
}
