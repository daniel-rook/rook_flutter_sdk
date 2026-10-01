# rook_sdk_samsung_health

## Module Overview

This module is a Flutter plugin that acts as a wrapper around the native Android `rook-samsung-health` SDK. It is
responsible for health data synchronization on Android devices using Samsung Health.

Because this package connects Dart to native Android code, development requires adherence to strict bridging rules
across three boundaries: Dart, Protocol Buffers (Proto), and Kotlin (Native).

### Experimental features

This module also exposes experimental methods to write data into Health Connect. However, these functions are not
stable yet.

**Rule**: When asked to code functionality related to an experimental feature always annotate the exposed
functions/classes/etc to the consumer with `Deprecated("[Message explaining the experimental status]")` and add a
warning to the functions/classes/etc documentation.

## 1. Dart Side Rules

The Dart side exposes the API to Flutter applications and manages communication with the native MethodChannel.

### Tech Stack & Pattern

* **Pattern**: Follows the `plugin_platform_interface` pattern (`RookSdkSamsungHealthPlatform` interface, implemented by
  `MethodChannelRookSdkSamsungHealth`).
* **Communication**: Uses `MethodChannel` (`'rook_sdk_samsung_health'`) to send byte arrays (serialized Protobufs) to
  native code, and receives byte arrays back.

### Implementation Rules

* **Data Flow**: When calling a MethodChannel function:
    1. Await the response (which is a byte array from Kotlin).
    2. Parse the byte array into a Protobuf wrapper object (e.g., `SleepSummaryResultProto.fromBuffer(...)`).
    3. Call the `unwrap()` extension method on the Protobuf result.
* **Error Handling**:
    * The `unwrap()` method (located in `src/data/result/`) is responsible for checking if the Proto contains a
      `success` or `failure`.
    * If `failure`, `unwrap()` must throw an `SDKException` initialized from the proto's code and message.
* **Mappers**:
    * Raw Protobuf payload objects must be converted to `rook_sdk_core` Domain objects.
    * Use extension functions on the Proto objects located in `src/data/mapper/` or `src/data/result/` to safely map
      fields. Use `checkNonDefault()` to handle missing numeric values if applicable.

### Entry Points & Visibility

* **Entry Points**: The public API consumed by Flutter applications is concentrated on a single manager:
    * `RookSamsung`
* **Visibility Rule**: The entry point and public enums/models **MUST** be explicitly exported in
  `lib/rook_sdk_samsung_health.dart`. Everything else (like the MethodChannels, Protos, and Mappers) must remain
  un-exported to hide internal implementation details.

## 2. Proto Side Rules (The Bridge)

Protocol Buffers are used as the single source of truth for transferring complex data objects between Dart and Kotlin
over the MethodChannel.

### Tech Stack

* **Language**: Proto3.
* **Location**: `proto/protos.proto`.

### Implementation Rules

* **Modifying Data Types**: If a model changes or a new data type is added, you **MUST** update `proto/protos.proto`
  first.
* **Result Wrappers**: Every method that returns data from Native to Dart MUST be wrapped in a Proto Result message
  using a `oneof` block:
  ```protobuf
  message MyDataResultProto {
    oneof result {
      MyDataProto success = 1;
      SDKExceptionProto failure = 2;
    }
  }
  ```
* **Generation**: After modifying `protos.proto`, you **MUST** run the code generation script before writing any Dart or
  Kotlin code:
  ```bash
  cd proto
  sh generate.sh
  ```
  *(This compiles the new files into `lib/src/data/proto/`
  and `android/src/main/kotlin/io/tryrook/rook_sdk_samsung_health/proto/`)*.

## 3. Native Side Rules (Android / Kotlin)

The Android folder (`android/src/main/kotlin/`) acts as the Native implementation of the Flutter plugin, interfacing
directly with the native Android `rook-samsung-health` SDK.

### Tech Stack

* **Language**: Kotlin.
* **Entry Point**: `RookSdkSamsungHealthPlugin.kt`.

### Implementation Rules

* **Method Channel Handlers**: All incoming method calls from Dart are handled in
  `onMethodCall(call: MethodCall, result: Result)`.
* **Execution**: Native SDK calls must be executed safely using Coroutines (`CoroutineScope`). Use Kotlin's `Result` or
  `try/catch` blocks to manage asynchronous flows.
* **Mappers**:
    * You must map the native domain objects into the generated Kotlin Protobuf objects.
    * Extension functions for this mapping are located in `android/src/main/kotlin/.../mapper/`.
* **Returning Data**:
    * Create the corresponding `ResultProto` (e.g., `SleepSummaryResultProto.newBuilder().build()`).
    * Assign the mapped data to the `success` field.
    * Serialize the Proto to a byte array using `resultProto.toByteArray()$.
    * Send the byte array back through the Flutter `result.success(data)` callback.
* **Error Handling**:
    * If a native call throws an error, catch it, map it to an `SDKExceptionProto`, and wrap it in the `ResultProto`'s
      `failure` field.
    * **DO NOT** use `result.error()` to return functional SDK errors; always return the serialized Proto with the
      `failure` branch populated so the Dart side can use its `.unwrap()` logic to throw the specific `SDKException`.

## Module Structure

**Dart sources root**: `lib/src/`
**Native Android sources root**: `android/src/main/kotlin/io/tryrook/rook_sdk_samsung_health/`

### Dart Side (`lib/src/`)

* `data/`: Contains all code related to parsing, mapping, and handling raw data from native.
    * `proto/`: Generated Protobuf files (`.pb.dart`, `.pbenum.dart`, etc.).
    * `mapper/`: Extension functions converting Proto objects to Domain models (`rook_sdk_core`).
    * `result/`: Proto Result unwrappers (converting Proto Results into either Domain objects or thrown `SDKException`).
    * `extension/`: General Dart extensions.
* `domain/`: Contains Samsung Health specific enumerations and internal utilities.
* `platform/`: MethodChannel implementations and Platform interfaces.
* `lib/src/*.dart`: The public-facing entry point managers (e.g., `sh_rook_sync_manager.dart`).

### Native Side (`android/src/main/kotlin/io/tryrook/rook_sdk_samsung_health/`)

* `mapper/`: Extension functions converting Android `rook-samsung-health` models to Kotlin Protobuf objects.
* `proto/`: Generated Kotlin Protobuf files.
* `exception/`: Custom exception definitions for the native side.
* `handler/`: Component classes dividing the business logic and method channel execution by feature (e.g.,
  `SyncHandler`, `PermissionsHandler`).
* `eventhandler/`: Components responsible for transmitting events back to Dart.
* `extension/`: Kotlin utility extensions.
* `RookSdkSamsungHealthPlugin.kt`: The main MethodChannel handler and plugin entry point, which delegates to the
  handlers.
