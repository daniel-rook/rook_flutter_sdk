/// Represents the status of a sync operation with data.
abstract interface class SyncStatusWithData<T> {}

/// Indicates that no records were found to synchronize.
final class RecordsNotFound implements SyncStatusWithData<Never> {
  RecordsNotFound._();

  static final RecordsNotFound singleton = RecordsNotFound._();
}

/// Indicates that synchronization was successful.
final class Synced<T> implements SyncStatusWithData<T> {
  final T data;

  Synced(this.data);
}
