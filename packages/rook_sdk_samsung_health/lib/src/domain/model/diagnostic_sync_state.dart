/// Represents the current synchronization state of Samsung Health diagnostics.
///
/// [enabled] Indicates whether the diagnostic synchronization process is currently active (background)
/// or has been triggered at least once (manual).
/// [lastSync] The [DateTime] when the last synchronization was triggered, or null if it has never synced.
final class SHDiagnosticSyncState {
  final bool enabled;
  final DateTime? lastSync;

  SHDiagnosticSyncState({required this.enabled, required this.lastSync});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SHDiagnosticSyncState &&
          runtimeType == other.runtimeType &&
          enabled == other.enabled &&
          lastSync == other.lastSync;

  @override
  int get hashCode => Object.hash(enabled, lastSync);

  @override
  String toString() {
    return 'SHDiagnosticSyncState{enabled: $enabled, lastSync: $lastSync}';
  }
}
