class HydrationAmountGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double hydrationAmountMl;

  HydrationAmountGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.hydrationAmountMl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is HydrationAmountGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              hydrationAmountMl == other.hydrationAmountMl;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      hydrationAmountMl.hashCode;

  @override
  String toString() {
    return 'HydrationAmountGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, hydrationAmountMl: $hydrationAmountMl}';
  }
}
