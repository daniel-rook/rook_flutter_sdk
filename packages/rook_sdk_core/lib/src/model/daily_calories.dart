class DailyCalories {
  final double basal;
  final double active;

  DailyCalories({required this.basal, required this.active});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyCalories &&
          runtimeType == other.runtimeType &&
          basal == other.basal &&
          active == other.active;

  @override
  int get hashCode => basal.hashCode ^ active.hashCode;

  @override
  String toString() {
    return 'DailyCalories{basal: $basal, active: $active}';
  }
}
