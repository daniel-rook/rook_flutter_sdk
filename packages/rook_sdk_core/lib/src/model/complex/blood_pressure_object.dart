class BloodPressureObject {
  final double systolicMmHg;
  final double diastolicMmHg;

  BloodPressureObject({
    required this.systolicMmHg,
    required this.diastolicMmHg,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BloodPressureObject &&
          runtimeType == other.runtimeType &&
          systolicMmHg == other.systolicMmHg &&
          diastolicMmHg == other.diastolicMmHg;

  @override
  int get hashCode => systolicMmHg.hashCode ^ diastolicMmHg.hashCode;

  @override
  String toString() {
    return 'BloodPressureObject{systolicMmHg: $systolicMmHg, diastolicMmHg: $diastolicMmHg}';
  }
}
