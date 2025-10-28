class MoodGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final double moodScale;

  MoodGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.moodScale,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is MoodGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              moodScale == other.moodScale;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      moodScale.hashCode;

  @override
  String toString() {
    return 'MoodGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, moodScale: $moodScale}';
  }
}
