import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/features/api_sources/api_sources.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_configuration.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_configuration.dart';

const String menuRoute = '/menu';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Menu',
      child: Column(
        children: [
          FilledButton(
            onPressed: () {
              Navigator.of(context).pushNamed(apiSourcesRoute);
            },
            child: const Text("Api Sources"),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pushNamed(androidConfigurationRoute);
            },
            child: const Text("Health Connect"),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pushNamed(samsungConfigurationRoute);
            },
            child: const Text("Samsung Health"),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).pushNamed(iosConfigurationRoute);
            },
            child: const Text("Apple Health"),
          ),
        ],
      ),
    );
  }
}
