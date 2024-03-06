echo "→" rook_sdk_apple_health - Verification - Starting...
mkdir reports
dart format packages/rook_sdk_apple_health -o none --set-exit-if-changed &&
dart analyze packages/rook_sdk_apple_health --fatal-infos &&
pana packages/rook_sdk_apple_health 2>&1 | tee reports/rook_sdk_apple_health_pana.txt &&
flutter test packages/rook_sdk_apple_health --file-reporter github:reports/rook_sdk_apple_health_test.txt &&
echo "→" rook_sdk_apple_health - Verification - Finished