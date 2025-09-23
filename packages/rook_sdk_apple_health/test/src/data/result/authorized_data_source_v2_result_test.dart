import 'package:flutter_test/flutter_test.dart';
import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_apple_health/src/data/result/authorized_data_source_v2_result.dart';

void main() {
  group("Mapper", () {
    test(
      "GIVEN a AuthorizedDataSourceV2ListProto WHEN toDomain THEN return a list of AuthorizedDataSourceV2",
      () {
        final dataSource1 = AuthorizedDataSourceV2Proto.create()
          ..name = "name1"
          ..authorized = true
          ..imageUrl = "imageUrl1";
        final dataSource2 = AuthorizedDataSourceV2Proto.create()
          ..name = "name2"
          ..authorized = false
          ..imageUrl = "imageUrl2";

        final proto = AuthorizedDataSourceV2ListProto(
          list: [dataSource1, dataSource2],
        );

        final result = proto.toDomain();

        expect(result.length, 2);

        expect(result[0].name, "name1");
        expect(result[0].authorized, true);
        expect(result[0].imageUrl, "imageUrl1");

        expect(result[1].name, "name2");
        expect(result[1].authorized, false);
        expect(result[1].imageUrl, "imageUrl2");
      },
    );
  });

  group("Result", () {
    test(
      "GIVEN success WHEN unwrap THEN return a list of AuthorizedDataSourceV2",
      () {
        final dataSource1 = AuthorizedDataSourceV2Proto.create()
          ..name = "name1"
          ..authorized = true
          ..imageUrl = "imageUrl1";

        final success = AuthorizedDataSourceV2ListProto(list: [dataSource1]);
        final proto = AuthorizedDataSourceV2ResultProto(success: success);

        final result = proto.unwrap();

        expect(result.length, 1);

        expect(result[0].name, "name1");
        expect(result[0].authorized, true);
        expect(result[0].imageUrl, "imageUrl1");
      },
    );

    test(
      "GIVEN failure WHEN unwrap THEN throw exception",
      () {
        final failure = PluginExceptionProto.create()
          ..code = 1
          ..message = "message";

        final proto = AuthorizedDataSourceV2ResultProto(failure: failure);

        expect(() => proto.unwrap(), throwsException);
      },
    );
  });
}
