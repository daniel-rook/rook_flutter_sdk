class HrGranularData {
  final DateTime dateTime;
  final int hrBpm;

  HrGranularData({
    required this.dateTime,
    required this.hrBpm,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HrGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          hrBpm == other.hrBpm;

  @override
  int get hashCode => dateTime.hashCode ^ hrBpm.hashCode;

  @override
  String toString() {
    return 'HrGranularData{dateTime: $dateTime, hrBpm: $hrBpm}';
  }
}
