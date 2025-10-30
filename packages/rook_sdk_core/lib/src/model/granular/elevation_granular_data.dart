class ElevationGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double elevationChangeMeters;

  ElevationGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.elevationChangeMeters,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ElevationGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          intervalDurationSeconds == other.intervalDurationSeconds &&
          elevationChangeMeters == other.elevationChangeMeters;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      elevationChangeMeters.hashCode;

  @override
  String toString() {
    return 'ElevationGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, elevationChangeMeters: $elevationChangeMeters}';
  }
}
