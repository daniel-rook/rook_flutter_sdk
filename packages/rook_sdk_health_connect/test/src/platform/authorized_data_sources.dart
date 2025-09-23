import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/platform/rook_sdk_health_connect_method_channel.dart';

import '../common/test_utils.dart';

void authorizedDataSourcesTests(
  MethodChannelRookSdkHealthConnect platform,
  MethodChannel channel,
) {
  group(
      'MethodChannelRookSdkHealthConnect | AuthorizedDataSourcesResultProto authorizedDataSourcesProto unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final authorizedDataSourcesProto = AuthorizedDataSourcesProto.create()
        ..oura = 0
        ..polar = 1
        ..whoop = 2
        ..fitbit = 0
        ..garmin = 1
        ..withings = 2
        ..dexcom = 0
        ..appleHealth = 1
        ..healthConnect = 2
        ..android = 0;

      final proto = AuthorizedDataSourcesResultProto.create()
        ..success = authorizedDataSourcesProto;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN success WHEN getAuthorizedDataSources THEN return a AuthorizedDataSources",
      () async {
        final result = await platform.getAuthorizedDataSources();
        final expected = AuthorizedDataSources(
          oura: false,
          polar: true,
          whoop: null,
          fitbit: false,
          garmin: true,
          withings: null,
          dexcom: false,
          appleHealth: true,
          healthConnect: null,
          android: false,
        );

        expect(result.oura, expected.oura);
        expect(result.polar, expected.polar);
        expect(result.whoop, expected.whoop);
        expect(result.fitbit, expected.fitbit);
        expect(result.garmin, expected.garmin);
        expect(result.withings, expected.withings);
        expect(result.appleHealth, expected.appleHealth);
        expect(result.healthConnect, expected.healthConnect);
        expect(result.android, expected.android);
      },
    );
  });

  group(
      'MethodChannelRookSdkHealthConnect | ResultDataSourceProto exception unwrap',
      () {
    mockMethodCall(channel, (_) async {
      final failure = PluginExceptionProto.create()
        ..id = -1
        ..message = "message"
        ..code = 500;

      final proto = AuthorizedDataSourcesResultProto.create()
        ..failure = failure;

      return proto.writeToBuffer();
    });

    test(
      "GIVEN failure WHEN getAuthorizedDataSources THEN throw exception",
      () async {
        final future = platform.getAuthorizedDataSources();

        await expectLater(future, throwsException);
      },
    );
  });
}
