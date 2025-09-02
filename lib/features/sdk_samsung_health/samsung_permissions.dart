import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/rook_sdk_samsung_health.dart';
import 'package:url_launcher/url_launcher.dart';

const String samsungPermissionsRoute = '/samsung/permissions';

class SamsungPermissions extends StatefulWidget {
  const SamsungPermissions({super.key});

  @override
  State<SamsungPermissions> createState() => _SamsungPermissionsState();
}

class _SamsungPermissionsState extends State<SamsungPermissions> {
  final Logger logger = Logger('SamsungPermissions');

  final ConsoleOutput checkAvailabilityOutput = ConsoleOutput();
  final ConsoleOutput checkPermissionsOutput = ConsoleOutput();
  final ConsoleOutput checkPermissionsPartiallyOutput = ConsoleOutput();
  final ConsoleOutput requestPermissionsOutput = ConsoleOutput();

  StreamSubscription<SamsungHealthPermissionsSummary>?
      samsungHealthPermissionsSubscription;

  @override
  void initState() {
    samsungHealthPermissionsSubscription = RookSamsung
        .requestSamsungHealthPermissionsUpdates
        .listen((permissionsSummary) {
      if (permissionsSummary.dataTypesGranted) {
        setState(() {
          checkPermissionsOutput.append('Permissions granted');
          checkPermissionsPartiallyOutput.append(
            'Permissions partially granted',
          );
          requestPermissionsOutput.append('Permissions granted');
        });
      } else {
        setState(() {
          checkPermissionsOutput.append(
            "There is one or more missing permissions",
          );
          requestPermissionsOutput.append(
            "There is one or more missing permissions",
          );
        });
      }

      if (permissionsSummary.dataTypesPartiallyGranted) {
        setState(() {
          checkPermissionsPartiallyOutput.append(
            'Permissions partially granted',
          );
        });
      } else {
        setState(() {
          checkPermissionsPartiallyOutput.append("No permission granted");
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    samsungHealthPermissionsSubscription?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Permissions',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const SectionTitle('Samsung Health availability'),
          Text(checkAvailabilityOutput.current),
          FilledButton(
            onPressed: checkAvailability,
            child: const Text('checkSamsungHealthAvailability'),
          ),
          const SectionTitle('Download Samsung Health'),
          FilledButton(
            onPressed: downloadSamsungHealth,
            child: const Text('Download Samsung Health'),
          ),
          const SectionTitle('Samsung Health permissions'),
          Text(checkPermissionsOutput.current),
          FilledButton(
            onPressed: checkPermissions,
            child: const Text('checkPermissions'),
          ),
          Text(checkPermissionsPartiallyOutput.current),
          FilledButton(
            onPressed: checkPermissionsPartially,
            child: const Text('checkPermissionsPartially'),
          ),
          Text(requestPermissionsOutput.current),
          FilledButton(
            onPressed: requestPermissions,
            child: const Text('requestPermissions'),
          ),
        ],
      ),
    );
  }

  void checkAvailability() {
    checkAvailabilityOutput.clear();

    setState(() {
      checkAvailabilityOutput
          .append('Verifying Samsung Health availability...');
    });

    RookSamsung.checkSamsungHealthAvailability().then((availability) {
      final message = switch (availability) {
        SamsungHealthAvailability.installed => 'Samsung Health is installed!',
        SamsungHealthAvailability.notInstalled =>
          'Samsung Health not installed.',
        SamsungHealthAvailability.outdated => "Samsung Health is outdated.",
        SamsungHealthAvailability.disabled => "Samsung Health is disabled.",
        SamsungHealthAvailability.notReady => "Samsung Health is not ready.",
      };

      setState(() {
        checkAvailabilityOutput.append(message);
      });
    }).catchError((error) {
      setState(() {
        checkAvailabilityOutput
            .append('Error verifying Samsung Health availability: $error');
      });
    });
  }

  void downloadSamsungHealth() async {
    try {
      await launchUrl(Uri.parse(
        'https://play.google.com/store/apps/details?id=com.sec.android.app.shealth',
      ));
    } catch (ignored) {
      // Ignored
    }
  }

  void checkPermissions() {
    checkPermissionsOutput.clear();

    setState(() {
      checkPermissionsOutput.append('Verifying Samsung Health permissions...');
    });

    RookSamsung.checkSamsungHealthPermissions(_samsungPermissions)
        .then((permissionsGranted) {
      String message = switch (permissionsGranted) {
        true => 'Permissions granted',
        false => 'There is one or more missing permissions',
      };

      setState(() {
        checkPermissionsOutput.append(message);
      });
    }).catchError((error) {
      setState(() {
        checkPermissionsOutput
            .append('Error verifying Samsung Health permissions: $error');
      });
    });
  }

  void checkPermissionsPartially() {
    checkPermissionsPartiallyOutput.clear();

    setState(() {
      checkPermissionsPartiallyOutput
          .append('Verifying Samsung Health permissions...');
    });

    RookSamsung.checkSamsungHealthPermissionsPartially(_samsungPermissions)
        .then((permissionsPartiallyGranted) {
      String message = switch (permissionsPartiallyGranted) {
        true => 'Permissions partially granted',
        false => 'No permission granted',
      };

      setState(() {
        checkPermissionsPartiallyOutput.append(message);
      });
    }).catchError((error) {
      setState(() {
        checkPermissionsPartiallyOutput
            .append('Error verifying Samsung Health permissions: $error');
      });
    });
  }

  void requestPermissions() {
    requestPermissionsOutput.clear();

    setState(() {
      requestPermissionsOutput
          .append('Requesting Samsung Health permissions...');
    });

    RookSamsung.requestSamsungHealthPermissions(_samsungPermissions)
        .then((requestPermissionsStatus) {
      String message = switch (requestPermissionsStatus) {
        RequestPermissionsStatus.alreadyGranted =>
          'Permissions already granted',
        RequestPermissionsStatus.requestSent =>
          'Permissions request sent, if nothing happens open Samsung Health settings and give permissions manually',
      };

      setState(() {
        requestPermissionsOutput.append(message);
      });
    }).catchError((error) {
      setState(() {
        requestPermissionsOutput
            .append('Error requesting Samsung Health permissions: $error');
      });
    });
  }
}

const _samsungPermissions = [
  SamsungHealthPermission.activitySummary,
  SamsungHealthPermission.bloodGlucose,
  SamsungHealthPermission.bloodOxygen,
  SamsungHealthPermission.bloodPressure,
  SamsungHealthPermission.bodyComposition,
  SamsungHealthPermission.exercise,
  SamsungHealthPermission.exerciseLocation,
  SamsungHealthPermission.floorsClimbed,
  SamsungHealthPermission.heartRate,
  SamsungHealthPermission.nutrition,
  SamsungHealthPermission.sleep,
  SamsungHealthPermission.steps,
  SamsungHealthPermission.waterIntake,
];
