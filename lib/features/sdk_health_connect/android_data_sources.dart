import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/common/build_api_sources.dart';
import 'package:rook_flutter_sdk/common/console_output.dart';
import 'package:rook_flutter_sdk/common/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/common/widget/section_title.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/rook_sdk_health_connect.dart';

const String androidDataSourcesRoute = '/android/data-sources';

class AndroidDataSources extends StatefulWidget {
  const AndroidDataSources({super.key});

  @override
  State<AndroidDataSources> createState() => _AndroidDataSourcesState();
}

class _AndroidDataSourcesState extends State<AndroidDataSources> {
  final Logger logger = Logger('AndroidDataSources');

  late final RookApiSources rookApiSources = buildApiSources();

  ConsoleOutput dataSourceAuthorizerOutput = ConsoleOutput();
  ConsoleOutput authorizedDataSourcesV2Output = ConsoleOutput();
  ConsoleOutput revokeDataSourceOutput = ConsoleOutput();

  DataSourceType dataSourceType = DataSourceType.fitbit;

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Data sources',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const SectionTitle('Data source authorizer'),
          DropdownMenu(
            initialSelection: DataSourceType.fitbit,
            onSelected: (selection) {
              dataSourceType = selection!;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: DataSourceType.garmin, label: "Garmin"),
              DropdownMenuEntry(value: DataSourceType.oura, label: "Oura"),
              DropdownMenuEntry(value: DataSourceType.polar, label: "Polar"),
              DropdownMenuEntry(value: DataSourceType.fitbit, label: "Fitbit"),
              DropdownMenuEntry(
                value: DataSourceType.withings,
                label: "Withings",
              ),
              DropdownMenuEntry(value: DataSourceType.whoop, label: "Whoop"),
            ],
          ),
          Text(dataSourceAuthorizerOutput.current),
          FilledButton(
            onPressed: getDataSourceAuthorizer,
            child: const Text('getDataSourceAuthorizer'),
          ),
          const SectionTitle("Authorized data sources V2"),
          Text(authorizedDataSourcesV2Output.current),
          FilledButton(
            onPressed: getAuthorizedDataSourcesV2,
            child: const Text('getAuthorizedDataSourcesV2'),
          ),
          const SectionTitle('Revoke data source'),
          DropdownMenu(
            initialSelection: DataSourceType.fitbit,
            onSelected: (selection) {
              dataSourceType = selection!;
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: DataSourceType.garmin, label: "Garmin"),
              DropdownMenuEntry(value: DataSourceType.oura, label: "Oura"),
              DropdownMenuEntry(value: DataSourceType.polar, label: "Polar"),
              DropdownMenuEntry(value: DataSourceType.fitbit, label: "Fitbit"),
              DropdownMenuEntry(
                value: DataSourceType.withings,
                label: "Withings",
              ),
              DropdownMenuEntry(value: DataSourceType.whoop, label: "Whoop"),
            ],
          ),
          Text(revokeDataSourceOutput.current),
          FilledButton(
            onPressed: revokeDataSource,
            child: const Text('Revoke data source'),
          ),
        ],
      ),
    );
  }

  void getDataSourceAuthorizer() async {
    dataSourceAuthorizerOutput.clear();

    setState(() {
      dataSourceAuthorizerOutput.append("Getting data source authorizer...");
    });

    try {
      final userID = await HCRookConfigurationManager.getUserID();

      final authorizer = await rookApiSources.getDataSourceAuthorizer(
        userID: userID!,
        dataSource: dataSourceType.identifier,
        redirectUrl: null,
      );

      final string =
          "Success getting data source authorizer"
          "\n"
          "Data source: ${authorizer.dataSource}"
          "\n"
          "Is authorized: ${authorizer.authorized}"
          "\n"
          "Authorization URL: ${authorizer.authorizationUrl}";

      setState(() {
        dataSourceAuthorizerOutput.append(string);
      });
    } catch (error) {
      setState(() {
        dataSourceAuthorizerOutput.append(
          "Error getting data source authorizer $error",
        );
      });
    }
  }

  void getAuthorizedDataSourcesV2() async {
    authorizedDataSourcesV2Output.clear();

    setState(() {
      authorizedDataSourcesV2Output.append(
        "Getting authorized data sources v2...",
      );
    });

    try {
      final userID = await HCRookConfigurationManager.getUserID();

      final dataSources = await rookApiSources.getAuthorizedDataSourcesV2(
        userID: userID!,
      );

      setState(() {
        authorizedDataSourcesV2Output.appendMultiple(
          dataSources.map((element) => element.toString()).toList(),
        );
      });
    } catch (exception) {
      authorizedDataSourcesV2Output.append(
        "Failed to get authorized data sources v2: $exception",
      );
    }
  }

  void revokeDataSource() async {
    revokeDataSourceOutput.clear();

    setState(() {
      revokeDataSourceOutput.append("Revoking data source...");
    });

    try {
      final userID = await HCRookConfigurationManager.getUserID();

      await rookApiSources.revokeDataSource(
        userID: userID!,
        dataSource: dataSourceType,
      );

      setState(() {
        revokeDataSourceOutput.append("Data source revoked successfully");
      });
    } catch (error) {
      setState(() {
        revokeDataSourceOutput.append("Error revoking data source $error");
      });
    }
  }
}
