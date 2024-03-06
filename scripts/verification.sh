echo "→" Running vertification flow
echo "→" rook_sdk_apple_health - Running all linters, unit tests and instrumentation tests
cd packages/rook_sdk_apple_health || exit
# dart format -o none . && # dart format cannot detect editorconfig rules, so it will be replaced with the IDE's formatter.
dart analyze --fatal-infos &&
flutter test &&
pana .
cd ..
cd ..
echo "→" rook_sdk_core - Running all linters, unit tests and instrumentation tests
cd packages/rook_sdk_core || exit
# dart format -o none. && # dart format cannot detect editorconfig rules, so it will be replaced with the IDE's formatter.
dart analyze --fatal-infos &&
flutter test &&
pana .
cd ..
cd ..
echo "→" rook_sdk_health_connect - Running all linters, unit tests and instrumentation tests
cd packages/rook_sdk_health_connect || exit
# dart format -o none . && # dart format cannot detect editorconfig rules, so it will be replaced with the IDE's formatter.
dart analyze --fatal-infos &&
flutter test &&
pana .
echo "→" Vertification flow finished successfully!