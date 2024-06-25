import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_health_connect/src/data/extension/result_data_source_extensions.dart';
import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';

void main() {
  group('ResultDataSourceProto success', () {
    test('GIVEN the happy path WHEN unwrap THEN return the expected result',
        () {
      final proto = ResultDataSourceProto.create();
      proto.dataSourceProtoListWrapper = DataSourceProtoListWrapper(
        dataSources: [
          DataSourceProto(
            name: 'name',
            description: 'description',
            image: 'image',
            connected: true,
            authorizationUrl: 'authorizationUrl',
            authorizationUrlIsNull: false,
          )
        ],
      );

      final result = proto.unwrap().first;
      final expected = DataSource(
        'name',
        'description',
        'image',
        true,
        'authorizationUrl',
      );

      expect(result.name, expected.name);
      expect(result.description, expected.description);
      expect(result.image, expected.image);
      expect(result.connected, expected.connected);
      expect(result.authorizationUrl, expected.authorizationUrl);
    });
  });

  group('ResultDataSourceProto exception', () {
    test(
      'GIVEN a SDKNotAuthorizedExceptionProto WHEN unwrap THEN throw SDKNotAuthorizedException',
      () {
        final proto = ResultDataSourceProto.create();
        proto.sdkNotAuthorizedExceptionProto =
            SDKNotAuthorizedExceptionProto(message: error);

        expect(
          proto.unwrap,
          throwsA(
            predicate(
              (exception) =>
                  exception is SDKNotAuthorizedException &&
                  exception.message == error,
            ),
          ),
        );
      },
    );

    test(
      'GIVEN a GenericExceptionProto WHEN unwrap THEN throw Exception',
      () {
        final proto = ResultDataSourceProto.create();
        proto.genericExceptionProto = GenericExceptionProto(message: error);

        expect(proto.unwrap, throwsException);
      },
    );
  });
}

const error = 'There was an error';
