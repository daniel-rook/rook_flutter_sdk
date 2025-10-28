class SpeedGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double speedMetersPerSecond;

  SpeedGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.speedMetersPerSecond,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SpeedGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              speedMetersPerSecond == other.speedMetersPerSecond;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      speedMetersPerSecond.hashCode;

  @override
  String toString() {
    return 'SpeedGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, speedMetersPerSecond: $speedMetersPerSecond}';
  }
}
