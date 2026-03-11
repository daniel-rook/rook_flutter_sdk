/// Represents the current synchronization state of Apple Health diagnostics.
///
/// [enabled] Indicates whether the diagnostic synchronization process is currently active (background)
/// or has been triggered at least once (manual).
/// [lastSync] The [DateTime] when the last synchronization was triggered, or null if it has never synced.
final class AHDiagnosticSyncState {
  final bool enabled;
  final DateTime? lastSync;

  AHDiagnosticSyncState({required this.enabled, required this.lastSync});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AHDiagnosticSyncState &&
          runtimeType == other.runtimeType &&
          enabled == other.enabled &&
          lastSync == other.lastSync;

  @override
  int get hashCode => Object.hash(enabled, lastSync);

  @override
  String toString() {
    return 'AHDiagnosticSyncState{enabled: $enabled, lastSync: $lastSync}';
  }
}
