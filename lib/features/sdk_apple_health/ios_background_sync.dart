import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/preferences.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';

const String iosBackgroundSyncRoute = '/ios/background-sync';

class IOSBackgroundSync extends StatefulWidget {
  const IOSBackgroundSync({super.key});

  @override
  State<IOSBackgroundSync> createState() => _IOSBackgroundSyncState();
}

class _IOSBackgroundSyncState extends State<IOSBackgroundSync> {
  final Logger logger = Logger('IOSBackgroundSync');

  bool backgroundChecked = false;

  ConsoleOutput backgroundSyncOutput = ConsoleOutput();
  final ConsoleOutput backgroundErrorsOutput = ConsoleOutput();

  StreamSubscription<Exception>? backgroundErrorsSubscription;

  @override
  void initState() {
    backgroundErrorsSubscription = AHRookHelpers.backgroundErrorsUpdates.listen(
      (backgroundError) {
        setState(
          () => backgroundErrorsOutput.append(backgroundError.toString()),
        );
      },
    );

    automaticallyStartBackgroundSync();
    super.initState();
  }

  @override
  void dispose() {
    backgroundErrorsSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Background Sync',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          CheckboxListTile(
            title: const Text("Background Sync"),
            value: backgroundChecked,
            onChanged: (value) {},
          ),
          Text(backgroundSyncOutput.current),
          FilledButton(
            onPressed: backgroundChecked
                ? disableBackgroundSync
                : enableBackgroundSync,
            child: Text(
              backgroundChecked
                  ? "Disable Background Sync"
                  : "Enable Background Sync",
            ),
          ),
          const SectionTitle('Background errors'),
          Text(backgroundErrorsOutput.current),
        ],
      ),
    );
  }

  void automaticallyStartBackgroundSync() async {
    final autoSyncAcceptation = await AppPreferences().getAutoSyncAcceptation();

    if (autoSyncAcceptation) {
      backgroundSyncOutput.clear();

      setState(() {
        backgroundSyncOutput.append("Enabling background sync...");
      });

      AHRookBackgroundSync.enableBackground(
        clientUUID: Secrets.clientUUID,
        secretKey: Secrets.secretKey,
        environment: rookEnvironment,
        enableNativeLogs: isDebug,
      ).then((_) {
        setState(() {
          backgroundSyncOutput.append("Background sync enabled");
        });
      }).catchError((error) {
        setState(() {
          backgroundSyncOutput.append(
            "Error enabling background sync $error",
          );
        });
      });
    } else {
      backgroundSyncOutput.clear();

      setState(() {
        backgroundSyncOutput.append("Disabling background sync...");
      });

      AHRookBackgroundSync.disableBackground().then((_) {
        setState(() {
          backgroundSyncOutput.append("Background sync disabled");
        });
      }).catchError((error) {
        setState(() {
          backgroundSyncOutput.append(
            "Error disabling background sync $error",
          );
        });
      });
    }

    setState(() {
      backgroundChecked = autoSyncAcceptation;
    });
  }

  void enableBackgroundSync() async {
    await AppPreferences().setAutoSyncAcceptation(true);
    automaticallyStartBackgroundSync();
  }

  void disableBackgroundSync() async {
    await AppPreferences().setAutoSyncAcceptation(false);
    automaticallyStartBackgroundSync();
  }
}
