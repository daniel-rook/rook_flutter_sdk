import 'package:flutter/material.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

class AuthorizedDataSourcesList extends StatelessWidget {
  final AuthorizedDataSources authorizedDataSources;

  const AuthorizedDataSourcesList({
    super.key,
    required this.authorizedDataSources,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            buildAuthorizedDataSourceListTile(
              "Oura",
              authorizedDataSources.oura,
            ),
            buildAuthorizedDataSourceListTile(
              "Polar",
              authorizedDataSources.polar,
            ),
            buildAuthorizedDataSourceListTile(
              "Whoop",
              authorizedDataSources.whoop,
            ),
            buildAuthorizedDataSourceListTile(
              "Fitbit",
              authorizedDataSources.fitbit,
            ),
            buildAuthorizedDataSourceListTile(
              "Garmin",
              authorizedDataSources.garmin,
            ),
            buildAuthorizedDataSourceListTile(
              "Withings",
              authorizedDataSources.withings,
            ),
            buildAuthorizedDataSourceListTile(
              "Apple Health",
              authorizedDataSources.appleHealth,
            ),
            buildAuthorizedDataSourceListTile(
              "Health Connect",
              authorizedDataSources.healthConnect,
            ),
            buildAuthorizedDataSourceListTile(
              "Android",
              authorizedDataSources.android,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAuthorizedDataSourceListTile(String name, bool authorized) {
    return ListTile(
      title: Text(name),
      trailing:
          authorized ? const Icon(Icons.check_circle) : const Icon(Icons.not_interested),
    );
  }
}
