/// An enum class that defines the possible instructions for synchronization.
enum HCSyncInstruction {
  /// Only sync yesterday data.
  nothing,

  /// After syncing yesterday data, subsequent syncs should start from the 29th day until the 2nd day (The day before yesterday)
  syncOldest,

  /// After syncing yesterday data, subsequent syncs should start from the 2nd day (The day before yesterday) day until the 29th.
  syncLatest,
}
