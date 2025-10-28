class FloorsClimbedGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double floorsClimbed;

  FloorsClimbedGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.floorsClimbed,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FloorsClimbedGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          intervalDurationSeconds == other.intervalDurationSeconds &&
          floorsClimbed == other.floorsClimbed;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      floorsClimbed.hashCode;

  @override
  String toString() {
    return 'FloorsClimbedGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, floorsClimbed: $floorsClimbed}';
  }
}
