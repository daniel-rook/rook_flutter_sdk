class StressGranularData {
  final DateTime dateTime;
  final int stressScore;

  StressGranularData({required this.dateTime, required this.stressScore});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StressGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          stressScore == other.stressScore;

  @override
  int get hashCode => dateTime.hashCode ^ stressScore.hashCode;

  @override
  String toString() {
    return 'StressGranularData{dateTime: $dateTime, stressScore: $stressScore}';
  }
}
