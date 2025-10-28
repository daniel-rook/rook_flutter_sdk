class LapGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final int laps;

  LapGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.laps,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is LapGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              laps == other.laps;

  @override
  int get hashCode =>
      dateTime.hashCode ^ intervalDurationSeconds.hashCode ^ laps.hashCode;

  @override
  String toString() {
    return 'LapGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, laps: $laps}';
  }
}
