import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_health_connect/src/domain/util/check_non_default.dart';

void main() {
  group('IntNonDefault.checkNonDefault', () {
    test('returns null for default int (0)', () {
      expect((0).checkNonDefault(), isNull);
    });

    test('returns value for positive non-default int', () {
      expect((42).checkNonDefault(), 42);
    });

    test('returns value for negative non-default int', () {
      expect((-7).checkNonDefault(), -7);
    });
  });

  group('DoubleNonDefault.checkNonDefault', () {
    test('returns null for default double (0.0)', () {
      expect((0.0).checkNonDefault(), isNull);
    });

    test('returns null for -0.0 because -0.0 == 0.0', () {
      expect((-0.0).checkNonDefault(), isNull);
    });

    test('returns null for NaN', () {
      expect(double.nan.checkNonDefault(), isNull);
    });

    test('returns value for positive non-default double', () {
      expect((3.14).checkNonDefault(), 3.14);
    });

    test('returns value for negative non-default double', () {
      expect((-2.5).checkNonDefault(), -2.5);
    });

    test('returns value for very small non-zero double', () {
      // Ensure non-default tiny values are preserved.
      expect((1e-12).checkNonDefault(), 1e-12);
    });

    test('returns value for infinity (not default, not NaN)', () {
      expect(double.infinity.checkNonDefault(), double.infinity);
      expect(
        double.negativeInfinity.checkNonDefault(),
        double.negativeInfinity,
      );
    });
  });

  group('StringNonDefault.checkNonDefault', () {
    test('returns null for default string ("N/A")', () {
      expect(("N/A").checkNonDefault(), isNull);
    });

    test('returns value for non-default string', () {
      expect(("hello").checkNonDefault(), "hello");
    });

    test('empty string is not the default => returns value', () {
      expect(("").checkNonDefault(), "");
    });

    test('case is respected (default is case-sensitive)', () {
      expect(("n/a").checkNonDefault(), "n/a"); // not the default exactly
    });
  });
}
