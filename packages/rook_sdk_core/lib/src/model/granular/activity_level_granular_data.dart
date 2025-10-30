class ActivityLevelGranularData {
  final DateTime dateTime;
  final int activityLevel;

  ActivityLevelGranularData({
    required this.dateTime,
    required this.activityLevel,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ActivityLevelGranularData &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          activityLevel == other.activityLevel;

  @override
  int get hashCode => dateTime.hashCode ^ activityLevel.hashCode;

  @override
  String toString() {
    return 'ActivityLevelGranularData{dateTime: $dateTime, activityLevel: $activityLevel}';
  }
}
