import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String iosBackgroundSyncRoute = '/ios/background-sync';

class IOSBackgroundSync extends StatefulWidget {
  const IOSBackgroundSync({super.key});

  @override
  State<IOSBackgroundSync> createState() => _IOSBackgroundSyncState();
}

class _IOSBackgroundSyncState extends State<IOSBackgroundSync> {
  final Logger logger = Logger('IOSBackgroundSync');

  SharedPreferences? sharedPreferences;
  bool backgroundChecked = false;

  ConsoleOutput backgroundSyncOutput = ConsoleOutput();
  final ConsoleOutput backgroundErrorsOutput = ConsoleOutput();

  StreamSubscription<Exception>? backgroundErrorsSubscription;

  @override
  void initState() {
    SharedPreferences.getInstance().then((value) => sharedPreferences = value);

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
    final acceptedBackground =
        sharedPreferences?.getBool(acceptedIosBackgroundKey) ?? false;

    if (acceptedBackground) {
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
      backgroundChecked = acceptedBackground;
    });
  }

  void enableBackgroundSync() {
    sharedPreferences?.setBool(acceptedIosBackgroundKey, true);
    automaticallyStartBackgroundSync();
  }

  void disableBackgroundSync() {
    sharedPreferences?.setBool(acceptedIosBackgroundKey, false);
    automaticallyStartBackgroundSync();
  }
}

const acceptedIosBackgroundKey = "ACCEPTED_IOS_BACKGROUND";
