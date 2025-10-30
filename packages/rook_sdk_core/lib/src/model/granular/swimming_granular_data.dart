class SwimmingDistanceGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double swimmingDistanceMeters;

  SwimmingDistanceGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.swimmingDistanceMeters,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwimmingDistanceGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          intervalDurationSeconds == other.intervalDurationSeconds &&
          swimmingDistanceMeters == other.swimmingDistanceMeters;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      swimmingDistanceMeters.hashCode;

  @override
  String toString() {
    return 'SwimmingDistanceGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, swimmingDistanceMeters: $swimmingDistanceMeters}';
  }
}
