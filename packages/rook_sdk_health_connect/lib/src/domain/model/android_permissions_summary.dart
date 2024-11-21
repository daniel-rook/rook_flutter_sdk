/// This class represents a summary of the Android permissions that have been granted to the app.
///
/// * [permissionsGranted] Whether the user granted all Android permissions.
/// * [dialogDisplayed] whether the permissions dialog was displayed or not.
/// If this returns false you should navigate the user to the app's settings screen to grant permissions manually.
class AndroidPermissionsSummary {
  final bool permissionsGranted;
  final bool dialogDisplayed;

  AndroidPermissionsSummary({
    required this.permissionsGranted,
    required this.dialogDisplayed,
  });

  @override
  String toString() {
    return 'AndroidPermissionsSummary{permissionsGranted: $permissionsGranted, dialogDisplayed: $dialogDisplayed}';
  }
}
