# Flutter 3.47.6 migration: changes affecting SDK consumers

Scope: the SDKs under `packages/` (`rook_sdk_core`, `rook_sdk_health_connect`, `rook_sdk_samsung_health`,
`rook_sdk_apple_health`). Changes that only touch the demo app or the playgrounds are not listed.

Status: Setup, Flutter 3.41, Flutter 3.44 and Flutter 3.47 are complete.

## Setup

### Affects consumers

* **Plugin Gradle scripts need a Kotlin Gradle Plugin with the `kotlin { compilerOptions }` DSL**
  (`rook_sdk_health_connect`, `rook_sdk_samsung_health`).
    * The plugin `android/build.gradle.kts` files replaced `kotlinOptions` with
      `kotlin { compilerOptions { jvmTarget.set(JvmTarget.JVM_17) } }`, because `kotlinOptions` is removed in newer
      Kotlin versions.
    * Consumer apps on a Kotlin Gradle Plugin older than 2.0 may fail to configure the plugin. The 2.0 threshold is
      from memory of the Kotlin release notes, not verified.
    * A test with Kotlin 1.9.25 was inconclusive: Flutter 3.47's Gradle tooling loads Kotlin 2.2.20 and overrides the
      app's declared version. Test with an app on an older Flutter before release.
    * Not affected: the target stays JVM 17, and AGP (8.9.3), Kotlin (2.1.21), `compileSdk`, `minSdk` and `targetSdk`
      declared by the plugins are unchanged.

### Reviewed, no consumer impact

* Plugin `build.gradle` and `settings.gradle` converted to Kotlin DSL. The consuming app evaluates the plugin script
  with its own AGP and Kotlin versions, so Groovy vs KTS makes no difference.
* `rook_sdk_health_connect`: Gradle wrapper files removed from `android/`. Consumer builds use the app's wrapper.
* Android unit tests, the test source set and test dependencies removed from both plugins. They are not part of the
  consumer build.
* `rook_sdk_apple_health`: the podspec platform stays at iOS 13.0 in this phase, so the minimum iOS version for
  consumers is unchanged. Flutter 3.47 raises it to 15.0.
* No change to `lib/`, `pubspec.yaml` constraints, native plugin sources, SDK versions or public API.

### Note for consumers

* Building with Xcode 27 requires the app's own iOS deployment target to be 15.0 or higher. This comes from the
  toolchain, not from the SDK podspec, and apps with a lower target must raise it.
* Flutter 3.47.6 requires Gradle 8.14 or higher and AGP 8.11.1 or higher in the consuming app. The SDKs still declare
  AGP 8.9.3 for standalone builds.

## Flutter 3.41

### Affects consumers

* **Apps using `rook_sdk_apple_health` must adopt the UIScene lifecycle to run on iOS 27 with Xcode 27.**
    * Without it, the unmodified demo app exits with `SIGTRAP` shortly after launch on the iOS 27 simulator.
    * Conform `AppDelegate` to `FlutterImplicitEngineDelegate`, register plugins in
      `didInitializeImplicitFlutterEngine`, and add a `UIApplicationSceneManifest` using `FlutterSceneDelegate` to
      `Info.plist`. The Flutter tool can migrate an unmodified `AppDelegate` automatically.
    * No change is required in the plugin itself.
* **Plugin registration now happens when the scene connects**, not inside
  `application(_:didFinishLaunchingWithOptions:)`.
    * Measured on an iOS 27 device: when the system relaunched the app in the background, plugins registered within
      about 50 ms of launch, so the background listeners set up at registration are in place. This is a single run.
    * No native method that apps must call from their `AppDelegate` is required.

### Open observation

* On the same device, health samples added while the app was in the background reached the webhook only after the
  phone was rebooted.
    * No app launch occurred at the time the samples were added, so none of the migrated launch code ran. The cause is
      not determined.
    * There is no control for the previous lifecycle, because an app without UIScene does not launch on iOS 27.

### Reviewed, no consumer impact

* The five Flutter 3.41 breaking changes (`FontWeight` and variable fonts, `containsSemantics`,
  `findChildIndexCallback`, Material 3 tokens, Linux merged threads) are not used by any SDK. Analysis and tests
  pass for all four packages on Flutter 3.47.6.
* `rook_sdk_health_connect` and `rook_sdk_samsung_health`: no changes.
* No change to `lib/`, `pubspec.yaml` constraints, native plugin sources or public API.

## Flutter 3.44

### Affects consumers

* **`rook_sdk_apple_health` is distributed through Swift Package Manager only. The podspec is removed.**
    * Apps must have Swift Package Manager enabled. It is the default from Flutter 3.44.
    * With it disabled (`enable-swift-package-manager: false` in `pubspec.yaml`, or
      `flutter config --no-enable-swift-package-manager`), the Flutter tool stops with "The following plugin(s) are only
      compatible with Swift Package Manager: rook_sdk_apple_health". There is no CocoaPods fallback.
    * Apps on Flutter older than 3.44 cannot use the plugin, because its `Package.swift` depends on `FlutterFramework`.
* **`RookSDK` 4.2.0 and `swift-protobuf` 1.28.2 are now fetched from GitHub** (`RookeriesDevelopment/rook-ios-sdk` and
  `apple/swift-protobuf`) at exact versions, instead of the CocoaPods CDN.
    * An app whose other Swift packages require a different `swift-protobuf` version fails to resolve dependencies.
    * Apps that still use CocoaPods for other plugins keep working alongside it.
* The minimum iOS version declared by the plugin is unchanged in this phase (13.0). Flutter 3.47 raises it to 15.0.

### Reviewed, no consumer impact

* The nine Flutter 3.44 breaking changes are not used by any SDK.
* No change to the Dart API, `pubspec.yaml` constraints or the `RookSDK` version.

## Flutter 3.47

### Affects consumers

* **All four SDKs require Flutter 3.47.0 or newer and Dart 3.13.0 or newer.**
    * `rook_sdk_apple_health`, `rook_sdk_health_connect` and `rook_sdk_samsung_health` declare `flutter: ">=3.47.0"` and
      `sdk: ">=3.13.0 <4.0.0"`.
    * `rook_sdk_core` is pure Dart and declares only the Dart constraint.
* **`rook_sdk_apple_health` declares iOS 15.0 as its minimum** in `Package.swift`. It matches the minimum of Flutter
  3.47 itself, so apps built with it are not affected.
* **`rook_sdk_health_connect` and `rook_sdk_samsung_health` no longer apply the Kotlin Gradle Plugin.**
    * Both build in an app with `android.builtInKotlin=true` and with `android.builtInKotlin=false` (measured on the
      playgrounds with Android Gradle Plugin 9.1.0). With it disabled, Flutter applies Kotlin to plugins that do not.
    * Per the Flutter tool source, an app with built-in Kotlin disabled must declare the Kotlin Gradle Plugin in its
      root `plugins` block, as the standard app template does.
    * The plugins' standalone build uses AGP 9.1.0 and Kotlin 2.4.0. Generated protobuf Java sources stay under
      `src/main/kotlin`, now registered through `java.directories`.
* **Android build requirements for apps.** Flutter 3.47.6 fails the build below Gradle 8.14, AGP 8.11.1, Kotlin Gradle
  Plugin 2.2.20 or Java 17. It warns below Gradle 9.1.0, AGP 9.0.1 and Kotlin 2.3.20. The recommended matrix is Gradle
  9.3.1, AGP 9.1.0 and Kotlin 2.4.0.

### Reviewed, no consumer impact

* The three Flutter 3.47 breaking changes (`describeEnum`, `header` semantics, OpenGL ES render-to-texture) are not used
  by any SDK.
* The Material and Cupertino decoupling does not affect the SDKs, which contain no UI code. Only the demo app and the
  playgrounds migrated to `material_ui`.
* The Android `targetSdk` removed from the plugins' build scripts has no effect on consumers.

## Summary: all consumer changes

The final state for apps that use the SDKs. The sections above describe how each change arrived. Where they differ,
this section applies.

### All SDKs

* Require Flutter 3.47.0 or newer and Dart 3.13.0 or newer.
    * `rook_sdk_apple_health`, `rook_sdk_health_connect` and `rook_sdk_samsung_health`: `flutter: ">=3.47.0"` and
      `sdk: ">=3.13.0 <4.0.0"`.
    * `rook_sdk_core` is pure Dart: `sdk: ">=3.13.0 <4.0.0"` only.
* No change to the Dart public API or to the native SDK versions (`RookSDK`, `rook-sdk` and `rook-sdk-samsung` 4.2.0).

### `rook_sdk_core`

* The constructors of `Authorizer` and `RookApiSources` use Dart private named parameters. Callers are unchanged. It is
  one reason for the Dart 3.13 floor.

### `rook_sdk_health_connect` and `rook_sdk_samsung_health` (Android)

* **Build tools in the app.** Flutter 3.47.6 fails the build below Gradle 8.14, AGP 8.11.1, Kotlin Gradle Plugin 2.2.20
  or Java 17, and warns below Gradle 9.1.0, AGP 9.0.1 and Kotlin 2.3.20. The recommended matrix is Gradle 9.3.1,
  AGP 9.1.0 and Kotlin 2.4.0.
* **The plugins no longer apply the Kotlin Gradle Plugin.** `rook_sdk_samsung_health` still applies Parcelize.
    * They build with `android.builtInKotlin=true` and with `android.builtInKotlin=false` (measured with AGP 9.1.0).
    * With built-in Kotlin disabled, the app must declare the Kotlin Gradle Plugin in its root `plugins` block, as the
      standard app template does (from the Flutter tool source).
* Unchanged: `minSdk` (26 for Health Connect, 29 for Samsung Health), `compileSdk` 36 and JVM target 17.
* The plugin scripts use `kotlin { compilerOptions }`. The Flutter 3.47 floor of Kotlin Gradle Plugin 2.2.20 already
  covers its need for a recent Kotlin.

### `rook_sdk_apple_health` (iOS)

* **Distributed through Swift Package Manager only. The podspec is removed.**
    * Swift Package Manager must be enabled. It is the default from Flutter 3.44. With it disabled, the Flutter tool
      stops with "The following plugin(s) are only compatible with Swift Package Manager: rook_sdk_apple_health".
    * Apps may keep using CocoaPods for other plugins alongside it.
* **`RookSDK` 4.2.0 and `swift-protobuf` 1.28.2** are fetched from GitHub (`RookeriesDevelopment/rook-ios-sdk` and
  `apple/swift-protobuf`) at exact versions.
    * The build needs access to github.com.
    * An app whose other Swift packages require a different `swift-protobuf` version fails to resolve dependencies.
* **Minimum iOS is 15.0**, declared in `Package.swift`. Building with Xcode 27 requires the app's deployment target to
  be 15.0 or higher, and Flutter 3.47.6 requires Xcode 15 or newer.
* **Apps must adopt the UIScene lifecycle** to run on iOS 27 with Xcode 27: conform `AppDelegate` to
  `FlutterImplicitEngineDelegate`, register plugins in `didInitializeImplicitFlutterEngine`, and add a
  `UIApplicationSceneManifest` using `FlutterSceneDelegate` to `Info.plist`. The Flutter tool can migrate an unmodified
  `AppDelegate`.
* **Plugin registration happens when the scene connects.** On an iOS 27 device the plugins registered about 50 ms after
  a system background relaunch (a single run). Apps do not need to call anything from their `AppDelegate`.

### Actions for an app upgrading from Flutter 3.38.5

1. Upgrade Flutter to 3.47.0 or newer.
2. Android: raise Gradle, AGP and Kotlin to at least the error floors above, preferably the recommended matrix.
3. iOS: keep Swift Package Manager enabled, raise the deployment target to 15.0, and migrate the app to the UIScene
   lifecycle.
4. Make sure no other Swift package in the app pins a different `swift-protobuf` version.

### Not affecting consumers

* The Flutter 3.41, 3.44 and 3.47 breaking changes: none is used by the SDKs.
* The Material and Cupertino decoupling: the SDKs contain no UI code.
* The Kotlin DSL conversion, the removed Android tests and Gradle wrapper, and the `targetSdk` removal in the plugin
  build scripts.

### Open point

* On an iOS 27 device, health samples added while the app was in the background reached the webhook only after a
  reboot. No app launch occurred at that time, so the migrated launch code did not run. The cause is not determined, and
  there is no control for the previous lifecycle because an app without UIScene does not launch on iOS 27.
