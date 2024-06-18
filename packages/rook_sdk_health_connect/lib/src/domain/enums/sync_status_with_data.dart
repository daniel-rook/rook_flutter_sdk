abstract interface class SyncStatusWithData<T> {}

final class RecordsNotFound implements SyncStatusWithData<Never> {
  RecordsNotFound._();

  static RecordsNotFound singleton = RecordsNotFound._();
}

final class Synced<T> implements SyncStatusWithData<T> {
  final T data;

  Synced(this.data);
}
