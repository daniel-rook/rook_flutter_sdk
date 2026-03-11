import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/platform/rook_sdk_samsung_health_method_channel.dart';

import 'activity_event.dart';
import 'body_summary.dart';
import 'boolean.dart';
import 'calories.dart';
import 'diagnostic_state.dart';
import 'hear_rate.dart';
import 'int64.dart';
import 'physical_summary.dart';
import 'request_permission_status.dart';
import 'samsung_health_availability.dart';
import 'sleep_summary.dart';
import 'string.dart';

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
  int64ResultTests(platform, channel);
  caloriesTest(platform, channel);
  requestPermissionsStatusTests(platform, channel);
  stringTests(platform, channel);
  samsungHealthAvailabilityTests(platform, channel);
  sleepSummaryTest(platform, channel);
  physicalSummaryTest(platform, channel);
  bodySummaryTest(platform, channel);
  activityEventTest(platform, channel);
  heartRateTest(platform, channel);
  diagnosticStateTest(platform, channel);
}
