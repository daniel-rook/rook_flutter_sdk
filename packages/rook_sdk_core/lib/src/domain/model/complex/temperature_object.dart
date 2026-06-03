class TemperatureObject {
  final double temperatureCelsius;
  final String measurementType;

  TemperatureObject({
    required this.temperatureCelsius,
    required this.measurementType,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TemperatureObject &&
          runtimeType == other.runtimeType &&
          temperatureCelsius == other.temperatureCelsius &&
          measurementType == other.measurementType;

  @override
  int get hashCode => temperatureCelsius.hashCode ^ measurementType.hashCode;

  @override
  String toString() {
    return 'TemperatureObject{temperatureCelsius: $temperatureCelsius, measurementType: $measurementType}';
  }
}
