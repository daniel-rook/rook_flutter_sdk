import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_platform_interface.dart';

/// Entry point for managing the Android step counter service and retrieving
/// the current day's step count.
///
/// This implementation uses
/// `android.hardware.Sensor.TYPE_STEP_COUNTER` to read the cumulative hardware
/// counter and applies a baseline strategy to ensure accurate daily step counts
/// across service restarts and device reboots.
final class AndroidStepsCounter {
  const AndroidStepsCounter._();

  /// Checks whether the device has the required
  /// `android.hardware.Sensor.TYPE_STEP_COUNTER` sensor.
  ///
  /// Returns `true` if the sensor is available, `false` otherwise.
  static Future<bool> isStepsCounterAvailable() {
    return RookSdkHealthConnectPlatform.instance.isStepsCounterAvailable();
  }

  /// Checks whether the step counter service is currently running.
  ///
  /// Returns `true` if the service is active, `false` otherwise.
  static Future<bool> isStepsCounterActive() {
    return RookSdkHealthConnectPlatform.instance.isStepsCounterActive();
  }

  /// Starts the step counter service.
  ///
  /// If the service is already active, this call does nothing.
  static Future<void> enableStepsCounter() {
    return RookSdkHealthConnectPlatform.instance.enableStepsCounter();
  }

  /// Stops the step counter service.
  ///
  /// If the service is not active, this call does nothing.
  static Future<void> disableStepsCounter() {
    return RookSdkHealthConnectPlatform.instance.disableStepsCounter();
  }

  /// Retrieves and uploads the current day's Android system step count.
  ///
  /// If the step counter service is not running when this function is called,
  /// it will attempt to restart it. The returned value reflects the most
  /// recently persisted step count, which may be slightly behind real-time
  /// until the service processes its first sensor catch-up event.
  ///
  /// **Warning: This function is resource intensive, don't call it too
  /// frequently.**
  ///
  /// Returns the current day's step count.
  static Future<int> getTodayStepsCount() {
    return RookSdkHealthConnectPlatform.instance.getTodayStepsCounterCount();
  }
}
