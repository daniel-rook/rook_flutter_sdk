import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/preferences.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';

const String iosContinuousUploadRoute = '/ios/continuous-upload';

class IOSContinuousUpload extends StatefulWidget {
  const IOSContinuousUpload({super.key});

  @override
  State<IOSContinuousUpload> createState() => _IOSContinuousUploadState();
}

class _IOSContinuousUploadState extends State<IOSContinuousUpload> {
  final Logger logger = Logger('IOSContinuousUpload');

  bool continuousChecked = false;

  ConsoleOutput continuousUploadOutput = ConsoleOutput();

  @override
  void initState() {
    automaticallyStartContinuousUpload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Continuous upload',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          CheckboxListTile(
            title: const Text("Continuous Upload"),
            value: continuousChecked,
            onChanged: (value) {},
          ),
          Text(continuousUploadOutput.current),
          FilledButton(
            onPressed: continuousChecked
                ? disableContinuousUpload
                : enableContinuousUpload,
            child: Text(
              continuousChecked
                  ? "Disable Continuous Upload"
                  : "Enable Continuous Upload",
            ),
          ),
        ],
      ),
    );
  }

  void automaticallyStartContinuousUpload() async {
    final autoSyncAcceptation = await AppPreferences().getAutoSyncAcceptation();

    if (autoSyncAcceptation) {
      continuousUploadOutput.clear();

      setState(() {
        continuousUploadOutput.append("Enabling continuous upload...");
      });

      AHRookContinuousUpload.enableContinuousUpload(
        clientUUID: Secrets.clientUUID,
        secretKey: Secrets.secretKey,
        environment: rookEnvironment,
        enableNativeLogs: isDebug,
      ).then((_) {
        setState(() {
          continuousUploadOutput.append("Continuous upload enabled");
        });
      }).catchError((error) {
        setState(() {
          continuousUploadOutput.append(
            "Error enabling continuous upload $error",
          );
        });
      });
    } else {
      continuousUploadOutput.clear();

      setState(() {
        continuousUploadOutput.append("Disabling continuous upload...");
      });

      AHRookContinuousUpload.disableContinuousUpload().then((_) {
        setState(() {
          continuousUploadOutput.append("Continuous upload disabled");
        });
      }).catchError((error) {
        setState(() {
          continuousUploadOutput.append(
            "Error disabling continuous upload $error",
          );
        });
      });
    }

    setState(() {
      continuousChecked = autoSyncAcceptation;
    });
  }

  void enableContinuousUpload() async {
    await AppPreferences().setAutoSyncAcceptation(true);
    automaticallyStartContinuousUpload();
  }

  void disableContinuousUpload() async {
    await AppPreferences().setAutoSyncAcceptation(false);
    automaticallyStartContinuousUpload();
  }
}
