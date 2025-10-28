class HydrationLevelGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double hydrationLevelPercentage;

  HydrationLevelGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.hydrationLevelPercentage,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is HydrationLevelGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              hydrationLevelPercentage == other.hydrationLevelPercentage;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      hydrationLevelPercentage.hashCode;

  @override
  String toString() {
    return 'HydrationLevelGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, hydrationLevelPercentage: $hydrationLevelPercentage}';
  }
}
