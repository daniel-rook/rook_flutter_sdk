echo "→" Running vertification...
mkdir reports
echo "-----------------------------------------------FORMAT APPLE HEALTH--------------------------------------------" &&
dart format packages/rook_sdk_apple_health -o none --set-exit-if-changed &&
echo "--------------------------------------------------FORMAT CORE-------------------------------------------------" &&
dart format packages/rook_sdk_core -o none --set-exit-if-changed &&
echo "---------------------------------------------FORMAT HEALTH CONNECT--------------------------------------------" &&
dart format packages/rook_sdk_health_connect -o none --set-exit-if-changed &&
echo "---------------------------------------------FORMAT SAMSUNG HEALTH--------------------------------------------" &&
dart format packages/rook_sdk_samsung_health -o none --set-exit-if-changed &&
echo "---------------------------------------------ANALYZE APPLE HEALTH---------------------------------------------" &&
dart analyze packages/rook_sdk_apple_health --fatal-infos &&
echo "-------------------------------------------------ANALYZE CORE-------------------------------------------------" &&
dart analyze packages/rook_sdk_core --fatal-infos &&
echo "---------------------------------------------ANALYZE HEALTH CONNECT-------------------------------------------" &&
dart analyze packages/rook_sdk_health_connect --fatal-infos &&
echo "---------------------------------------------ANALYZE SAMSUNG HEALTH-------------------------------------------" &&
dart analyze packages/rook_sdk_samsung_health --fatal-infos &&
echo "-----------------------------------------------PANA APPLE HEALTH----------------------------------------------" &&
pana packages/rook_sdk_apple_health 2>&1 | tee reports/rook_sdk_apple_health_pana.txt &&
echo "---------------------------------------------------PANA CORE--------------------------------------------------" &&
pana packages/rook_sdk_core 2>&1 | tee reports/rook_sdk_core_pana.txt &&
echo "----------------------------------------------PANA HEALTH CONNECT---------------------------------------------" &&
pana packages/rook_sdk_health_connect 2>&1 | tee reports/rook_sdk_health_connect_pana.txt &&
echo "----------------------------------------------PANA SAMSUNG HEALTH---------------------------------------------" &&
pana packages/rook_sdk_samsung_health 2>&1 | tee reports/rook_sdk_samsung_health_pana.txt &&
echo "-----------------------------------------------TEST APPLE HEALTH----------------------------------------------" &&
flutter test packages/rook_sdk_apple_health --file-reporter github:reports/rook_sdk_apple_health_test.txt &&
echo "---------------------------------------------------TEST CORE--------------------------------------------------" &&
dart test packages/rook_sdk_core --file-reporter github:reports/rook_sdk_core_test.txt &&
echo "----------------------------------------------TEST HEALTH CONNECT---------------------------------------------" &&
flutter test packages/rook_sdk_health_connect --file-reporter github:reports/rook_sdk_health_connect_test.txt &&
echo "----------------------------------------------TEST SAMSUNG HEALTH---------------------------------------------" &&
flutter test packages/rook_sdk_samsung_health --file-reporter github:reports/rook_sdk_samsung_health_test.txt &&
echo "---------------------------------------------------BUILD IOS--------------------------------------------------" &&
flutter build ios --debug &&
echo "-------------------------------------------------BUILD ANDROID------------------------------------------------" &&
flutter build apk --debug &&
echo "→" Vertification finished successfully!
