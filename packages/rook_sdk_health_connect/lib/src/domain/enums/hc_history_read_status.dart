/// This enum represents the current state of the history read feature.
enum HCHistoryReadStatus {
  /// History read is not available on this device.
  /// Try asking the user to update their Health Connect application.
  unavailable,

  /// History read permission is not granted.
  /// Try requesting history read permission.
  permissionNotGranted,

  /// History read permission is granted.
  permissionGranted,
}
