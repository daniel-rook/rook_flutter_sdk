class TssGranularData {
  final DateTime dateTime;
  final int intervalDurationSeconds;
  final int tssScore;

  TssGranularData({
    required this.dateTime,
    required this.intervalDurationSeconds,
    required this.tssScore,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TssGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              intervalDurationSeconds == other.intervalDurationSeconds &&
              tssScore == other.tssScore;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      intervalDurationSeconds.hashCode ^
      tssScore.hashCode;

  @override
  String toString() {
    return 'TssGranularData{dateTime: $dateTime, intervalDurationSeconds: $intervalDurationSeconds, tssScore: $tssScore}';
  }
}
