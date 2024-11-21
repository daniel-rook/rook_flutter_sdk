/// This class represents a summary of the Health Connect permissions that have been granted to the app.
///
/// * [dataTypesGranted] Whether the user granted permission to read all requested data types.
/// * [dataTypesPartiallyGranted] Whether the user granted permission to read at least one requested data type.
/// Note that if [dataTypesGranted] is true, this will also be true.
class HealthConnectPermissionsSummary {
  final bool dataTypesGranted;
  final bool dataTypesPartiallyGranted;

  HealthConnectPermissionsSummary({
    required this.dataTypesGranted,
    required this.dataTypesPartiallyGranted,
  });

  @override
  String toString() {
    return 'HealthConnectPermissionsSummary{dataTypesGranted: $dataTypesGranted, dataTypesPartiallyGranted: $dataTypesPartiallyGranted}';
  }
}
