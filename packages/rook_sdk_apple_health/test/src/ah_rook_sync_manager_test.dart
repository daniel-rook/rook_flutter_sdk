import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/ah_rook_sync_manager.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/domain/enums/ah_summary_sync_type.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('rook_sdk_apple_health');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (_) async {
      final proto = ResultBooleanProto()..success = true;

      return proto.writeToBuffer();
    });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  group("supported sync parameter combinations", () {
    test("GIVEN enableLogs WHEN sync THEN return success", () async {
      final future = AHRookSyncManager.sync(enableLogs: true);

      await expectLater(future, completion(true));
    });

    test("GIVEN date WHEN sync THEN return success", () async {
      final future = AHRookSyncManager.sync(date: DateTime.now());

      await expectLater(future, completion(true));
    });

    test("GIVEN date and summary WHEN sync THEN return success", () async {
      final future = AHRookSyncManager.sync(
        date: DateTime.now(),
        summary: AHSummarySyncType.sleep,
      );

      await expectLater(future, completion(true));
    });
  });

  group("unsupported sync parameter combinations", () {
    test("GIVEN no parameters WHEN sync THEN return success", () {
      try {
        AHRookSyncManager.sync();
      } catch (error) {
        expect(error, isA<UnsupportedError>());
        expect((error as UnsupportedError).message,
            "At least one parameter is required");
        return;
      }

      throw AssertionError("Expected error not thrown");
    });
  });
}
