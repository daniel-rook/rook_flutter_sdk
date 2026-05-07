# rook_sdk_apple_health

## Module Overview

This module is a Flutter plugin that acts as a wrapper around the native iOS `RookSDK` SDK. It is responsible for health
data synchronization on iOS devices using Apple Health.

Because this package connects Dart to native iOS code, development requires adherence to strict bridging rules across
three boundaries: Dart, Protocol Buffers (Proto), and Swift (Native).

### Experimental features

This module also exposes experimental methods to write data into Health Connect. However, these functions are not
stable yet.

**Rule**: When asked to code functionality related to an experimental feature always annotate the exposed
functions/classes/etc to the consumer with `Deprecated("[Message explaining the experimental status]")` and add a
warning to the functions/classes/etc documentation.

## 1. Dart Side Rules

The Dart side exposes the API to Flutter applications and manages communication with the native MethodChannel.

### Tech Stack & Pattern

* **Pattern**: Follows the `plugin_platform_interface` pattern (`RookSdkAppleHealthPlatform` interface, implemented by
  `MethodChannelRookSdkAppleHealth`).
* **Communication**: Uses `MethodChannel` (`'rook_sdk_apple_health'`) to send byte arrays (serialized Protobufs) to
  native code, and receives byte arrays back.

### Implementation Rules

* **Data Flow**: When calling a MethodChannel function:
    1. Await the response (which is a byte array from Swift).
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

* **Entry Points**: The public API consumed by Flutter applications is divided into functional managers:
    * `AHRookBackgroundSync`: Background sync operations.
    * `AHRookConfigurationManager`: Setup and User management.
    * `AHRookContinuousUpload`: Continuous background data upload.
    * `AHRookHealthPermissionsManager`: Requesting Apple Health permissions.
    * `AHRookHelpers`: Helper functions that do not fit in any manager.
    * `AHRookSyncManager`: Historic, Summary, and Event manual syncs.
* **Visibility Rule**: All entry points and public enums **MUST** be explicitly exported in
  `lib/rook_sdk_apple_health.dart`. Everything else (like the MethodChannels, Protos, and Mappers) must remain
  un-exported to hide internal implementation details.

## 2. Proto Side Rules (The Bridge)

Protocol Buffers are used as the single source of truth for transferring complex data objects between Dart and Swift
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
  Swift code:
  ```bash
  cd proto
  sh generate.sh
  ```
  *(This compiles the new files into `lib/src/data/proto/` and `ios/Classes/Proto/`)*.

## 3. Native Side Rules (iOS / Swift)

The iOS folder (`ios/Classes/`) acts as the Native implementation of the Flutter plugin, interfacing directly with the
native iOS `RookSDK` SDK.

### Tech Stack

* **Language**: Swift.
* **Entry Point**: `RookSdkAppleHealthPlugin.swift`.

### Implementation Rules

* **Method Channel Handlers**: All incoming method calls from Dart are handled in
  `handle(_ call: FlutterMethodCall, result: @escaping FlutterResult)`.
* **Execution**: Native SDK calls must be executed safely, usually running within appropriate background/main threads as
  required by `RookSDK`.
* **Mappers**:
    * You must map the native domain objects into the generated Swift Protobuf objects.
    * Extension functions for this mapping are located in `ios/Classes/Mapper/` (e.g., `SleepSummaryMappers.swift`).
    * **Rule**: When mapping native types to Protos, use `.toProtoString()`, `.toInt32()`, `.toDouble()`, etc., safely
      handling optionals and empty arrays as defined by the proto structure.
* **Returning Data**:
    * Create the corresponding `ResultProto` (e.g., `SleepSummaryResultProto.with { ... }`).
    * Assign the mapped data to the `success` field.
    * Serialize the Proto to data using `try? resultProto.serializedData()$.
    * Send the byte array back through the Flutter `result(data)` callback.
* **Error Handling**:
    * If a native call throws an error, catch it, map it to an `SDKExceptionProto`, and wrap it in the `ResultProto`'s
      `failure` field.
    * **DO NOT** use `FlutterError` to return functional SDK errors; always return the serialized Proto with the
      `failure` branch populated so the Dart side can use its `.unwrap()` logic to throw the specific `SDKException`.

## Module Structure

**Dart sources root**: `lib/src/`
**Native iOS sources root**: `ios/Classes/`

### Dart Side (`lib/src/`)

* `data/`: Contains all code related to parsing, mapping, and handling raw data from native.
    * `proto/`: Generated Protobuf files (`.pb.dart`, `.pbenum.dart`, etc.).
    * `mapper/`: Extension functions converting Proto objects to Domain models (`rook_sdk_core`).
    * `result/`: Proto Result unwrappers (converting Proto Results into either Domain objects or thrown `SDKException`).
    * `extension/`: General Dart extensions (e.g., DateTime parsing).
* `domain/`: Contains Apple Health specific enumerations (e.g., `AHEventSyncType`, `AppleHealthPermission`) and internal
  utilities.
* `platform/`: MethodChannel implementations and Platform interfaces.
* `lib/src/*.dart`: The public-facing entry point managers (e.g., `ah_rook_sync_manager.dart`).

### Native Side (`ios/Classes/`)

* `Mapper/`: Extension functions converting iOS `RookSDK` models to Swift Protobuf objects.
* `Proto/`: Generated Swift Protobuf files (`protos.pb.swift`).
* `Observer/`: Background delivery/sync observers.
* `Utils/`: General Swift utility functions.
* `RookSdkAppleHealthPlugin.swift`: The main MethodChannel handler and plugin entry point.
