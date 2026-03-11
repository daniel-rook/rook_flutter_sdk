/// Represents the current synchronization state of Health Connect diagnostics.
///
/// [enabled] Indicates whether the diagnostic synchronization process is currently active (background)
/// or has been triggered at least once (manual).
/// [lastSync] The [DateTime] when the last synchronization was triggered, or null if it has never synced.
final class HCDiagnosticSyncState {
  final bool enabled;
  final DateTime? lastSync;

  HCDiagnosticSyncState({required this.enabled, required this.lastSync});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HCDiagnosticSyncState &&
          runtimeType == other.runtimeType &&
          enabled == other.enabled &&
          lastSync == other.lastSync;

  @override
  int get hashCode => Object.hash(enabled, lastSync);

  @override
  String toString() {
    return 'HCDiagnosticSyncState{enabled: $enabled, lastSync: $lastSync}';
  }
}
