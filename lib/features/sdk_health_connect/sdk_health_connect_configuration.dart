import 'package:flutter/material.dart';
import 'package:focus_detector/focus_detector.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/environments.dart';
import 'package:rook_flutter_sdk/common/widget/data_sources_bottom_sheet.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/android_background_steps.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/sdk_health_connect_playground.dart';
import 'package:rook_flutter_sdk/features/sdk_health_connect/yesterday_sync.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String sdkHealthConnectConfigurationRoute =
    '/sdk-health-connect/configuration';

class SdkHealthConnectConfiguration extends StatefulWidget {
  const SdkHealthConnectConfiguration({super.key});

  @override
  State<SdkHealthConnectConfiguration> createState() =>
      _SdkHealthConnectConfigurationState();
}

class _SdkHealthConnectConfigurationState
    extends State<SdkHealthConnectConfiguration> {
  final Logger logger = Logger('SdkHealthConnectConfiguration');

  final ConsoleOutput configurationOutput = ConsoleOutput();
  final ConsoleOutput initializeOutput = ConsoleOutput();
  final ConsoleOutput updateUserOutput = ConsoleOutput();

  bool enableNavigation = false;

  final _formKey = GlobalKey<FormFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'SDK Health Connect Configuration',
      child: FocusDetector(
        onFocusGained: attemptToEnableYesterdaySync,
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
            const SizedBox(height: 20),
            FilledButton(
              onPressed: enableNavigation
                  ? () => Navigator.of(context).pushNamed(
                        sdkHealthConnectPlaygroundRoute,
                      )
                  : null,
              child: const Text('Health Connect'),
            ),
            FilledButton(
              onPressed: enableNavigation
                  ? () => Navigator.of(context).pushNamed(
                        androidBackgroundStepsRoute,
                      )
                  : null,
              child: const Text('Background Steps'),
            ),
            FilledButton(
              onPressed: enableNavigation
                  ? () => Navigator.of(context).pushNamed(
                        yesterdaySyncRoute,
                      )
                  : null,
              child: const Text('Yesterday Sync'),
            ),
            FilledButton(
              onPressed: enableNavigation ? loadDataSources : null,
              child: const Text('Connections page (data sources list)'),
            ),
            FilledButton(
              onPressed: enableNavigation
                  ? () {
                      HCRookDataSources.presentDataSourceView(
                        redirectUrl: "https://tryrook.io",
                      );
                    }
                  : null,
              child: const Text('Connections page (pre-built)'),
            ),
          ],
        ),
      ),
    );
  }

  void attemptToEnableYesterdaySync() {
    // Already using the enableBackgroundSync parameter on RookConfiguration,
    // the following is not necessary

    // logger.info('Attempting to enable yesterday sync...');
    //
    // SharedPreferences.getInstance().then((prefs) {
    //   final userAcceptedYesterdaySync =
    //       prefs.getBool("ACCEPTED_YESTERDAY_SYNC") ?? false;
    //
    //   if (userAcceptedYesterdaySync) {
    //     logger.info('User accepted yesterday sync');
    //
    //     HCRookYesterdaySyncManager.scheduleYesterdaySync(
    //       enableNativeLogs: isDebug,
    //       clientUUID: Secrets.clientUUID,
    //       secretKey: Secrets.secretKey,
    //       environment: rookEnvironment,
    //       doOnEnd: HCSyncInstruction.nothing,
    //     );
    //   } else {
    //     logger.info('User did not accept yesterday sync');
    //   }
    // });
  }

  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Cannot be empty';
    }
    return null;
  }

  void setConfiguration() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final enableBackgroundSync = sharedPreferences.getBool(
      "ACCEPTED_YESTERDAY_SYNC",
    );

    final rookConfiguration = RookConfiguration(
      clientUUID: Secrets.clientUUID,
      secretKey: Secrets.secretKey,
      environment: rookEnvironment,
      enableBackgroundSync: enableBackgroundSync ?? false,
    );

    configurationOutput.clear();

    configurationOutput.append('Using configuration:');
    configurationOutput.append('$rookConfiguration');

    if (isDebug) {
      HCRookConfigurationManager.enableNativeLogs();
    }

    HCRookConfigurationManager.setConfiguration(rookConfiguration);

    setState(
        () => configurationOutput.append('Configuration set successfully'));
  }

  void initialize() {
    initializeOutput.clear();

    setState(() => initializeOutput.append('Initializing...'));

    HCRookConfigurationManager.initRook().then((_) {
      setState(() => initializeOutput.append('SDK initialized successfully'));
      checkUserIDRegistered();
    }).catchError((exception) {
      final error = switch (exception) {
        (MissingConfigurationException it) =>
          'MissingConfigurationException: ${it.message}',
        (SDKNotAuthorizedException it) =>
          'SDKNotAuthorizedException: ${it.message}',
        (ConnectTimeoutException it) => 'TimeoutException: ${it.message}',
        _ => exception.toString(),
      };

      initializeOutput.append('Error initializing SDK:');
      setState(() => initializeOutput.append(error));
    });
  }

  void checkUserIDRegistered() {
    updateUserOutput.clear();

    HCRookConfigurationManager.getUserID().then((userID) {
      if (userID != null) {
        setState(() {
          updateUserOutput
              .append('Found local userID $userID, you can skip step 3');
          enableNavigation = true;
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

    setState(() => updateUserOutput.append('Updating userID...'));

    HCRookConfigurationManager.updateUserID(userID!).then((_) {
      setState(() {
        updateUserOutput.append('userID updated successfully');
        enableNavigation = true;
      });
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (ConnectTimeoutException it) => 'TimeoutException: ${it.message}',
        _ => exception.toString(),
      };

      updateUserOutput.append('Error updating userID:');
      setState(() => updateUserOutput.append(error));
    });
  }

  void deleteUser() {
    logger.info('Deleting user from rook...');

    HCRookConfigurationManager.deleteUserFromRook().then((_) {
      logger.info('User deleted from rook');
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        _ => exception.toString(),
      };

      logger.info('Error deleting user from rook:');
      logger.info(error);
    });
  }

  void updateTimeZoneInformation() {
    logger.info('Updating user timezone...');

    HCRookConfigurationManager.syncUserTimeZone().then((_) {
      logger.info('User timezone updated successfully');
    }).catchError((exception) {
      final error = switch (exception) {
        (SDKNotInitializedException it) =>
          'SDKNotInitializedException: ${it.message}',
        (UserNotInitializedException it) =>
          'UserNotInitializedException: ${it.message}',
        (ConnectTimeoutException it) =>
          'ConnectTimeoutException: ${it.message}',
        (HttpRequestException it) => 'HttpRequestException: ${it.error}',
        _ => exception.toString(),
      };

      logger.info('Error updating user timezone:');
      logger.info(error);
    });
  }

  void loadDataSources() {
    showModalBottomSheet<void>(
      context: context,
      enableDrag: false,
      builder: (BuildContext context) {
        return FutureBuilder(
          future: HCRookDataSources.getAvailableDataSources(
            redirectUrl: null,
          ),
          builder: (
            BuildContext ctx,
            AsyncSnapshot<List<DataSource>> snapshot,
          ) {
            if (snapshot.connectionState == ConnectionState.waiting) {
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
