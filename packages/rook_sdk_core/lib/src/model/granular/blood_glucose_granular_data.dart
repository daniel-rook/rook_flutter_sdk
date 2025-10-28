class BloodGlucoseGranularData {
  final DateTime dateTime;
  final double bloodGlucoseMgPerDl;

  BloodGlucoseGranularData({
    required this.dateTime,
    required this.bloodGlucoseMgPerDl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is BloodGlucoseGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              bloodGlucoseMgPerDl == other.bloodGlucoseMgPerDl;

  @override
  int get hashCode => dateTime.hashCode ^ bloodGlucoseMgPerDl.hashCode;

  @override
  String toString() {
    return 'BloodGlucoseGranularData{dateTime: $dateTime, bloodGlucoseMgPerDl: $bloodGlucoseMgPerDl}';
  }
}
