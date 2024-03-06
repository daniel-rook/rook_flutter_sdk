import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_calories_tracker_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_steps_tracker_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/sdk_apple_health_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/sdk_apple_health_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_steps_tracker_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/sdk_health_connect_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/sdk_health_connect_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/yesterday_sync_permissions.dart';

class AppRouter {
  Route<Object?>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case sdkHealthConnectConfigurationRoute:
        return MaterialPageRoute(
          builder: (context) => const SdkHealthConnectConfiguration(),
        );
      case sdkHealthConnectPlaygroundRoute:
        return MaterialPageRoute(
          builder: (context) => const SdkHealthConnectPlayground(),
        );
      case androidStepsTrackerPlaygroundRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidStepsTrackerPlayground(),
        );
      case yesterdaySyncPermissionsRoute:
        return MaterialPageRoute(
          builder: (context) => const YesterdaySyncPermissions(),
        );
      case sdkAppleHealthConfigurationRoute:
        return MaterialPageRoute(
          builder: (context) => const SdkAppleHealthConfiguration(),
        );
      case sdkAppleHealthPlaygroundRoute:
        return MaterialPageRoute(
          builder: (context) => const SdkAppleHealthPlayground(),
        );
      case iosStepsTrackerPlaygroundRoute:
        return MaterialPageRoute(
          builder: (context) => const IosStepsTrackerPlayground(),
        );
      case iosCaloriesTrackerPlaygroundRoute:
        return MaterialPageRoute(
          builder: (context) => const IosCaloriesTrackerPlayground(),
        );
      default:
        return null;
    }
  }
}
