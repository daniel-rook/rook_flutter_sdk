import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_background_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_continuous_upload.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_data_sources.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_user_management.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_background_steps.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_background_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_continuous_upload.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_data_sources.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_permissions.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_user_management.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_background_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_permissions.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_user_management.dart';

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
      case androidBackgroundSyncRoute:
        return MaterialPageRoute(
          builder: (context) => const AndroidBackgroundSync(),
        );
      case samsungConfigurationRoute:
        return MaterialPageRoute(
          builder: (context) => const SamsungConfiguration(),
        );
      case samsungUserManagementRoute:
        return MaterialPageRoute(
          builder: (context) => const SamsungUserManagement(),
        );
      case samsungPermissionsRoute:
        return MaterialPageRoute(
          builder: (context) => const SamsungPermissions(),
        );
      case samsungSyncRoute:
        return MaterialPageRoute(
          builder: (context) => const SamsungSync(),
        );
      case samsungBackgroundSyncRoute:
        return MaterialPageRoute(
          builder: (context) => const SamsungBackgroundSync(),
        );
      case iosConfigurationRoute:
        return MaterialPageRoute(
          builder: (context) => const IOSConfiguration(),
        );
      case iosUserManagementRoute:
        return MaterialPageRoute(
          builder: (context) => const IOSUserManagement(),
        );
      case iosDataSourcesRoute:
        return MaterialPageRoute(
          builder: (context) => const IOSDataSources(),
        );
      case iosSyncRoute:
        return MaterialPageRoute(
          builder: (context) => const IOSSync(),
        );
      case iosContinuousUploadRoute:
        return MaterialPageRoute(
          builder: (context) => const IOSContinuousUpload(),
        );
      case iosBackgroundSyncRoute:
        return MaterialPageRoute(
          builder: (context) => const IOSBackgroundSync(),
        );
      default:
        return null;
    }
  }
}
