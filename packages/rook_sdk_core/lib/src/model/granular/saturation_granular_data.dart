class SaturationGranularData {
  final DateTime dateTime;
  final double saturationPercentage;

  SaturationGranularData({
    required this.dateTime,
    required this.saturationPercentage,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is SaturationGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              saturationPercentage == other.saturationPercentage;

  @override
  int get hashCode => dateTime.hashCode ^ saturationPercentage.hashCode;

  @override
  String toString() {
    return 'SaturationGranularData{dateTime: $dateTime, saturationPercentage: $saturationPercentage}';
  }
}
