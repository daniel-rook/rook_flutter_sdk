import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';
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
  "Oura",
  "Garmin",
  "Polar",
  "Fitbit",
  "Withings",
  "Whoop",
};

void _revokeDataSource(DataSource dataSource) {
  if(!revokableDataSources.contains(dataSource.name)) {
    return;
  }

  final logger = Logger('dataSourcesBottomSheet');

  if (defaultTargetPlatform == TargetPlatform.android) {
    HCRookDataSources.revokeDataSource(dataSource.name).then((_) {
      logger.info('${dataSource.name} was successfully revoked');
    }).catchError((error) {
      logger.info('${dataSource.name} revoke failed: $error');
    });
  } else {
    AHRookDataSources.revokeDataSource(dataSource.name).then((_) {
      logger.info('${dataSource.name} was successfully revoked');
    }).catchError((error) {
      logger.info('${dataSource.name} revoke failed: $error');
    });
  }
}
