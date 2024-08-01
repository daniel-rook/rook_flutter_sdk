/// Represents the status of requesting permissions.
///
/// This enum class defines possible states indicating whether the permissions request
/// was sent or if the permissions are already granted.
enum RequestPermissionsStatus {
  /// Indicates that the permissions request was sent.
  requestSent,

  /// Indicates that the permissions are already granted, so no further action is required.
  alreadyGranted;
}
