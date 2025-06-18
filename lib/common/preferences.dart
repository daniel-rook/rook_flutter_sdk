import 'dart:io';

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

  Future<void> setAutoSyncAcceptation(bool acceptation) async {
    final preferences = await _getOrCreatePreferences();

    if (Platform.isAndroid) {
      preferences.setBool(_acceptedAndroidAutoSyncKey, acceptation);
    } else {
      preferences.setBool(_acceptedIosAutoSyncKey, acceptation);
    }
  }

  Future<bool> getAutoSyncAcceptation() async {
    final preferences = await _getOrCreatePreferences();

    if (Platform.isAndroid) {
      return preferences.getBool(_acceptedAndroidAutoSyncKey) ?? false;
    } else {
      return preferences.getBool(_acceptedIosAutoSyncKey) ?? false;
    }
  }

  Future<void> setSamsungAutoSyncAcceptation(bool acceptation) async {
    final preferences = await _getOrCreatePreferences();

    preferences.setBool(_acceptedSamsungAutoSyncKey, acceptation);
  }

  Future<bool> getSamsungAutoSyncAcceptation() async {
    final preferences = await _getOrCreatePreferences();

    return preferences.getBool(_acceptedSamsungAutoSyncKey) ?? false;
  }

  static final AppPreferences _instance = AppPreferences._();

  factory AppPreferences() {
    return _instance;
  }
}

const _acceptedSamsungAutoSyncKey = "SAMSUNG_AUTO_SYNC";
const _acceptedAndroidAutoSyncKey = "ANDROID_AUTO_SYNC";
const _acceptedIosAutoSyncKey = "IOS_AUTO_SYNC";
