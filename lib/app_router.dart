import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/sdk_apple_health_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/sdk_apple_health_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_background_steps.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_continuous_upload.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_data_sources.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_permissions.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_user_management.dart';

class AppRouter {
  Route<Object?>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case androidConfigurationRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidConfiguration(),
        );
      case androidBackgroundStepsRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidBackgroundSteps(),
        );
      case androidUserManagementRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidUserManagement(),
        );
      case androidDataSourcesRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidDataSources(),
        );
      case androidPermissionsRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidPermissions(),
        );
      case androidSyncRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidSync(),
        );
      case androidContinuousUploadRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidContinuousUpload(),
        );
      case sdkAppleHealthConfigurationRoute:
        return MaterialPageRoute(
          builder: (context) => const SdkAppleHealthConfiguration(),
        );
      case sdkAppleHealthPlaygroundRoute:
        return MaterialPageRoute(
          builder: (context) => const SdkAppleHealthPlayground(),
        );
      default:
        return null;
    }
  }
}
