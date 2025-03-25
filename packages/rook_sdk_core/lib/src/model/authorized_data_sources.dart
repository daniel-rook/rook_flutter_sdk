/// Data class representing the authorized data sources for the current user.
///
///  Please note that this only represents the user authorization status,
///  and not whether the data source is currently active (sending data) or not.
class AuthorizedDataSources {
  bool? oura;
  bool? polar;
  bool? whoop;
  bool? fitbit;
  bool? garmin;
  bool? withings;
  bool? dexcom;
  bool? appleHealth;
  bool? healthConnect;
  bool? android;

  AuthorizedDataSources({
    required this.oura,
    required this.polar,
    required this.whoop,
    required this.fitbit,
    required this.garmin,
    required this.withings,
    required this.dexcom,
    required this.appleHealth,
    required this.healthConnect,
    required this.android,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorizedDataSources &&
          runtimeType == other.runtimeType &&
          oura == other.oura &&
          polar == other.polar &&
          whoop == other.whoop &&
          fitbit == other.fitbit &&
          garmin == other.garmin &&
          withings == other.withings &&
          dexcom == other.dexcom &&
          appleHealth == other.appleHealth &&
          healthConnect == other.healthConnect &&
          android == other.android;

  @override
  int get hashCode =>
      oura.hashCode ^
      polar.hashCode ^
      whoop.hashCode ^
      fitbit.hashCode ^
      garmin.hashCode ^
      withings.hashCode ^
      dexcom.hashCode ^
      appleHealth.hashCode ^
      healthConnect.hashCode ^
      android.hashCode;

  @override
  String toString() {
    return 'AuthorizedDataSources{oura: $oura, polar: $polar, whoop: $whoop, fitbit: $fitbit, garmin: $garmin, withings: $withings, dexcom: $dexcom, appleHealth: $appleHealth, healthConnect: $healthConnect, android: $android}';
  }
}
