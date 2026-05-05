import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/core/data/preferences/demo_preferences.dart';
import 'package:rook_flutter_sdk/core/domain/utils/console_output.dart';
import 'package:rook_flutter_sdk/core/domain/utils/environments.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/scrollable_scaffold.dart';
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
    final enabled = await DemoPreferences().getAppleHealthContinuousUpload();

    if (enabled) {
      continuousUploadOutput.clear();

      setState(() {
        continuousUploadOutput.append("Enabling continuous upload...");
      });

      AHRookContinuousUpload.enableContinuousUpload(enableNativeLogs: isDebug)
          .then((_) {
            setState(() {
              continuousUploadOutput.append("Continuous upload enabled");
            });
          })
          .catchError((error) {
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

      AHRookContinuousUpload.disableContinuousUpload()
          .then((_) {
            setState(() {
              continuousUploadOutput.append("Continuous upload disabled");
            });
          })
          .catchError((error) {
            setState(() {
              continuousUploadOutput.append(
                "Error disabling continuous upload $error",
              );
            });
          });
    }

    setState(() {
      continuousChecked = enabled;
    });
  }

  void enableContinuousUpload() async {
    await DemoPreferences().setAppleHealthContinuousUpload(true);
    automaticallyStartContinuousUpload();
  }

  void disableContinuousUpload() async {
    await DemoPreferences().setAppleHealthContinuousUpload(false);
    automaticallyStartContinuousUpload();
  }
}
