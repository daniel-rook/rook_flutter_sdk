/// This class represents a summary of the Samsung Health permissions that have been granted to the app.
///
/// * [dataTypesGranted] Whether the user granted permission to read all requested data types.
/// * [dataTypesPartiallyGranted] Whether the user granted permission to read at least one requested data type.
/// Note that if [dataTypesGranted] is true, this will also be true.
class SamsungHealthPermissionsSummary {
  final bool dataTypesGranted;
  final bool dataTypesPartiallyGranted;

  SamsungHealthPermissionsSummary({
    required this.dataTypesGranted,
    required this.dataTypesPartiallyGranted,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SamsungHealthPermissionsSummary &&
          runtimeType == other.runtimeType &&
          dataTypesGranted == other.dataTypesGranted &&
          dataTypesPartiallyGranted == other.dataTypesPartiallyGranted;

  @override
  int get hashCode =>
      dataTypesGranted.hashCode ^
      dataTypesPartiallyGranted.hashCode;

  @override
  String toString() {
    return 'SamsungHealthPermissionsSummary{dataTypesGranted: $dataTypesGranted, dataTypesPartiallyGranted: $dataTypesPartiallyGranted}';
  }
}
