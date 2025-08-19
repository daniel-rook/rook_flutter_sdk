echo "→" rook_sdk_samsung_health - Verification - Starting...
mkdir reports
dart format packages/rook_sdk_samsung_health -o none --set-exit-if-changed &&
dart analyze packages/rook_sdk_samsung_health --fatal-infos &&
pana packages/rook_sdk_samsung_health 2>&1 | tee reports/rook_sdk_samsung_health_pana.txt &&
flutter test packages/rook_sdk_samsung_health --file-reporter github:reports/rook_sdk_samsung_health_test.txt &&
flutter build apk --debug &&
echo "→" rook_sdk_samsung_health - Verification - Finished