class BreathingGranularData {
  final DateTime dateTime;
  final double breathsPerMin;

  BreathingGranularData({
    required this.dateTime,
    required this.breathsPerMin,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BreathingGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          breathsPerMin == other.breathsPerMin;

  @override
  int get hashCode => dateTime.hashCode ^ breathsPerMin.hashCode;

  @override
  String toString() {
    return 'BreathingGranularData{dateTime: $dateTime, breathsPerMin: $breathsPerMin}';
  }
}
