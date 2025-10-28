class PowerGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double powerWatts;

  PowerGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.powerWatts,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PowerGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              powerWatts == other.powerWatts;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      powerWatts.hashCode;

  @override
  String toString() {
    return 'PowerGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, powerWatts: $powerWatts}';
  }
}
