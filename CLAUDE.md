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

* **Global Context**: The root `CLAUDE.md` (this file) defines universal coding standards, testing patterns, and the
  project-wide tech stack.
* **Local Context**: Each module contains its own `CLAUDE.md`. You **must** locate and read the local agent file before
  modifying code within that module's directory.
* **Priority**: Local module instructions **strictly override** global instructions in the event of a conflict (e.g.,
  Dependency Injection patterns).

### 2. Documentation Map

Refer to the following structure to find specific implementation rules:

* `root/CLAUDE.md`: Global Context.
* `lib/CLAUDE.md`: Test & Demo application.
* `packages/rook_sdk_apple_health/CLAUDE.md`: SDK (Apple Health).
* `packages/rook_sdk_health_connect/CLAUDE.md`: SDK (Health Connect, Android Steps).
* `packages/rook_sdk_samsung_health/CLAUDE.md`: SDK (Samsung Health).
* `packages/rook_sdk_core/CLAUDE.md`: SDK (Core functionality, Cloud-to-Cloud data sources).

### 3. Execution Rule

When a task spans multiple modules, you are required to "check out" of the current module context and "check in" to the
next by reading its respective `CLAUDE.md`. Do not assume patterns from the `lib` module apply to other modules.

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
package contains its own `CLAUDE.md` with specific implementation details.

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

For all code prefer the KISS principle over DRY, always aim for a code than can be easily maintained.

### Commit conventions

* Commits with jira ticket must have the ticket at the end of the message between Square Brackets "[JIRA_TICKET]".
* When no Jira ticket is provided ask the user if the default placeholder "[NJT-000]" should be used.

### Naming conventions

* Use `CamelCase` for classes and `camelCase` for variables and functions.
* **Constants:** Follow Dart recommendations and use `lowerCamelCase` for constants (e.g.,
  `const int defaultTimeoutMs = 2500;`).
* **UI Elements:** In the `lib/` demo app, all screen widgets must end with the `Screen` suffix (e.g.,
  `DeviceSelectionScreen`). We do not use a `Widget` postfix for smaller components.

### Documentation & Metadata

* **Format:** Use DartDoc (`/// ...`) for all public classes, functions, and properties.
* **Rule**: Add documentation for new functions, classes and behavior. Since the SDKs inside `/packages` are consumed by
  clients, intent and usage details must be clear.
    * Avoid being verbose in documentation, prefer concise language rather than referencing conversations, PRD, or issue
      tickets that led to the implementation.
    * If the documentation is very simple (trivial) like `This functions adds two numbers` or just restates the code
      like `Single entry point for all user-initiated actions.` DO NOT write it, leave it without documentation.
    * Document the resulting behavior, never the authoring process. Do NOT commit AI/self-narration or meta-commentary
      about the writing or verification pass itself. State the fact, not how or when you checked it. Banned examples:
      `CONFIRMED present, verified <date>`, `closes the question raised in ...`, `not fixed by this documentation pass`,
      `resolved by this document`, `during this pass`.

### Formatting & Linting

* **Engine:** `flutter_lints` and `dart format`.
* **Ruleset:** Configured in `analysis_options.yaml`.
* **Indentation & Line Length:** Follow the `.editorconfig` file strictly (e.g., `max_line_length = 80` for Dart files).
* **Syntax:**
    * Always use trailing commas for multi-line parameter lists to ensure `dart format` works cleanly.
    * Avoid magic numbers, always create a constant with an easy-to-understand name.
    * Avoid wrapper functions that only delegate to other function calls or trigger side effects without adding
      meaningful logic, transformation, validation, or reusable domain behavior. Inline those calls at the usage site
      instead.

### Error Handling

* **Standard Rule:** Rely on standard Dart `try/catch` blocks for capturing errors.
* **Platform Channels:** When communicating with native platforms via MethodChannels, use Protobuf `*ResultProto`
  wrappers to handle the response. Unwrapping these protos should throw a specific `SDKException` on failure (e.g.,
  `BooleanResultProto.unwrap()`), allowing the returned `Future` to complete with an error that the consumer can
  `catch`.

## Project Rules

### Language

* **English only**: Every artifact committed to this repository must be written in English. This includes source code
  and identifiers, code comments, KDoc, Markdown documentation (including `CLAUDE.md` files), test names, and log
  messages. Do NOT introduce any other language into the codebase, even for temporary notes or TODOs.

### Ticket references

* **Avoid ticket IDs in the code**: Do NOT mention JIRA ticket IDs or links in source code, comments, or DartDoc unless
  it is absolutely necessary to explain context that cannot be conveyed otherwise. Prefer describing the intent
  directly. A ticket key belongs in the commit message, not in the source (see also the Documentation & Metadata rules
  above).

### Lightweight documentation

* Keep context and documentation files lightweight to avoid context overload when agents load them. This applies to
  `CLAUDE.md` files, Markdown docs, diagrams, and similar artifacts.
    * Be concise: state the rule or fact once, avoid restating what the code already expresses, and prefer short bullets
      over prose.
    * Do NOT duplicate content that already lives in another context file; cross-reference it instead.
    * When adding a new rule, check whether an existing entry can be extended rather than adding a redundant one.
