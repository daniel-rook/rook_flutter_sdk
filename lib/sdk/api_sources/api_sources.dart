import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:rook_flutter_sdk/core/domain/utils/console_output.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/scrollable_scaffold.dart';
import 'package:rook_flutter_sdk/core/presentation/widget/section_title.dart';
import 'package:rook_flutter_sdk/secrets.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

const String apiSourcesRoute = '/api-sources';

class ApiSources extends StatefulWidget {
  const ApiSources({super.key});

  @override
  State<ApiSources> createState() => _ApiSourcesState();
}

class _ApiSourcesState extends State<ApiSources> {
  final Logger logger = Logger('ApiSources');

  late final RookApiSources rookApiSources = RookApiSources(
    clientUUID: Secrets.clientUUID,
    secret: Secrets.secret,
    appId: Secrets.packageName,
    environment: RookEnvironment.sandbox,
    enableLogs: true,
  );

  ConsoleOutput dataSourceAuthorizerOutput = ConsoleOutput();
  ConsoleOutput authorizedDataSourcesV2Output = ConsoleOutput();
  ConsoleOutput revokeDataSourceOutput = ConsoleOutput();

  String userID = "RookSdkDataSources";
  DataSourceType dataSourceType = DataSourceType.fitbit;

  @override
  Widget build(BuildContext context) {
    return ScrollableScaffold(
      name: 'Api sources',
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          SectionTitle("User ID: $userID"),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'User ID',
            ),
            onChanged: (value) {
              setState(() {
                userID = value;
              });
            },
          ),
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
      final authorizer = await rookApiSources.getDataSourceAuthorizer(
        userID: userID,
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
      final dataSources = await rookApiSources.getAuthorizedDataSourcesV2(
        userID: userID,
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
      await rookApiSources.revokeDataSource(
        userID: userID,
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
