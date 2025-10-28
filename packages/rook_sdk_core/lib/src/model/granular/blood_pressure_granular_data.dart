class BloodPressureGranularData {
  final DateTime dateTime;
  final double systolicMmHg;
  final double diastolicMmHg;

  BloodPressureGranularData({
    required this.dateTime,
    required this.systolicMmHg,
    required this.diastolicMmHg,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is BloodPressureGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              systolicMmHg == other.systolicMmHg &&
              diastolicMmHg == other.diastolicMmHg;

  @override
  int get hashCode =>
      dateTime.hashCode ^ systolicMmHg.hashCode ^ diastolicMmHg.hashCode;

  @override
  String toString() {
    return 'BloodPressureGranularData{dateTime: $dateTime, systolicMmHg: $systolicMmHg, diastolicMmHg: $diastolicMmHg}';
  }
}
