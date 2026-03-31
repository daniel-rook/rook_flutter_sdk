import 'package:rook_sdk_core/src/enum/diagnostic_state_permissions.dart';
import 'package:rook_sdk_core/src/model/diagnostic_sync_state.dart';

/// Represents the current state of the SDK.
///
/// [isConfigured] Indicates whether the SDK has been properly configured.
/// [userIdentified] Indicates whether a user has been successfully identified within the SDK.
/// [permissions] The current permissions status.
/// [backgroundSync] The current state and diagnostic information for background data synchronization.
/// [manualSync] The current state and diagnostic information for manual data synchronization.
final class DiagnosticState {
  final bool isConfigured;
  final bool userIdentified;
  final DiagnosticStatePermissions permissions;
  final DiagnosticSyncState backgroundSync;
  final DiagnosticSyncState manualSync;

  DiagnosticState({
    required this.isConfigured,
    required this.userIdentified,
    required this.permissions,
    required this.backgroundSync,
    required this.manualSync,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiagnosticState &&
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
    return 'DiagnosticState{isConfigured: $isConfigured, userIdentified: $userIdentified, permissions: $permissions, backgroundSync: $backgroundSync, manualSync: $manualSync}';
  }
}
