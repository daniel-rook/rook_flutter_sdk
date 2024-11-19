import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
import 'package:url_launcher/url_launcher.dart';

const String androidPermissionsRoute = '/android/permissions';

class AndroidPermissions extends StatefulWidget {
  const AndroidPermissions({super.key});

  @override
  State<AndroidPermissions> createState() => _AndroidPermissionsState();
}

class _AndroidPermissionsState extends State<AndroidPermissions> {
  final Logger logger = Logger('AndroidPermissions');

  final ConsoleOutput hcAvailabilityOutput = ConsoleOutput();
  final ConsoleOutput checkHCPermissionsOutput = ConsoleOutput();
  final ConsoleOutput requestHCPermissionsOutput = ConsoleOutput();
  final ConsoleOutput openHealthConnectOutput = ConsoleOutput();
  final ConsoleOutput checkAndroidPermissionsOutput = ConsoleOutput();
  final ConsoleOutput requestAndroidPermissionsOutput = ConsoleOutput();

  StreamSubscription<bool>? healthConnectPermissionsSubscription;
  StreamSubscription<bool>? androidPermissionsSubscription;

  @override
  void initState() {
    healthConnectPermissionsSubscription = HCRookHealthPermissionsManager
        .requestHealthConnectPermissionsUpdates
        .listen((permissionsGranted) {
      setState(() {
        checkHCPermissionsOutput.append('Permissions granted');
        requestHCPermissionsOutput.append('Permissions granted');
      });
    });

    androidPermissionsSubscription = HCRookHealthPermissionsManager
        .requestAndroidPermissionsUpdates
        .listen((permissionsGranted) {
      setState(() {
        checkAndroidPermissionsOutput.append('Permissions granted');
        requestAndroidPermissionsOutput.append('Permissions granted');
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    healthConnectPermissionsSubscription?.cancel();
    androidPermissionsSubscription?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Permissions',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const SectionTitle('Health Connect availability'),
          Text(hcAvailabilityOutput.current),
          FilledButton(
            onPressed: checkHCAvailability,
            child: const Text('checkHealthConnectAvailability'),
          ),
          const SectionTitle('Download Health Connect'),
          FilledButton(
            onPressed: downloadHealthConnect,
            child: const Text('Download Health Connect'),
          ),
          const SectionTitle('Health Connect permissions'),
          Text(checkHCPermissionsOutput.current),
          FilledButton(
            onPressed: checkHealthConnectPermissions,
            child: const Text('checkHealthConnectPermissions'),
          ),
          Text(requestHCPermissionsOutput.current),
          FilledButton(
            onPressed: requestHealthConnectPermissions,
            child: const Text('requestHealthConnectPermissions'),
          ),
          Text(openHealthConnectOutput.current),
          FilledButton(
            onPressed: openHealthConnect,
            child: const Text('openHealthConnectSettings'),
          ),
          const SectionTitle('Android permissions'),
          Text(checkAndroidPermissionsOutput.current),
          FilledButton(
            onPressed: checkAndroidPermissions,
            child: const Text('checkAndroidPermissions'),
          ),
          Text(requestAndroidPermissionsOutput.current),
          FilledButton(
            onPressed: requestAndroidPermissions,
            child: const Text('requestAndroidPermissions'),
          ),
          const FilledButton(
            onPressed: AppSettings.openAppSettings,
            child: Text('openAppSettings'),
          ),
        ],
      ),
    );
  }

  void checkHCAvailability() {
    hcAvailabilityOutput.clear();

    setState(() {
      hcAvailabilityOutput.append('Verifying Health Connect availability...');
    });

    HCRookHealthPermissionsManager.checkHealthConnectAvailability()
        .then((hcAvailability) {
      final message = switch (hcAvailability) {
        HCAvailabilityStatus.installed => 'Health Connect is installed!',
        HCAvailabilityStatus.notInstalled => 'Health Connect not installed.',
        _ => 'This device is not compatible with health connect.',
      };

      setState(() {
        hcAvailabilityOutput.append(message);
      });
    }).catchError((error) {
      setState(() {
        hcAvailabilityOutput
            .append('Error verifying Health Connect availability: $error');
      });
    });
  }

  void downloadHealthConnect() async {
    try {
      await launchUrl(Uri.parse(
        'https://play.google.com/store/apps/details?id=com.google.android.apps.healthdata',
      ));
    } catch (ignored) {
      // Ignored
    }
  }

  void checkHealthConnectPermissions() {
    checkHCPermissionsOutput.clear();

    setState(() {
      checkHCPermissionsOutput
          .append('Verifying Health Connect permissions...');
    });

    HCRookHealthPermissionsManager.checkHealthConnectPermissions()
        .then((permissionsGranted) {
      String message = switch (permissionsGranted) {
        true => 'Permissions granted',
        false => 'There is one or more missing permissions',
      };

      setState(() {
        checkHCPermissionsOutput.append(message);
      });
    }).catchError((error) {
      setState(() {
        checkHCPermissionsOutput
            .append('Error verifying Health Connect permissions: $error');
      });
    });
  }

  void requestHealthConnectPermissions() {
    requestHCPermissionsOutput.clear();

    setState(() {
      requestHCPermissionsOutput
          .append('Requesting Health Connect permissions...');
    });

    HCRookHealthPermissionsManager.requestHealthConnectPermissions()
        .then((requestPermissionsStatus) {
      String message = switch (requestPermissionsStatus) {
        RequestPermissionsStatus.alreadyGranted =>
          'Permissions already granted',
        RequestPermissionsStatus.requestSent =>
          'Permissions request sent, if nothing happens open Health Connect settings and give permissions manually',
      };

      setState(() {
        requestHCPermissionsOutput.append(message);
      });
    }).catchError((error) {
      setState(() {
        requestHCPermissionsOutput
            .append('Error requesting Health Connect permissions: $error');
      });
    });
  }

  void openHealthConnect() {
    openHealthConnectOutput.clear();

    setState(() {
      openHealthConnectOutput.append('Opening Health Connect settings...');
    });

    HCRookHealthPermissionsManager.openHealthConnectSettings().then((_) {
      setState(() {
        openHealthConnectOutput.append('Health Connect settings were opened');
      });
    }).catchError((error) {
      setState(() {
        openHealthConnectOutput
            .append('Error opening Health Connect settings: $error');
      });
    });
  }

  void checkAndroidPermissions() {
    checkAndroidPermissionsOutput.clear();

    setState(() {
      checkAndroidPermissionsOutput.append('Verifying Android permissions...');
    });

    HCRookHealthPermissionsManager.checkAndroidPermissions()
        .then((permissionsGranted) {
      String message = switch (permissionsGranted) {
        true => 'Permissions granted',
        false => 'There is one or more missing permissions',
      };

      setState(() {
        checkAndroidPermissionsOutput.append(message);
      });
    }).catchError((error) {
      setState(() {
        checkAndroidPermissionsOutput
            .append('Error verifying Android permissions: $error');
      });
    });
  }

  void requestAndroidPermissions() async {
    requestAndroidPermissionsOutput.clear();

    setState(() {
      requestAndroidPermissionsOutput
          .append('Verifying if permissions should be requested...');
    });

    try {
      final shouldRequestPermissions = await HCRookHealthPermissionsManager
          .shouldRequestAndroidPermissions();

      if (shouldRequestPermissions) {
        setState(() {
          requestAndroidPermissionsOutput
              .append('Requesting Android permissions...');
        });

        final requestPermissionsStatus =
            await HCRookHealthPermissionsManager.requestAndroidPermissions();

        String message = switch (requestPermissionsStatus) {
          RequestPermissionsStatus.alreadyGranted =>
            'Permissions already granted',
          RequestPermissionsStatus.requestSent => 'Permissions request sent',
        };

        setState(() {
          checkAndroidPermissionsOutput.append(message);
        });
      } else {
        setState(() {
          requestAndroidPermissionsOutput.append(
              'Android permissions previously denied, open app settings and give permissions manually');
        });
      }
    } catch (error) {
      setState(() {
        checkAndroidPermissionsOutput
            .append('Error requesting Android permissions: $error');
      });
    }
  }
}
