/// This enum represents the current state of the background read feature.
enum HCBackgroundReadStatus {

  /// Background read is not available on this device.
  /// Try asking the user to update their Health Connect application.
  unavailable,

  /// Background read permission is not granted.
  /// Try requesting background read permission.
  permissionNotGranted,

  /// Background read permission is granted.
  permissionGranted,
}
