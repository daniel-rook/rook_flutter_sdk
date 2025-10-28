class PositionGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double latDeg;
  final double lngDeg;

  PositionGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.latDeg,
    required this.lngDeg,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PositionGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              latDeg == other.latDeg &&
              lngDeg == other.lngDeg;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      latDeg.hashCode ^
      lngDeg.hashCode;

  @override
  String toString() {
    return 'PositionGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, latDeg: $latDeg, lngDeg: $lngDeg}';
  }
}
