class VelocityObject {
  final double speedMetersPerSecond;
  final String direction;

  VelocityObject({required this.speedMetersPerSecond, required this.direction});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VelocityObject &&
          runtimeType == other.runtimeType &&
          speedMetersPerSecond == other.speedMetersPerSecond &&
          direction == other.direction;

  @override
  int get hashCode => speedMetersPerSecond.hashCode ^ direction.hashCode;

  @override
  String toString() {
    return 'VelocityObject{speedMetersPerSecond: $speedMetersPerSecond, direction: $direction}';
  }
}
