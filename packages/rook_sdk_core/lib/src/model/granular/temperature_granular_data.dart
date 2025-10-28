class TemperatureGranularData {
  final DateTime dateTime;
  final double temperatureCelsius;
  final String measurementType;

  TemperatureGranularData({
    required this.dateTime,
    required this.temperatureCelsius,
    required this.measurementType,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is TemperatureGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              temperatureCelsius == other.temperatureCelsius &&
              measurementType == other.measurementType;

  @override
  int get hashCode =>
      dateTime.hashCode ^
      temperatureCelsius.hashCode ^
      measurementType.hashCode;

  @override
  String toString() {
    return 'TemperatureGranularData{dateTime: $dateTime, temperatureCelsius: $temperatureCelsius, measurementType: $measurementType}';
  }
}
