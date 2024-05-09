import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/widget/data_sources_bottom_sheet.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_calories_tracker_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/ios_steps_tracker_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_apple_health/sdk_apple_health_playground.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

const String sdkAppleHealthConfigurationRoute =
    '/sdk-apple-health/configuration';

class SdkAppleHealthConfiguration extends StatefulWidget {
  const SdkAppleHealthConfiguration({super.key});

  @override
  State<SdkAppleHealthConfiguration> createState() =>
      _SdkAppleHealthConfigurationState();
}

class _SdkAppleHealthConfigurationState
    extends State<SdkAppleHealthConfiguration> {
  final Logger logger = Logger('SdkAppleHealthConfiguration');

  final rookConfigurationManager = AHRookConfigurationManager();
  final rookHealthPermissionsManager = AHRookHealthPermissionsManager();

  final ConsoleOutput configurationOutput = ConsoleOutput();
  final ConsoleOutput initializeOutput = ConsoleOutput();
  final ConsoleOutput updateUserOutput = ConsoleOutput();

  bool enableNavigation = false;

  final _formKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'SDK Apple Health Configuration',
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
          const SectionTitle('4. Request permissions'),
          FilledButton(
            onPressed: requestPermissions,
            child: const Text('Request permissions'),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: enableNavigation
                ? () =>
                Navigator.of(context).pushNamed(
                  sdkAppleHealthPlaygroundRoute,
                )
                : null,
            child: const Text('Apple Health'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () =>
                Navigator.of(context).pushNamed(
                  iosStepsTrackerPlaygroundRoute,
                )
                : null,
            child: const Text('Steps Tracker'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () =>
                Navigator.of(context).pushNamed(
                  iosCaloriesTrackerPlaygroundRoute,
                )
                : null,
            child: const Text('Calories Tracker'),
          ),
          FilledButton(
            onPressed: enableNavigation ? loadDataSources : null,
            child: const Text('Connections page (data sources list)'),
          ),
          FilledButton(
            onPressed: enableNavigation
                ? () {
              AHRookDataSources.presentDataSourceView();
            }
                : null,
            child: const Text('Connections page (pre-built)'),
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

  void setConfiguration() {
    final rookConfiguration = RookConfiguration(
      Secrets.clientUUID,
      Secrets.secretKey,
      rookEnvironment,
    );

    configurationOutput.clear();

    configurationOutput.append('Using configuration:');
    configurationOutput.append('$rookConfiguration');

    rookConfigurationManager.setConfiguration(rookConfiguration);

    setState(
            () => configurationOutput.append('Configuration set successfully'));
  }

  void initialize() {
    initializeOutput.clear();

    setState(() => initializeOutput.append('Initializing...'));

    rookConfigurationManager.initRook().then((_) {
      setState(() => initializeOutput.append('SDK initialized successfully'));
      checkUserIDRegistered();
    }).catchError((exception) {
      final error = switch (exception) {
        (MissingConfigurationException it) =>
        'MissingConfigurationException: ${it.message}',
        _ => exception.toString(),
      };

      initializeOutput.append('Error initializing SDK:');
      setState(() => initializeOutput.append(error));
    });
  }

  void checkUserIDRegistered() {
    updateUserOutput.clear();

    rookConfigurationManager.getUserID().then((userID) {
      if (userID != null) {
        setState(() {
          updateUserOutput
              .append('Found local userID $userID, you can skip step 3');
        });
      } else {
        setState(
              () =>
              updateUserOutput
                  .append('Local userID not found, please set a userID'),
        );
      }
    });
  }

  void updateUserID(String? userID) {
    updateUserOutput.clear();

    setState(() => updateUserOutput.append('Updating userID...'));

    rookConfigurationManager.updateUserID(userID!).then((_) {
      setState(() {
        updateUserOutput.append('userID updated successfully');
      });
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      updateUserOutput.append('Error updating userID:');
      setState(() => updateUserOutput.append(error));
    });
  }

  void deleteUser() {
    logger.info('Deleting user from rook...');

    rookConfigurationManager.deleteUserFromRook().then((_) {
      logger.info('User deleted from rook');
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error deleting user from rook:');
      logger.info(error);
    });
  }

  void updateTimeZoneInformation() {
    logger.info('Updating user timezone...');

    rookConfigurationManager.syncUserTimeZone().then((_) {
      logger.info('User timezone updated successfully');
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error updating user timezone:');
      logger.info(error);
    });
  }

  void requestPermissions() {
    logger.info('Requesting all permissions...');

    rookHealthPermissionsManager.requestAllPermissions().then((_) {
      logger.info('All permissions request sent');

      setState(() => enableNavigation = true);
    }).catchError((exception) {
      final error = switch (exception) {
        _ => exception.toString(),
      };

      logger.info('Error requesting all permissions:');
      logger.info(error);
    });
  }

  void loadDataSources() {
    showModalBottomSheet<void>(
      context: context,
      enableDrag: false,
      builder: (BuildContext context) {
        return FutureBuilder(
          future: AHRookDataSources.getAvailableDataSources(),
          builder: (BuildContext ctx,
              AsyncSnapshot<List<DataSource>> snapshot,) {
            if (snapshot.connectionState ==
                ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return dataSourcesBottomSheet(
                ctx,
                snapshot.data!,
              );
            }
          },
        );
      },
    );
  }
}
