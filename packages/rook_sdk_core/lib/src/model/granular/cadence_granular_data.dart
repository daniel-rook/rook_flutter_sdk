class CadenceGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double cadenceRpm;

  CadenceGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.cadenceRpm,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CadenceGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          intervalDurationSeconds == other.intervalDurationSeconds &&
          cadenceRpm == other.cadenceRpm;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      cadenceRpm.hashCode;

  @override
  String toString() {
    return 'CadenceGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, cadenceRpm: $cadenceRpm}';
  }
}
