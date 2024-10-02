import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:url_launcher/url_launcher.dart';

Widget dataSourcesBottomSheet(
  BuildContext context,
  List<DataSource> dataSources,
) {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: dataSources.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        leading: Image.network(dataSources[index].imageUrl),
        title: Text(dataSources[index].name),
        subtitle: Text(
          dataSources[index].description,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: dataSources[index].authorizationUrl == null
            ? revokableDataSources.contains(dataSources[index].name)
                ? TextButton(
                    onPressed: () => _revokeDataSource(dataSources[index]),
                    child: const Text('Disconnect'),
                  )
                : const Text('Connected')
            : TextButton(
                onPressed: () =>
                    launchUrl(Uri.parse(dataSources[index].authorizationUrl!)),
                child: const Text('Connect'),
              ),
      );
    },
  );
}

final Set<String> revokableDataSources = {
  "Garmin",
  "Oura",
  "Polar",
  "Fitbit",
  "Withings",
  "Whoop",
};

DataSourceType? _getDataSourceType(DataSource dataSource) {
  return switch (dataSource.name) {
    "Garmin" => DataSourceType.garmin,
    "Oura" => DataSourceType.oura,
    "Polar" => DataSourceType.polar,
    "Fitbit" => DataSourceType.fitbit,
    "Withings" => DataSourceType.withings,
    "Whoop" => DataSourceType.whoop,
    _ => null
  };
}

void _revokeDataSource(DataSource dataSource) {
  final dataSourceType = _getDataSourceType(dataSource);

  if (dataSourceType == null) {
    return;
  }

  final logger = Logger('dataSourcesBottomSheet');

  AHRookDataSources.revokeDataSource(dataSourceType).then((_) {
    logger.info('Garmin data source was successfully revoked');
  }).catchError((error) {
    logger.info('Garmin data source revoke failed: $error');
  });
}
