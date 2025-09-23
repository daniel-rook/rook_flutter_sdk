import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void mockMethodCall(
  MethodChannel channel,
  Future<Object> Function(MethodCall call) handler,
) {
  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, handler);
  });
}
