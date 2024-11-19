import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidUserManagementRoute = '/android/user-management';

class AndroidUserManagement extends StatefulWidget {
  const AndroidUserManagement({super.key});

  @override
  State<AndroidUserManagement> createState() => _AndroidUserManagementState();
}

class _AndroidUserManagementState extends State<AndroidUserManagement> {
  final Logger logger = Logger('AndroidUserManagement');

  final ConsoleOutput clearUserOutput = ConsoleOutput();
  final ConsoleOutput deleteUserOutput = ConsoleOutput();
  final ConsoleOutput syncTimezoneUserOutput = ConsoleOutput();

  String? userID;

  @override
  void initState() {
    HCRookConfigurationManager.getUserID().then((userID) {
      this.userID = userID;
    }).catchError((error) {
      userID = '$error';
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'User management',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          SectionTitle('UserID: $userID'),
          const SizedBox(height: 20),
          const SectionTitle('Sync user (Device) timezone'),
          Text(syncTimezoneUserOutput.current),
          FilledButton(
            onPressed: deleteUser,
            child: const Text("syncUserTimeZone"),
          ),
          const SectionTitle('Delete (locally) user'),
          Text(clearUserOutput.current),
          FilledButton(
            onPressed: deleteUser,
            child: const Text("clearUserID"),
          ),
          const SectionTitle('Delete (deactivate) user from ROOK'),
          Text(deleteUserOutput.current),
          FilledButton(
            onPressed: deleteUser,
            child: const Text("deleteUserFromRook"),
          )
        ],
      ),
    );
  }

  void updateTimeZoneInformation() {
    syncTimezoneUserOutput.clear();

    setState(() {
      syncTimezoneUserOutput.append('Updating user timezone...');
    });

    HCRookConfigurationManager.syncUserTimeZone().then((_) {
      setState(() {
        syncTimezoneUserOutput.append('User timezone updated successfully');
      });
    }).catchError((error) {
      setState(() {
        syncTimezoneUserOutput.append('Error updating user timezone: $error');
      });
    });
  }

  void clearUser() {
    deleteUserOutput.clear();

    setState(() {
      deleteUserOutput.append('Clearing user...');
    });

    HCRookConfigurationManager.clearUserID().then((_) {
      setState(() {
        deleteUserOutput.append('User cleared');
        userID = '';
      });
    }).catchError((error) {
      setState(() {
        deleteUserOutput.append('Error clearing user: $error');
      });
    });
  }

  void deleteUser() {
    deleteUserOutput.clear();

    setState(() {
      deleteUserOutput.append('Deleting user from rook...');
    });

    HCRookConfigurationManager.deleteUserFromRook().then((_) {
      setState(() {
        deleteUserOutput.append('User deleted from rook');
        userID = '';
      });
    }).catchError((error) {
      setState(() {
        deleteUserOutput.append('Error deleting user from rook: $error');
      });
    });
  }
}
