class HrvSdnnGranularData {
  final DateTime dateTime;
  final double hrvSdnn;

  HrvSdnnGranularData({
    required this.dateTime,
    required this.hrvSdnn,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is HrvSdnnGranularData &&
              runtimeType == other.runtimeType &&
              dateTime == other.dateTime &&
              hrvSdnn == other.hrvSdnn;

  @override
  int get hashCode => dateTime.hashCode ^ hrvSdnn.hashCode;

  @override
  String toString() {
    return 'HrvSdnnGranularData{dateTime: $dateTime, hrvSdnn: $hrvSdnn}';
  }
}
