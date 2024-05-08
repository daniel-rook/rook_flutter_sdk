import 'package:flutter/material.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:url_launcher/url_launcher.dart';

Widget dataSourcesBottomSheet(
    BuildContext context, List<DataSource> dataSources) {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        const SectionTitle('Data Sources'),
        ListView.builder(
          shrinkWrap: true,
          itemCount: dataSources.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Image.network(dataSources[index].image),
              title: Text(dataSources[index].name),
              subtitle: Text(
                dataSources[index].description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: dataSources[index].authorizationUrl == null
                  ? const Text('Connected')
                  : TextButton(
                      onPressed: () => launchUrl(
                          Uri.parse(dataSources[index].authorizationUrl!)),
                      child: const Text('Connect'),
                    ),
            );
          },
        ),
      ],
    ),
  );
}
