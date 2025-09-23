import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void authorizedDataSourceV2Tests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      "MethodChannelRookSdkHealthConnect | AuthorizedDataSourceV2ResultProto success unwrap",
      () {
    mockMethodCall(channel, (_) async {
      final dataSource1 = AuthorizedDataSourceV2Proto.create()
        ..name = "name1"
        ..authorized = true
        ..imageUrl = "imageUrl1";

      final success = AuthorizedDataSourceV2ListProto(list: [dataSource1]);
      final proto = AuthorizedDataSourceV2ResultProto(success: success);

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN getAuthorizedDataSourcesV2 THEN return a list of AuthorizedDataSourceV2",
      () async {
        final result = await platform.getAuthorizedDataSourcesV2();

        expect(result.length, 1);

        expect(result[0].name, "name1");
        expect(result[0].authorized, true);
        expect(result[0].imageUrl, "imageUrl1");
      },
    );
  });

  group(
      'MethodChannelRookSdkHealthConnect | AuthorizedDataSourceV2ResultProto failure unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = PluginExceptionProto.create()
        ..id = -1
        ..message = "message"
        ..code = 500;

      final proto = AuthorizedDataSourceV2ResultProto(failure: failure);

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN getAuthorizedDataSourcesV2 THEN throw exception",
      () async {
        final future = platform.getAuthorizedDataSourcesV2();

        await expectLater(future, throwsException);
      },
    );
  });
}
