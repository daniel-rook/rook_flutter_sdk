/// This class represents a summary of the Health Connect permissions that have been granted to the app.
///
/// * [dataTypesGranted] Whether the user granted permission to read all requested data types.
/// * [dataTypesPartiallyGranted] Whether the user granted permission to read at least one requested data type.
/// Note that if [dataTypesGranted] is true, this will also be true.
/// * [backgroundReadGranted] Whether the user granted background read permission.
/// * [historyReadGranted] Whether the user granted history read permission.
/// Note that if this device does not support history read, this will be false.
class HealthConnectPermissionsSummary {
  final bool dataTypesGranted;
  final bool dataTypesPartiallyGranted;
  final bool backgroundReadGranted;
  final bool historyReadGranted;

  HealthConnectPermissionsSummary({
    required this.dataTypesGranted,
    required this.dataTypesPartiallyGranted,
    required this.backgroundReadGranted,
    required this.historyReadGranted,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthConnectPermissionsSummary &&
          runtimeType == other.runtimeType &&
          dataTypesGranted == other.dataTypesGranted &&
          dataTypesPartiallyGranted == other.dataTypesPartiallyGranted &&
          backgroundReadGranted == other.backgroundReadGranted &&
          historyReadGranted == other.historyReadGranted;

  @override
  int get hashCode =>
      dataTypesGranted.hashCode ^
      dataTypesPartiallyGranted.hashCode ^
      backgroundReadGranted.hashCode ^
      historyReadGranted.hashCode;

  @override
  String toString() {
    return 'HealthConnectPermissionsSummary{dataTypesGranted: $dataTypesGranted, dataTypesPartiallyGranted: $dataTypesPartiallyGranted, backgroundReadGranted: $backgroundReadGranted, historyReadGranted: $historyReadGranted}';
  }
}
