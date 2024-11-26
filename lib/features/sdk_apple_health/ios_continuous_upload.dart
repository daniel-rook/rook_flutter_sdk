import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String iosContinuousUploadRoute = '/ios/continuous-upload';

class IOSContinuousUpload extends StatefulWidget {
  const IOSContinuousUpload({super.key});

  @override
  State<IOSContinuousUpload> createState() => _IOSContinuousUploadState();
}

class _IOSContinuousUploadState extends State<IOSContinuousUpload> {
  final Logger logger = Logger('IOSContinuousUpload');

  SharedPreferences? sharedPreferences;
  bool continuousChecked = false;

  ConsoleOutput continuousUploadOutput = ConsoleOutput();

  @override
  void initState() {
    SharedPreferences.getInstance().then((value) => sharedPreferences = value);

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
    final acceptedContinuous =
        sharedPreferences?.getBool(acceptedIosContinuousKey) ?? false;

    if (acceptedContinuous) {
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
      continuousChecked = acceptedContinuous;
    });
  }

  void enableContinuousUpload() {
    sharedPreferences?.setBool(acceptedIosContinuousKey, true);
    automaticallyStartContinuousUpload();
  }

  void disableContinuousUpload() {
    sharedPreferences?.setBool(acceptedIosContinuousKey, false);
    automaticallyStartContinuousUpload();
  }
}

const acceptedIosContinuousKey = "ACCEPTED_IOS_CONTINUOUS";
