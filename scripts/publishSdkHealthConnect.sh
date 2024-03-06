cd packages/rook_sdk_health_connect || exit
dart format -o none --set-exit-if-changed . &&
dart analyze --fatal-infos &&
flutter test &&
pana . &&
yes | dart pub publish
