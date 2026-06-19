import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/core/domain/utils/console_output.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/section_title.dart';
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
  final ConsoleOutput checkHCPermissionsPartiallyOutput = ConsoleOutput();
  final ConsoleOutput checkBackgroundReadStatusOutput = ConsoleOutput();
  final ConsoleOutput requestHCPermissionsOutput = ConsoleOutput();
  final ConsoleOutput revokeHCPermissionsOutput = ConsoleOutput();
  final ConsoleOutput openHealthConnectOutput = ConsoleOutput();
  final ConsoleOutput checkAndroidPermissionsOutput = ConsoleOutput();
  final ConsoleOutput requestAndroidPermissionsOutput = ConsoleOutput();
  final ConsoleOutput checkExactAlarmPermissionsOutput = ConsoleOutput();
  final ConsoleOutput requestExactAlarmPermissionsOutput = ConsoleOutput();
  final ConsoleOutput checkBatteryOptimizationsDisabledOutput = ConsoleOutput();
  final ConsoleOutput requestDisableBatteryOptimizationsOutput =
      ConsoleOutput();
  final ConsoleOutput requiresOemAutoStartSetupOutput = ConsoleOutput();
  final ConsoleOutput openOemAutoStartSetupOutput = ConsoleOutput();

  StreamSubscription<HealthConnectPermissionsSummary>?
  healthConnectPermissionsSubscription;
  StreamSubscription<AndroidPermissionsSummary>? androidPermissionsSubscription;

  @override
  void initState() {
    healthConnectPermissionsSubscription = HCRookHealthPermissionsManager
        .requestHealthConnectPermissionsUpdates
        .listen((permissionsSummary) {
          if (permissionsSummary.dataTypesGranted) {
            setState(() {
              checkHCPermissionsOutput.append('Permissions granted');
              checkHCPermissionsPartiallyOutput.append(
                'Permissions partially granted',
              );
              requestHCPermissionsOutput.append('Permissions granted');
            });
          } else {
            setState(() {
              checkHCPermissionsOutput.append(
                "There is one or more missing permissions",
              );
              requestHCPermissionsOutput.append(
                "There is one or more missing permissions",
              );
            });
          }

          if (permissionsSummary.dataTypesPartiallyGranted) {
            setState(() {
              checkHCPermissionsPartiallyOutput.append(
                'Permissions partially granted',
              );
            });
          } else {
            setState(() {
              checkHCPermissionsPartiallyOutput.append("No permission granted");
            });
          }

          if (permissionsSummary.backgroundReadGranted) {
            setState(() {
              checkBackgroundReadStatusOutput.append("Background read granted");
              requestHCPermissionsOutput.append("Background read granted");
            });
          }
        });

    androidPermissionsSubscription = HCRookHealthPermissionsManager
        .requestAndroidPermissionsUpdates
        .listen((permissionsSummary) {
          if (permissionsSummary.dialogDisplayed) {
            setState(() {
              requestAndroidPermissionsOutput.append('Dialog was displayed');
            });
          } else {
            setState(() {
              requestAndroidPermissionsOutput.append(
                'Android permissions previously denied, open app settings and give permissions manually',
              );
            });
          }

          if (permissionsSummary.permissionsGranted) {
            setState(() {
              checkAndroidPermissionsOutput.append('Permissions granted');
              requestAndroidPermissionsOutput.append('Permissions granted');
            });
          } else {
            setState(() {
              checkAndroidPermissionsOutput.append(
                'There is one or more missing permissions',
              );
              requestAndroidPermissionsOutput.append(
                'There is one or more missing permissions',
              );
            });
          }
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
          Text(checkHCPermissionsPartiallyOutput.current),
          FilledButton(
            onPressed: checkHealthConnectPermissionsPartially,
            child: const Text('checkHealthConnectPermissionsPartially'),
          ),
          Text(checkBackgroundReadStatusOutput.current),
          FilledButton(
            onPressed: checkBackgroundReadStatus,
            child: const Text('checkBackgroundReadStatus'),
          ),
          Text(requestHCPermissionsOutput.current),
          FilledButton(
            onPressed: requestHealthConnectPermissions,
            child: const Text('requestHealthConnectPermissions'),
          ),
          Text(revokeHCPermissionsOutput.current),
          FilledButton(
            onPressed: revokeHealthConnectPermissions,
            child: const Text('revokeHealthConnectPermissions'),
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
          const SectionTitle('Alarm permissions'),
          Text(checkExactAlarmPermissionsOutput.current),
          FilledButton(
            onPressed: checkExactAlarmPermission,
            child: const Text('checkExactAlarmPermission'),
          ),
          Text(requestExactAlarmPermissionsOutput.current),
          FilledButton(
            onPressed: requestExactAlarmPermission,
            child: const Text('requestExactAlarmPermission'),
          ),
          const SectionTitle('Battery optimizations'),
          Text(checkBatteryOptimizationsDisabledOutput.current),
          FilledButton(
            onPressed: checkBatteryOptimizationsDisabled,
            child: const Text('checkBatteryOptimizationsDisabled'),
          ),
          Text(requestDisableBatteryOptimizationsOutput.current),
          FilledButton(
            onPressed: requestDisableBatteryOptimizations,
            child: const Text('requestDisableBatteryOptimizations'),
          ),
          const SectionTitle('OEM Auto Start'),
          Text(requiresOemAutoStartSetupOutput.current),
          FilledButton(
            onPressed: checkRequiresOemAutoStartSetup,
            child: const Text('checkRequiresOemAutoStartSetup'),
          ),
          Text(openOemAutoStartSetupOutput.current),
          FilledButton(
            onPressed: openOemAutoStartSetup,
            child: const Text('openOemAutoStartSetup'),
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
            HCAvailabilityStatus.notInstalled =>
              'Health Connect not installed.',
            _ => 'This device is not compatible with health connect.',
          };

          setState(() {
            hcAvailabilityOutput.append(message);
          });
        })
        .catchError((error) {
          setState(() {
            hcAvailabilityOutput.append(
              'Error verifying Health Connect availability: $error',
            );
          });
        });
  }

  void downloadHealthConnect() async {
    try {
      await launchUrl(
        Uri.parse(
          'https://play.google.com/store/apps/details?id=com.google.android.apps.healthdata',
        ),
      );
    } catch (ignored) {
      // Ignored
    }
  }

  void checkHealthConnectPermissions() {
    checkHCPermissionsOutput.clear();

    setState(() {
      checkHCPermissionsOutput.append(
        'Verifying Health Connect permissions...',
      );
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
        })
        .catchError((error) {
          setState(() {
            checkHCPermissionsOutput.append(
              'Error verifying Health Connect permissions: $error',
            );
          });
        });
  }

  void checkHealthConnectPermissionsPartially() {
    checkHCPermissionsPartiallyOutput.clear();

    setState(() {
      checkHCPermissionsPartiallyOutput.append(
        'Verifying Health Connect permissions...',
      );
    });

    HCRookHealthPermissionsManager.checkHealthConnectPermissionsPartially()
        .then((permissionsPartiallyGranted) {
          String message = switch (permissionsPartiallyGranted) {
            true => 'Permissions partially granted',
            false => 'No permission granted',
          };

          setState(() {
            checkHCPermissionsPartiallyOutput.append(message);
          });
        })
        .catchError((error) {
          setState(() {
            checkHCPermissionsPartiallyOutput.append(
              'Error verifying Health Connect permissions: $error',
            );
          });
        });
  }

  void checkBackgroundReadStatus() async {
    checkBackgroundReadStatusOutput.clear();

    setState(() {
      checkBackgroundReadStatusOutput.append("Verifying background status...");
    });

    try {
      final backgroundReadStatus =
          await HCRookHealthPermissionsManager.checkBackgroundReadStatus();

      setState(() {
        checkBackgroundReadStatusOutput.append(
          "Background read status: $backgroundReadStatus",
        );
      });
    } catch (error) {
      setState(() {
        checkBackgroundReadStatusOutput.append(
          "Error verifying background status: $error",
        );
      });
    }
  }

  void requestHealthConnectPermissions() {
    requestHCPermissionsOutput.clear();

    setState(() {
      requestHCPermissionsOutput.append(
        'Requesting Health Connect permissions...',
      );
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
        })
        .catchError((error) {
          setState(() {
            requestHCPermissionsOutput.append(
              'Error requesting Health Connect permissions: $error',
            );
          });
        });
  }

  void revokeHealthConnectPermissions() {
    revokeHCPermissionsOutput.clear();

    setState(() {
      revokeHCPermissionsOutput.append(
        'Revoking Health Connect permissions...',
      );
    });

    HCRookHealthPermissionsManager.revokeHealthConnectPermissions()
        .then((_) {
          setState(() {
            revokeHCPermissionsOutput.append(
              'Health Connect permissions revoked, restart the app to apply the changes',
            );
          });
        })
        .catchError((error) {
          setState(() {
            revokeHCPermissionsOutput.append(
              'Error revoking Health Connect permissions: $error',
            );
          });
        });
  }

  void openHealthConnect() {
    openHealthConnectOutput.clear();

    setState(() {
      openHealthConnectOutput.append('Opening Health Connect settings...');
    });

    HCRookHealthPermissionsManager.openHealthConnectSettings()
        .then((_) {
          setState(() {
            openHealthConnectOutput.append(
              'Health Connect settings were opened',
            );
          });
        })
        .catchError((error) {
          setState(() {
            openHealthConnectOutput.append(
              'Error opening Health Connect settings: $error',
            );
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
        })
        .catchError((error) {
          setState(() {
            checkAndroidPermissionsOutput.append(
              'Error verifying Android permissions: $error',
            );
          });
        });
  }

  void requestAndroidPermissions() async {
    requestAndroidPermissionsOutput.clear();

    setState(() {
      requestAndroidPermissionsOutput.append(
        'Verifying if permissions should be requested...',
      );
    });

    try {
      final shouldRequestPermissions =
          await HCRookHealthPermissionsManager.shouldRequestAndroidPermissions();

      if (shouldRequestPermissions) {
        setState(() {
          requestAndroidPermissionsOutput.append(
            'Requesting Android permissions...',
          );
        });

        final requestPermissionsStatus =
            await HCRookHealthPermissionsManager.requestAndroidPermissions();

        String message = switch (requestPermissionsStatus) {
          RequestPermissionsStatus.alreadyGranted =>
            'Permissions already granted',
          RequestPermissionsStatus.requestSent => 'Permissions request sent',
        };

        setState(() {
          requestAndroidPermissionsOutput.append(message);
        });
      } else {
        setState(() {
          requestAndroidPermissionsOutput.append(
            'Android permissions previously denied, open app settings and give permissions manually',
          );
        });
      }
    } catch (error) {
      setState(() {
        checkAndroidPermissionsOutput.append(
          'Error requesting Android permissions: $error',
        );
      });
    }
  }

  void checkExactAlarmPermission() {
    checkExactAlarmPermissionsOutput.clear();

    setState(() {
      checkExactAlarmPermissionsOutput.append(
        'Verifying exact alarm permission...',
      );
    });

    HCRookHealthPermissionsManager.checkExactAlarmPermissions()
        .then((granted) {
          setState(() {
            checkExactAlarmPermissionsOutput.append(
              granted ? 'Permission granted' : 'Permission missing',
            );
          });
        })
        .catchError((error) {
          setState(() {
            checkExactAlarmPermissionsOutput.append('Error: $error');
          });
        });
  }

  void requestExactAlarmPermission() {
    requestExactAlarmPermissionsOutput.clear();

    setState(() {
      requestExactAlarmPermissionsOutput.append(
        'Requesting exact alarm permission...',
      );
    });

    HCRookHealthPermissionsManager.requestExactAlarmPermissions()
        .then((requestPermissionsStatus) {
          setState(() {
            requestExactAlarmPermissionsOutput.append(
              'Status: $requestPermissionsStatus',
            );
          });
        })
        .catchError((error) {
          setState(() {
            requestExactAlarmPermissionsOutput.append('Error: $error');
          });
        });
  }

  void checkBatteryOptimizationsDisabled() {
    checkBatteryOptimizationsDisabledOutput.clear();

    setState(() {
      checkBatteryOptimizationsDisabledOutput.append(
        'Verifying battery optimizations...',
      );
    });

    HCRookHealthPermissionsManager.checkBatteryOptimizationsDisabled()
        .then((disabled) {
          setState(() {
            checkBatteryOptimizationsDisabledOutput.append(
              disabled ? 'Optimizations disabled' : 'Optimizations enabled',
            );
          });
        })
        .catchError((error) {
          setState(() {
            checkBatteryOptimizationsDisabledOutput.append('Error: $error');
          });
        });
  }

  void requestDisableBatteryOptimizations() {
    requestDisableBatteryOptimizationsOutput.clear();

    setState(() {
      requestDisableBatteryOptimizationsOutput.append(
        'Requesting to disable battery optimizations...',
      );
    });

    HCRookHealthPermissionsManager.requestDisableBatteryOptimizations()
        .then((requestPermissionsStatus) {
          setState(() {
            requestDisableBatteryOptimizationsOutput.append(
              'Status: $requestPermissionsStatus',
            );
          });
        })
        .catchError((error) {
          setState(() {
            requestDisableBatteryOptimizationsOutput.append('Error: $error');
          });
        });
  }

  void checkRequiresOemAutoStartSetup() {
    requiresOemAutoStartSetupOutput.clear();

    setState(() {
      requiresOemAutoStartSetupOutput.append(
        'Verifying OEM Auto Start setup requirement...',
      );
    });

    HCRookHealthPermissionsManager.requiresOemAutoStartSetup()
        .then((required) {
          setState(() {
            requiresOemAutoStartSetupOutput.append(
              required ? 'Setup required' : 'Setup not required',
            );
          });
        })
        .catchError((error) {
          setState(() {
            requiresOemAutoStartSetupOutput.append('Error: $error');
          });
        });
  }

  void openOemAutoStartSetup() {
    openOemAutoStartSetupOutput.clear();

    setState(() {
      openOemAutoStartSetupOutput.append('Opening OEM Auto Start setup...');
    });

    HCRookHealthPermissionsManager.openOemAutoStartSetup()
        .then((requestPermissionsStatus) {
          setState(() {
            openOemAutoStartSetupOutput.append(
              'Status: $requestPermissionsStatus',
            );
          });
        })
        .catchError((error) {
          setState(() {
            openOemAutoStartSetupOutput.append('Error: $error');
          });
        });
  }
}
