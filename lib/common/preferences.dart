import 'package:logging/logging.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  AppPreferences._();

  final Logger logger = Logger('AppPreferences');

  SharedPreferences? _preferences;

  Future<SharedPreferences> _getOrCreatePreferences() async {
    final preferences = _preferences;

    if (preferences != null) {
      return preferences;
    } else {
      final newPreferences = await SharedPreferences.getInstance();
      _preferences = newPreferences;

      return newPreferences;
    }
  }

  Future<void> setSamsungHealthBackgroundSync(bool enabled) async {
    final preferences = await _getOrCreatePreferences();

    preferences.setBool(_samsungHealthBackgroundSync, enabled);
  }

  Future<bool> getSamsungHealthBackgroundSync() async {
    final preferences = await _getOrCreatePreferences();

    return preferences.getBool(_samsungHealthBackgroundSync) ?? false;
  }

  Future<void> setHealthConnectBackgroundSync(bool enabled) async {
    final preferences = await _getOrCreatePreferences();

    preferences.setBool(_healthConnectBackgroundSync, enabled);
  }

  Future<bool> getHealthConnectBackgroundSync() async {
    final preferences = await _getOrCreatePreferences();

    return preferences.getBool(_healthConnectBackgroundSync) ?? false;
  }

  Future<void> setAppleHealthBackgroundSync(bool enabled) async {
    final preferences = await _getOrCreatePreferences();

    preferences.setBool(_appleHealthBackgroundSync, enabled);
  }

  Future<bool> getAppleHealthBackgroundSync() async {
    final preferences = await _getOrCreatePreferences();

    return preferences.getBool(_appleHealthBackgroundSync) ?? false;
  }

  Future<void> setAppleHealthContinuousUpload(bool enabled) async {
    final preferences = await _getOrCreatePreferences();

    preferences.setBool(_appleHealthContinuousUpload, enabled);
  }

  Future<bool> getAppleHealthContinuousUpload() async {
    final preferences = await _getOrCreatePreferences();

    return preferences.getBool(_appleHealthContinuousUpload) ?? false;
  }

  static final AppPreferences _instance = AppPreferences._();

  factory AppPreferences() {
    return _instance;
  }
}

const _samsungHealthBackgroundSync = "SAMSUNG_HEALTH_BACKGROUND_SYNC";
const _healthConnectBackgroundSync = "HEALTH_CONNECT_BACKGROUND_SYNC";
const _appleHealthBackgroundSync = "APPLE_HEALTH_BACKGROUND_SYNC";
const _appleHealthContinuousUpload = "APPLE_HEALTH_CONTINUOUS_UPLOAD";
