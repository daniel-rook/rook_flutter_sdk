import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/preferences.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_background_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_permissions.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_sync.dart';
import 'package:rook_flutter_sdk/features/sdk_samsung_health/samsung_user_management.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/rook_sdk_samsung_health.dart';

const String samsungConfigurationRoute = '/samsung/configuration';

class SamsungConfiguration extends StatefulWidget {
  const SamsungConfiguration({super.key});

  @override
  State<SamsungConfiguration> createState() => _SamsungConfigurationState();
}

class _SamsungConfigurationState extends State<SamsungConfiguration> {
  final Logger logger = Logger('SamsungConfiguration');

  final ConsoleOutput configurationOutput = ConsoleOutput();
  final ConsoleOutput initializeOutput = ConsoleOutput();
  final ConsoleOutput updateUserOutput = ConsoleOutput();

  bool enableNavigation = false;

  final _formKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'SDK Configuration',
      child: Column(
        children: [
          const SectionTitle('1. Initialize SDK'),
          Text(configurationOutput.current),
          Text(initializeOutput.current),
          FilledButton(
            onPressed: initialize,
            child: const Text('initRook'),
          ),
          const SectionTitle('2. Update user ID'),
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
                ? () => Navigator.of(context).pushNamed(
                      samsungUserManagementRoute,
                    )
                : null,
            child: const Text('User management'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(
                      samsungPermissionsRoute,
                    )
                : null,
            child: const Text('Permissions'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(
                      samsungSyncRoute,
                    )
                : null,
            child: const Text('Manually sync health data'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () => Navigator.of(context).pushNamed(
                      samsungBackgroundSyncRoute,
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

  void initialize() async {
    final autoSyncAcceptation =
        await AppPreferences().getSamsungAutoSyncAcceptation();

    final configuration = RookConfiguration(
      clientUUID: Secrets.clientUUID,
      secretKey: Secrets.secretKey,
      environment: rookEnvironment,
      // This should be based on user choice: autoSyncAcceptation
      enableBackgroundSync: true,
    );

    configurationOutput.clear();

    configurationOutput.append('Using configuration:');
    configurationOutput.append('$configuration');

    if (isDebug) {
      RookSamsung.enableNativeLogs();
    }

    setState(() {
      configurationOutput.append('Configuration set successfully');
    });

    initializeOutput.clear();

    setState(() {
      initializeOutput.append('Initializing...');
    });

    RookSamsung.initRook(configuration).then((_) {
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

    RookSamsung.getUserID().then((userID) {
      if (userID != null) {
        setState(() {
          updateUserOutput
              .append('Found local userID $userID, you can skip step 3');
          enableNavigation = true;
        });
      } else {
        setState(() {
          updateUserOutput
              .append('Local userID not found, please set a userID');
        });
      }
    });
  }

  void updateUserID(String? userID) {
    updateUserOutput.clear();

    setState(() {
      updateUserOutput.append('Updating userID...');
    });

    RookSamsung.updateUserID(userID!).then((_) {
      setState(() {
        updateUserOutput.append('userID updated successfully');
        enableNavigation = true;
      });
    }).catchError((error) {
      setState(() {
        updateUserOutput.append('Error updating userID: $error');
      });
    });
  }
}
