import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/core/domain/utils/console_output.dart';
import 'package:rook_flutter_sdk/core/domain/utils/environments.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/section_title.dart';
import 'package:rook_flutter_sdk/sdk/sdk_health_connect/android_background_steps.dart';
import 'package:rook_flutter_sdk/sdk/sdk_health_connect/android_background_sync.dart';
import 'package:rook_flutter_sdk/sdk/sdk_health_connect/android_permissions.dart';
import 'package:rook_flutter_sdk/sdk/sdk_health_connect/android_sync.dart';
import 'package:rook_flutter_sdk/sdk/sdk_health_connect/android_user_management.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidConfigurationRoute = '/android/configuration';

class AndroidConfiguration extends StatefulWidget {
  const AndroidConfiguration({super.key});

  @override
  State<AndroidConfiguration> createState() => _AndroidConfigurationState();
}

class _AndroidConfigurationState extends State<AndroidConfiguration> {
  final Logger logger = Logger('AndroidConfiguration');

  final ConsoleOutput configurationOutput = ConsoleOutput();
  final ConsoleOutput initializeOutput = ConsoleOutput();
  final ConsoleOutput updateUserOutput = ConsoleOutput();
  final ConsoleOutput diagnosticOutput = ConsoleOutput();

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
            child: const Text('setConfiguration'),
          ),
          const SectionTitle('2. Initialize SDK'),
          Text(initializeOutput.current),
          FilledButton(onPressed: initialize, child: const Text('initRook')),
          const SectionTitle('3. Update user ID'),
          TextFormField(
            key: _formKey,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'User ID',
            ),
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
            child: const Text('updateUserID'),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(
                    context,
                  ).pushNamed(androidBackgroundStepsRoute)
                : null,
            child: const Text('Background steps'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(
                    context,
                  ).pushNamed(androidUserManagementRoute)
                : null,
            child: const Text('User management'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(androidPermissionsRoute)
                : null,
            child: const Text('Permissions'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(androidSyncRoute)
                : null,
            child: const Text('Manually sync health data'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(
                    context,
                  ).pushNamed(androidBackgroundSyncRoute)
                : null,
            child: const Text('Background sync'),
          ),
          const SectionTitle("Diagnostic"),
          Text(diagnosticOutput.current),
          FilledButton(
            onPressed: getDiagnosticState,
            child: const Text("Get diagnostic state"),
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
    final rookConfiguration = RookConfiguration(
      clientUUID: Secrets.clientUUID,
      secret: Secrets.secret,
      environment: rookEnvironment,
      appId: Secrets.packageName,
      enableBackgroundSync: false,
    );

    configurationOutput.clear();

    configurationOutput.append('Using configuration:');
    configurationOutput.append('$rookConfiguration');

    if (isDebug) {
      HCRookConfigurationManager.enableNativeLogs();
    }

    HCRookConfigurationManager.setConfiguration(rookConfiguration);

    setState(() {
      configurationOutput.append('Configuration set successfully');
    });
  }

  void initialize() {
    initializeOutput.clear();

    setState(() {
      initializeOutput.append('Initializing...');
    });

    HCRookConfigurationManager.initRook()
        .then((_) {
          setState(() {
            initializeOutput.append('SDK initialized successfully');
          });
          checkUserIDRegistered();
        })
        .catchError((error) {
          setState(() {
            initializeOutput.append('Error initializing SDK: $error');
          });
        });
  }

  void checkUserIDRegistered() {
    updateUserOutput.clear();

    HCRookConfigurationManager.getUserID().then((userID) {
      if (userID != null) {
        setState(() {
          updateUserOutput.append(
            'Found local userID $userID, you can skip step 3',
          );
          enableNavigation = true;
        });
      } else {
        setState(() {
          updateUserOutput.append(
            'Local userID not found, please set a userID',
          );
        });
      }
    });
  }

  void updateUserID(String? userID) {
    updateUserOutput.clear();

    setState(() {
      updateUserOutput.append('Updating userID...');
    });

    HCRookConfigurationManager.updateUserID(userID!)
        .then((_) {
          setState(() {
            updateUserOutput.append('userID updated successfully');
            enableNavigation = true;
          });
        })
        .catchError((error) {
          setState(() {
            updateUserOutput.append('Error updating userID: $error');
          });
        });
  }

  void getDiagnosticState() async {
    diagnosticOutput.clear();

    setState(() {
      diagnosticOutput.append('Getting diagnostic state...');
    });

    try {
      final diagnosticState =
          await HCRookConfigurationManager.getDiagnosticState();

      diagnosticOutput.appendMultiple([
        "Diagnostic state retrieved",
        "IsConfigured: ${diagnosticState.isConfigured}",
        "UserIdentified: ${diagnosticState.userIdentified}",
        "Permissions: ${diagnosticState.permissions}",
        "BackgroundSyncEnabled: ${diagnosticState.backgroundSync.enabled}",
        "BackgroundSyncLastSync: ${diagnosticState.backgroundSync.lastSync}",
        "ManualSyncEnabled: ${diagnosticState.manualSync.enabled}",
        "ManualSyncLastSync: ${diagnosticState.manualSync.lastSync}",
      ]);

      setState(() {
        diagnosticOutput.append('Diagnostic state retrieved successfully');
      });
    } catch (error) {
      setState(() {
        diagnosticOutput.append('Error getting diagnostic state: $error');
      });
    }
  }
}
