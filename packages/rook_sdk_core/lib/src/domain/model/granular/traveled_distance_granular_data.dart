class TraveledDistanceGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double traveledDistanceMeters;

  TraveledDistanceGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.traveledDistanceMeters,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraveledDistanceGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          intervalDurationSeconds == other.intervalDurationSeconds &&
          traveledDistanceMeters == other.traveledDistanceMeters;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      traveledDistanceMeters.hashCode;

  @override
  String toString() {
    return 'TraveledDistanceGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, traveledDistanceMeters: $traveledDistanceMeters}';
  }
}
