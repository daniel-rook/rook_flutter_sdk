class PositionObject {
  final double latDeg;
  final double lngDeg;

  PositionObject({
    required this.latDeg,
    required this.lngDeg,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PositionObject &&
              runtimeType == other.runtimeType &&
              latDeg == other.latDeg &&
              lngDeg == other.lngDeg;

  @override
  int get hashCode => latDeg.hashCode ^ lngDeg.hashCode;

  @override
  String toString() {
    return 'PositionObject{latDeg: $latDeg, lngDeg: $lngDeg}';
  }
}
