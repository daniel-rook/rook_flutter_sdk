class ActiveStepsGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final int activeSteps;

  ActiveStepsGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.activeSteps,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ActiveStepsGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              activeSteps == other.activeSteps;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      activeSteps.hashCode;

  @override
  String toString() {
    return 'ActiveStepsGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, activeSteps: $activeSteps}';
  }
}
