/// This enum represents the current state of the Samsung Health APK
///
/// * [installed] - Samsung Health is installed and ready to be used.
/// * [notInstalled] - Samsung Health is not installed.
/// * [outdated] - The version of Samsung Health is too old.
/// * [disabled] - Samsung Health has been installed but it is disabled.
/// * [notReady] - Samsung Health has been installed but the user didn't perform an initial process, such as agreeing to the Terms and Conditions.
enum SamsungHealthAvailability {
  installed,
  notInstalled,
  outdated,
  disabled,
  notReady;
}
