/// This enum represents the current state of the Health Connect APK
///
/// * [installed] - APK is installed.
/// * [notInstalled] - APK is not installed.
/// * [notSupported] - This device does not support Health Connect.
enum HCAvailabilityStatus {
  installed,
  notInstalled,
  notSupported;
}
