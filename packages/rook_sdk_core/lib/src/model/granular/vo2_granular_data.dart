class Vo2GranularData {
  final DateTime dateTime;
  final double vo2MlPerMinPerKg;

  Vo2GranularData({
    required this.dateTime,
    required this.vo2MlPerMinPerKg,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Vo2GranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              vo2MlPerMinPerKg == other.vo2MlPerMinPerKg;

  @override
  int get hashCode => dateTime.hashCode ^ vo2MlPerMinPerKg.hashCode;

  @override
  String toString() {
    return 'Vo2GranularData{dateTime: $dateTime, vo2MlPerMinPerKg: $vo2MlPerMinPerKg}';
  }
}
