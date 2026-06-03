import 'dart:io';

import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/sdk/api_sources/api_sources.dart';
import 'package:rook_flutter_sdk/sdk/sdk_apple_health/ios_configuration.dart';
import 'package:rook_flutter_sdk/sdk/sdk_health_connect/android_configuration.dart';
import 'package:rook_flutter_sdk/sdk/sdk_samsung_health/samsung_configuration.dart';

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
          if (Platform.isAndroid)
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamed(androidConfigurationRoute);
              },
              child: const Text("Health Connect"),
            ),
          if (Platform.isAndroid)
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamed(samsungConfigurationRoute);
              },
              child: const Text("Samsung Health"),
            ),
          if (Platform.isIOS)
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
