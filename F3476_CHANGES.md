# Flutter 3.47.6 migration: changes affecting SDK consumers

Scope: the SDKs under `packages/` (`rook_sdk_core`, `rook_sdk_health_connect`, `rook_sdk_samsung_health`,
`rook_sdk_apple_health`). Changes that only touch the demo app or the playgrounds are not listed.

Status: Setup, Flutter 3.41 and Flutter 3.44 are complete. Flutter 3.47 has not started.

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
* `rook_sdk_apple_health`: podspec platform stays at iOS 13.0, so the minimum iOS version for consumers is unchanged.
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
* The minimum iOS version declared by the plugin is unchanged (13.0).

### Reviewed, no consumer impact

* The nine Flutter 3.44 breaking changes are not used by any SDK.
* No change to the Dart API, `pubspec.yaml` constraints or the `RookSDK` version.

## Flutter 3.47

No changes yet.
