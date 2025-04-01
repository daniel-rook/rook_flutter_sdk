import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/preferences.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_background_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_continuous_upload.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_data_sources.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_user_management.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

const String iosConfigurationRoute = '/ios/configuration';

class IOSConfiguration extends StatefulWidget {
  const IOSConfiguration({super.key});

  @override
  State<IOSConfiguration> createState() => _IOSConfigurationState();
}

class _IOSConfigurationState extends State<IOSConfiguration> {
  final Logger logger = Logger('IOSConfiguration');

  final ConsoleOutput configurationOutput = ConsoleOutput();
  final ConsoleOutput initializeOutput = ConsoleOutput();
  final ConsoleOutput updateUserOutput = ConsoleOutput();
  final ConsoleOutput requestAHPermissionsOutput = ConsoleOutput();

  bool enableNavigation = false;

  final _formKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'SDK Configuration',
      child: Column(
        children: [
          const SectionTitle('1. Configure SDK'),
          Text(configurationOutput.current),
          FilledButton(
            onPressed: setConfiguration,
            child: const Text('Set configuration'),
          ),
          const SectionTitle('2. Initialize SDK'),
          Text(initializeOutput.current),
          FilledButton(
            onPressed: initialize,
            child: const Text('Initialize'),
          ),
          const SectionTitle('3. Update user ID'),
          TextFormField(
            key: _formKey,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'User ID'),
            validator: validate,
            onSaved: updateUserID,
          ),
          Text(updateUserOutput.current),
          FilledButton(
            onPressed: () {
              if (_formKey.currentState?.validate() == true) {
                _formKey.currentState?.save();
              }
            },
            child: const Text('Update user'),
          ),
          const SectionTitle('4. Apple Health permissions'),
          Text(requestAHPermissionsOutput.current),
          FilledButton(
            onPressed: requestAppleHealthPermissions,
            child: const Text('requestAppleHealthPermissions'),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(
                      iosUserManagementRoute,
                    )
                : null,
            child: const Text('User management'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(
                      iosDataSourcesRoute,
                    )
                : null,
            child: const Text('Data sources'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(
                      iosSyncRoute,
                    )
                : null,
            child: const Text('Manually sync health data'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(
                      iosContinuousUploadRoute,
                    )
                : null,
            child: const Text('Continuous upload'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(
                      iosBackgroundSyncRoute,
                    )
                : null,
            child: const Text('Background sync'),
          ),
        ],
      ),
    );
  }

  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Cannot be empty';
    }
    return null;
  }

  void setConfiguration() async {
    final autoSyncAcceptation = await AppPreferences().getAutoSyncAcceptation();

    final rookConfiguration = RookConfiguration(
      clientUUID: Secrets.clientUUID,
      secretKey: Secrets.secretKey,
      environment: rookEnvironment,
      // This should be based on user choice: autoSyncAcceptation
      enableBackgroundSync: false,
    );

    configurationOutput.clear();

    configurationOutput.append('Using configuration:');
    configurationOutput.append('$rookConfiguration');

    if (isDebug) {
      AHRookConfigurationManager.enableNativeLogs();
    }

    AHRookConfigurationManager.setConfiguration(rookConfiguration);

    setState(() {
      configurationOutput.append('Configuration set successfully');
    });
  }

  void initialize() {
    initializeOutput.clear();

    setState(() {
      initializeOutput.append('Initializing...');
    });

    AHRookConfigurationManager.initRook().then((_) {
      setState(() {
        initializeOutput.append('SDK initialized successfully');
      });
      checkUserIDRegistered();
    }).catchError((error) {
      setState(() {
        initializeOutput.append('Error initializing SDK: $error');
      });
    });
  }

  void checkUserIDRegistered() {
    updateUserOutput.clear();

    AHRookConfigurationManager.getUserID().then((userID) {
      if (userID != null) {
        setState(() {
          updateUserOutput
              .append('Found local userID $userID, you can skip step 3');
        });
      } else {
        setState(
          () => updateUserOutput
              .append('Local userID not found, please set a userID'),
        );
      }
    });
  }

  void updateUserID(String? userID) {
    updateUserOutput.clear();

    setState(() {
      updateUserOutput.append('Updating userID...');
    });

    AHRookConfigurationManager.updateUserID(userID!).then((_) {
      setState(() {
        updateUserOutput.append('userID updated successfully');
      });
    }).catchError((error) {
      setState(() {
        updateUserOutput.append('Error updating userID: $error');
      });
    });
  }

  void requestAppleHealthPermissions() {
    requestAHPermissionsOutput.clear();

    setState(() {
      requestAHPermissionsOutput
          .append('Requesting Apple Health permissions...');
    });

    AHRookHealthPermissionsManager.requestPermissions().then((_) {
      setState(() {
        enableNavigation = true;
        requestAHPermissionsOutput.append(
          'Permissions request sent, if nothing happens open Apple Health settings and give permissions manually',
        );
      });
    }).catchError((error) {
      setState(() {
        requestAHPermissionsOutput.append(
          'Error requesting Apple Health permissions: $error',
        );
      });
    });
  }
}
