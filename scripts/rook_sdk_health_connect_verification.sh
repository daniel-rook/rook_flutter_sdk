echo "→" rook_sdk_health_connect - Verification - Starting...
mkdir reports
dart format packages/rook_sdk_health_connect -o none --set-exit-if-changed &&
dart analyze packages/rook_sdk_health_connect --fatal-infos &&
pana packages/rook_sdk_health_connect 2>&1 | tee reports/rook_sdk_health_connect_pana.txt &&
flutter test packages/rook_sdk_health_connect --file-reporter github:reports/rook_sdk_health_connect_test.txt &&
flutter build apk --debug &&
echo "→" rook_sdk_health_connect - Verification - Finished