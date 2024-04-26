import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_calories_tracker_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_steps_tracker_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/sdk_apple_health_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/sdk_apple_health_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_background_steps.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/sdk_health_connect_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/sdk_health_connect_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/yesterday_sync.dart';

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
      case androidBackgroundStepsRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidBackgroundSteps(),
        );
      case yesterdaySyncRoute:
        return MaterialPageRoute(
          builder: (context) => const YesterdaySync(),
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
