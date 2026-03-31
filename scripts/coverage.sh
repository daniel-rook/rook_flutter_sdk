# REQUISITES
# brew install lcov
# dart pub global activate coverage

echo "→" Running coverage...
echo "-----------------------------------------------APPLE HEALTH--------------------------------------------"
cd packages/rook_sdk_apple_health
flutter test --coverage
lcov --remove coverage/lcov.info \
  'lib/rook_sdk_apple_health.dart' \
  'lib/src/ah_rook_background_sync.dart' \
  'lib/src/ah_rook_configuration_manager.dart' \
  'lib/src/ah_rook_continuous_upload.dart' \
  'lib/src/ah_rook_health_permissions_manager.dart' \
  'lib/src/ah_rook_helpers.dart' \
  'lib/src/ah_rook_sync_manager.dart' \
  'lib/src/data/proto/*' \
  -o coverage/lcov.info
genhtml coverage/lcov.info -o coverage/html
cd -
open packages/rook_sdk_apple_health/coverage/html/index.html
echo "-----------------------------------------------SAMSUNG HEALTH--------------------------------------------"
cd packages/rook_sdk_samsung_health
flutter test --coverage
lcov --remove coverage/lcov.info \
  'lib/rook_sdk_samsung_health.dart' \
  'lib/src/rook_samsung.dart' \
  'lib/src/data/proto/*' \
  -o coverage/lcov.info
genhtml coverage/lcov.info -o coverage/html
cd -
open packages/rook_sdk_samsung_health/coverage/html/index.html
echo "-----------------------------------------------HEALTH CONNECT--------------------------------------------"
cd packages/rook_sdk_health_connect
flutter test --coverage
lcov --remove coverage/lcov.info \
  'lib/rook_sdk_health_connect.dart' \
  'lib/src/hc_rook_background_sync.dart' \
  'lib/src/hc_rook_configuration_manager.dart' \
  'lib/src/hc_rook_health_permissions_manager.dart' \
  'lib/src/hc_rook_helpers.dart' \
  'lib/src/hc_rook_sync_manager.dart' \
  'lib/src/android_steps_manager.dart' \
  'lib/src/data/proto/*' \
  -o coverage/lcov.info
genhtml coverage/lcov.info -o coverage/html
cd -
open packages/rook_sdk_health_connect/coverage/html/index.html
echo "-----------------------------------------------CORE--------------------------------------------"
cd packages/rook_sdk_core
dart test --coverage="coverage"
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info --report-on=lib
lcov --remove coverage/lcov.info \
  'lib/rook_sdk_core.dart' \
  'lib/src/rook_api_sources.dart' \
  -o coverage/lcov.info
genhtml coverage/lcov.info -o coverage/html
cd -
open packages/rook_sdk_core/coverage/html/index.html
echo "-----------------------------------------------CLEANING--------------------------------------------"
rm packages/rook_sdk_apple_health/coverage/lcov.info
rm packages/rook_sdk_samsung_health/coverage/lcov.info
rm packages/rook_sdk_health_connect/coverage/lcov.info
rm -rf packages/rook_sdk_core/coverage/packages/
rm packages/rook_sdk_core/coverage/lcov.info
