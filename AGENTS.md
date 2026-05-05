# RookFlutter

## Project Overview

RookFlutter is a Flutter monorepo that hosts the SDKs ROOK provides to clients for integrating with multiple Health
Platforms. These SDKs abstract the complexity of working with providers such as Health Connect, Apple Health, Samsung
Health and cloud-to-cloud data sources, and are a core part of ROOK's product offering. The monorepo also contains a
development application for internal testing and demos.

The SDKs are implemented via Flutter plugins which are wrappers around the native SDKs.

The five main components are:

1. `packages/rook_sdk_apple_health`: An SDK Responsible for health data synchronization on IOS devices.
    * Integrates with **Apple Health** using Health Kit.
    * Manages background data upload logic.
    * Manages health data write logic for Apple Health.
2. `packages/rook_sdk_health_connect`: An SDK Responsible for health data synchronization on Android devices.
    * Integrates with **Health Connect** using the Health Connect Client library.
    * Integrates with **Android Steps** using the Steps Detector sensor (Deprecated) and the Android Step Counter.
    * Manages background data upload logic.
    * Manages health data write logic for Health Connect.
3. `packages/rook_sdk_samsung_health`: An SDK Responsible for health data synchronization on Android devices.
    * Integrates with **Samsung Health** using the Samsung Health Data library.
    * Manages background data upload logic.
    * Manages health data write logic.
4. `packages/rook_sdk_core`: Core functionality for Android and IOS devices.
    * Provides shared data types definitions for Health Connect, Samsung Health and Apple Health SDKs.
    * Manages OAuth flows and connection states for cloud-to-cloud health data sources.
5. `lib`: A Development application used to test and demo all SDKs.

## Project Context

> [!IMPORTANT]
> This project uses a **Modular Instruction System**. To maintain architectural integrity and avoid context drift, you
> must adhere to the following hierarchy:

### 1. Context Loading Protocol

* **Global Context**: The root `AGENTS.md` (this file) defines universal coding standards, testing patterns, and the
  project-wide tech stack.
* **Local Context**: Each module contains its own `AGENTS.md`. You **must** locate and read the local agent file before
  modifying code within that module's directory.
* **Priority**: Local module instructions **strictly override** global instructions in the event of a conflict (e.g.,
  Dependency Injection patterns).

### 2. Documentation Map

Refer to the following structure to find specific implementation rules:

* `root/AGENTS.md`: Global Context.
* `lib/AGENTS.md`: Test & Demo application.
* `packages/rook_sdk_apple_health/AGENTS.md`: SDK (Apple Health).
* `packages/rook_sdk_health_connect/AGENTS.md`: SDK (Health Connect, Android Steps).
* `packages/rook_sdk_samsung_health/AGENTS.md`: SDK (Samsung Health).
* `packages/rook_sdk_core/AGENTS.md`: SDK (Core functionality, Cloud-to-Cloud data sources).

### 3. Execution Rule

When a task spans multiple modules, you are required to "check out" of the current module context and "check in" to the
next by reading its respective `AGENTS.md`. Do not assume patterns from the `lib` module apply to other modules.

## Project Tech stack

| Category           | Technology      | Notes                                                       |
|:-------------------|:----------------|:------------------------------------------------------------|
| **Language**       | Dart 3.10+      | Used globally across all Flutter modules.                   |
| **Asynchrony**     | Future & Stream | Prefer `async/await` over `.then()` chains for readability. |
| **Error handling** | try/catch       | Dart `Exception`s are thrown and caught by the consumer.    |

### Testing

* **Framework**: `flutter_test` (built-in).
* **Assertions**: Standard Dart `expect()`.
* **Mocking**: Use `TestDefaultBinaryMessengerBinding` to mock `MethodChannel` responses directly. Do not use
  third-party mocking libraries like `mockito` or `mocktail`.
* **Organization**: Tests must be classified into logical blocks using `group()` to keep similar tests together.
* **Test Naming**: Test descriptions must follow the pattern `GIVEN ... WHEN ... THEN ...`:
    * **GIVEN**: Describes the initial state or behavior of the test scenario.
    * **WHEN**: Describes the action or event that triggers the test scenario.
    * **THEN**: Describes the expected result or outcome of the test scenario.

**Example Test:**

```text
group("Result Handling", () {
    test(
        "GIVEN a successful response WHEN unwrap is called THEN it should return the expected value",
        () {
        // ...
        },
    );
});
```

## Project Dependency Graph

* `rook_sdk_apple_health` -> `rook_sdk_core`
* `rook_sdk_health_connect` -> `rook_sdk_core`
* `rook_sdk_samsung_health` -> `rook_sdk_core`
* `app (root)` -> `rook_sdk_apple_health`, `rook_sdk_health_connect`, `rook_sdk_samsung_health`, `rook_sdk_core`

* **Constraint:** Platform-specific SDKs (`apple_health`, `health_connect`, `samsung_health`) must remain entirely
  decoupled from one another.

## Project structure

The project uses a monorepo structure with 1 main application and 4 packages inside the `packages/` directory. Each
package contains its own `AGENTS.md` with specific implementation details.

* `lib/`: The application used to test and demo both SDKs.
* `packages/`:
    * `rook_sdk_core/`: Core functionality and shared data types for Android and iOS SDKs. Manages OAuth flows for
      cloud-to-cloud sources.
    * `rook_sdk_apple_health/`: SDK Responsible for:
        * Health data synchronization (Apple Health).
        * Health data write (Apple Health).
    * `rook_sdk_health_connect/`: SDK Responsible for:
        * Health data synchronization (Health Connect & Android Steps).
        * Health data write (Health Connect).
    * `rook_sdk_samsung_health/`: SDK Responsible for:
        * Health data synchronization (Samsung Health).
        * Health data write (Samsung Health).
* `scripts/`: Global automation and CI/CD utility scripts.

## Project Coding Standards

### Naming conventions

* Use `CamelCase` for classes and `camelCase` for variables and functions.
* **Constants:** Follow Dart recommendations and use `lowerCamelCase` for constants (e.g.,
  `const int defaultTimeoutMs = 2500;`).
* **UI Elements:** In the `lib/` demo app, all screen widgets must end with the `Screen` suffix (e.g.,
  `DeviceSelectionScreen`). We do not use a `Widget` postfix for smaller components.

### Documentation & Metadata

* **Format:** Use DartDoc (`/// ...`) for all public classes, functions, and properties.
* **Rule:** Always add documentation for new public functions, classes, and behavior. Since the SDKs inside `/packages`
  are consumed by clients, intent and usage details must be clear.

### Formatting & Linting

* **Engine:** `flutter_lints` and `dart format`.
* **Ruleset:** Configured in `analysis_options.yaml`.
* **Indentation & Line Length:** Follow the `.editorconfig` file strictly (e.g., `max_line_length = 80` for Dart files).
* **Syntax:**
    * Always use trailing commas for multi-line parameter lists to ensure `dart format` works cleanly.
    * Avoid magic numbers, always create a constant with an easy-to-understand name.

### Error Handling

* **Standard Rule:** Rely on standard Dart `try/catch` blocks for capturing errors.
* **Platform Channels:** When communicating with native platforms via MethodChannels, use Protobuf `*ResultProto`
  wrappers to handle the response. Unwrapping these protos should throw a specific `SDKException` on failure (e.g.,
  `BooleanResultProto.unwrap()`), allowing the returned `Future` to complete with an error that the consumer can
  `catch`.
