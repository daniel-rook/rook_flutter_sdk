class StepsGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final int steps;

  StepsGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.steps,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StepsGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          intervalDurationSeconds == other.intervalDurationSeconds &&
          steps == other.steps;

  @override
  int get hashCode =>
      dateTime.hashCode ^ intervalDurationSeconds.hashCode ^ steps.hashCode;

  @override
  String toString() {
    return 'StepsGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, steps: $steps}';
  }
}
