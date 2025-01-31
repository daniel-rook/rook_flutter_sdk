import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/widget/authorized_data_sources_list.dart';
import 'package:rook_flutter_sdk/common/widget/data_sources_bottom_sheet.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_apple_health/rook_sdk_apple_health.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

const String iosDataSourcesRoute = '/ios/data-sources';

class IOSDataSources extends StatefulWidget {
  const IOSDataSources({super.key});

  @override
  State<IOSDataSources> createState() => _IOSDataSourcesState();
}

class _IOSDataSourcesState extends State<IOSDataSources> {
  final Logger logger = Logger('IOSDataSources');

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Data sources',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const SectionTitle("Connections page"),
          FilledButton(
            onPressed: loadDataSources,
            child: const Text('Connections page (data sources list)'),
          ),
          const SectionTitle("Authorized data sources"),
          FilledButton(
            onPressed: loadAuthorizedDataSources,
            child: const Text('getAuthorizedDataSources'),
          ),
          const SectionTitle("Connections page (pre-built)"),
          FilledButton(
            onPressed: () {
              AHRookDataSources.presentDataSourceView(
                redirectUrl: "https://tryrook.io",
              );
            },
            child: const Text('presentDataSourceView'),
          ),
        ],
      ),
    );
  }

  void loadAuthorizedDataSources() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return FutureBuilder(
          future: AHRookDataSources.getAuthorizedDataSources(),
          builder: (ctx, AsyncSnapshot<AuthorizedDataSources> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return AuthorizedDataSourcesList(
                authorizedDataSources: snapshot.data!,
              );
            }
          },
        );
      },
    );
  }

  void loadDataSources() {
    showModalBottomSheet<void>(
      context: context,
      enableDrag: false,
      builder: (BuildContext context) {
        return FutureBuilder(
          future: AHRookDataSources.getAvailableDataSources(
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
