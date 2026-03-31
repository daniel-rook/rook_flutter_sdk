class HrvRmssdGranularData {
  final DateTime dateTime;
  final double hrvRmssd;

  HrvRmssdGranularData({required this.dateTime, required this.hrvRmssd});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HrvRmssdGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          hrvRmssd == other.hrvRmssd;

  @override
  int get hashCode => dateTime.hashCode ^ hrvRmssd.hashCode;

  @override
  String toString() {
    return 'HrvRmssdGranularData{dateTime: $dateTime, hrvRmssd: $hrvRmssd}';
  }
}
