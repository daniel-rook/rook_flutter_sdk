import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_method_channel.dart';

import 'boolean.dart';
import 'request_permission_status.dart';
import 'samsung_health_availability.dart';
import 'string.dart';
import 'sync_status_with_calories.dart';
import 'sync_status_with_int.dart';

// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final platform = MethodChannelRookSdkSamsungHealth();
  const channel = MethodChannel('rook_sdk_samsung_health');

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  booleanResultTests(platform, channel);
  syncStatusWithIntTest(platform, channel);
  syncStatusWithCaloriesTest(platform, channel);
  requestPermissionsStatusTests(platform, channel);
  stringTests(platform, channel);
  samsungHealthAvailabilityTests(platform, channel);
}
