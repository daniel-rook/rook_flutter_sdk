import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_samsung_health/src/data/extension/int_extensions.dart';

void main() {
  group("Int to Bool? tests", () {
    test(
      "GIVEN 0 WHEN toBoolOrNull THEN return false",
      () {
        const int input = 0;

        final result = input.toBoolOrNull();

        expect(result, isFalse);
      },
    );
    test(
      "GIVEN 1 WHEN toBoolOrNull THEN return true",
      () {
        const int input = 1;

        final result = input.toBoolOrNull();

        expect(result, isTrue);
      },
    );
    test(
      "GIVEN any other int WHEN toBoolOrNull THEN return null",
      () {
        const int input = 2;

        final result = input.toBoolOrNull();

        expect(result, isNull);
      },
    );
  });
}
