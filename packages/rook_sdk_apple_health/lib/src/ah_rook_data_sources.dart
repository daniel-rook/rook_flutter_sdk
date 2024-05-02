import 'package:rook_sdk_apple_health/src/platform/rook_sdk_apple_health_platform_interface.dart';

class AHRookDataSources {
  AHRookDataSources._();

  static Future<void> presentDataSourceView() {
    return RookSdkAppleHealthPlatform.instance.presentDataSourceView();
  }
}