cd packages/rook_sdk_core || exit
dart format -o none --set-exit-if-changed . &&
dart analyze --fatal-infos &&
flutter test &&
pana . &&
yes | dart pub publish
