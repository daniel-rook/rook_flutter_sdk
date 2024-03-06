echo "→" rook_sdk_core - Verification - Starting...
mkdir reports
dart format packages/rook_sdk_core -o none --set-exit-if-changed &&
dart analyze packages/rook_sdk_core --fatal-infos &&
pana packages/rook_sdk_core 2>&1 | tee reports/rook_sdk_core_pana.txt &&
flutter test packages/rook_sdk_core --file-reporter github:reports/rook_sdk_core_test.txt &&
echo "→" rook_sdk_core - Verification - Finished