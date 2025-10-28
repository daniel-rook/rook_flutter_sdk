class TorqueGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double torqueNewtonMeters;

  TorqueGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.torqueNewtonMeters,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TorqueGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              torqueNewtonMeters == other.torqueNewtonMeters;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      torqueNewtonMeters.hashCode;

  @override
  String toString() {
    return 'TorqueGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, torqueNewtonMeters: $torqueNewtonMeters}';
  }
}
