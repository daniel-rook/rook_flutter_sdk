class MenstruationFlowGranularData {
  final DateTime dateTime;
  final double flowMl;

  MenstruationFlowGranularData({required this.dateTime, required this.flowMl});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MenstruationFlowGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          flowMl == other.flowMl;

  @override
  int get hashCode => dateTime.hashCode ^ flowMl.hashCode;

  @override
  String toString() {
    return 'MenstruationFlowGranularData{dateTime: $dateTime, flowMl: $flowMl}';
  }
}
