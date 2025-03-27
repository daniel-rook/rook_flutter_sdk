/// This class represents a summary of the Health Connect permissions that have been granted to the app.
///
/// * [dataTypesGranted] Whether the user granted permission to read all requested data types.
/// * [dataTypesPartiallyGranted] Whether the user granted permission to read at least one requested data type.
/// Note that if [dataTypesGranted] is true, this will wwalso be true.
/// * [backgroundReadGranted] Whether the user granted background read permission.
class HealthConnectPermissionsSummary {
  final bool dataTypesGranted;
  final bool dataTypesPartiallyGranted;
  final bool backgroundReadGranted;

  HealthConnectPermissionsSummary({
    required this.dataTypesGranted,
    required this.dataTypesPartiallyGranted,
    required this.backgroundReadGranted,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthConnectPermissionsSummary &&
          runtimeType == other.runtimeType &&
          dataTypesGranted == other.dataTypesGranted &&
          dataTypesPartiallyGranted == other.dataTypesPartiallyGranted &&
          backgroundReadGranted == other.backgroundReadGranted;

  @override
  int get hashCode =>
      dataTypesGranted.hashCode ^
      dataTypesPartiallyGranted.hashCode ^
      backgroundReadGranted.hashCode;

  @override
  String toString() {
    return 'HealthConnectPermissionsSummary{dataTypesGranted: $dataTypesGranted, dataTypesPartiallyGranted: $dataTypesPartiallyGranted, backgroundReadGranted: $backgroundReadGranted}';
  }
}
