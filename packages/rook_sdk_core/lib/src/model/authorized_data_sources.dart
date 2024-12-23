/// Data class representing the authorized data sources for the current user.
///
///  Please note that this only represents the user authorization status,
///  and not whether the data source is currently active (sending data) or not.
class AuthorizedDataSources {
  bool oura;
  bool polar;
  bool whoop;
  bool fitbit;
  bool garmin;
  bool withings;
  bool appleHealth;
  bool healthConnect;
  bool android;

  AuthorizedDataSources({
    required this.oura,
    required this.polar,
    required this.whoop,
    required this.fitbit,
    required this.garmin,
    required this.withings,
    required this.appleHealth,
    required this.healthConnect,
    required this.android,
  });

  @override
  String toString() {
    return 'AuthorizedDataSources{oura: $oura, polar: $polar, whoop: $whoop, fitbit: $fitbit, garmin: $garmin, withings: $withings, appleHealth: $appleHealth, healthConnect: $healthConnect, android: $android}';
  }
}
