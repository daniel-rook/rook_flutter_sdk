/// Enum class to represent the different data sources that ROOK can handle.
enum DataSourceType {
  garmin,
  oura,
  polar,
  fitbit,
  withings,
  whoop;

  String get identifier {
    return switch(this) {
      DataSourceType.garmin => "Garmin",
      DataSourceType.oura => "Oura",
      DataSourceType.polar => "Polar",
      DataSourceType.fitbit => "Fitbit",
      DataSourceType.withings => "Withings",
      DataSourceType.whoop => "Whoop",
    };
  }
}
