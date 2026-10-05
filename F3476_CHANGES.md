# Flutter 3.47.6 migration: changes affecting SDK consumers

Scope: the SDKs under `packages/` (`rook_sdk_core`, `rook_sdk_health_connect`, `rook_sdk_samsung_health`,
`rook_sdk_apple_health`). Changes that only touch the demo app or the playgrounds are not listed.

Status: Setup is complete. Flutter 3.41, 3.44 and 3.47 have not started.

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

No changes yet.

## Flutter 3.44

No changes yet.

## Flutter 3.47

No changes yet.
