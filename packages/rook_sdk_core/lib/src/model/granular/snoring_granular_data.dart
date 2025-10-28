class SnoringGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final int snoringEventsCount;

  SnoringGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.snoringEventsCount,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SnoringGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              snoringEventsCount == other.snoringEventsCount;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      snoringEventsCount.hashCode;

  @override
  String toString() {
    return 'SnoringGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, snoringEventsCount: $snoringEventsCount}';
  }
}
