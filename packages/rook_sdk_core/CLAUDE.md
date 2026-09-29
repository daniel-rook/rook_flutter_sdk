# rook_sdk_core

## Module Overview

This module contains the core functionality shared across `rook_sdk_apple_health`, `rook_sdk_health_connect`, and
`rook_sdk_samsung_health`. It also serves as the API client (`rook-api-sources`) that manages OAuth flows and connection
states for cloud-to-cloud health data sources (e.g., Garmin, Oura, Fitbit).

## Module Tech stack

| Category | Technology | Notes                                     |
|:---------|:-----------|:------------------------------------------|
| **HTTP** | Dio        | Used for all network calls.               |
| **JSON** | Manual     | Manual Map serialization/deserialization. |

### Data Persistence

The `rook_sdk_core` package only uses in-memory storage within its classes.
**Rule**: Do not use `shared_preferences` or databases (like Hive/SQFlite). If data needs to be cached temporarily
during a session, use a class/object to store it in memory.

### Networking

* **Stack**: `dio`.
* **Pattern**: Every API call must be an `async` function returning `Future<T>` or `Future<void>`.
* **Auth**: Automated via `AuthInterceptor` and `Authorizer` (except for basic authorization requests).
* **Error Handling**: Use the utility `processDioException` to convert `DioException` to domain-specific `SDKException`.

## Module Structure

The code is strictly divided into `data` and `domain` layers inside the `lib/src/` folder.

* `lib/`:
    * `rook_sdk_core.dart`: The global export file. It exposes public models, enums, exceptions, and `RookApiSources`.
    * `src/`: Internal implementation details.
        * `rook_api_sources.dart`: The entry point class for clients to manage OAuth data sources.
        * `data/`: Network clients, interceptors, and DTO parsing.
        * `domain/`: Contains all enums, exceptions, and models.

### Visibility Modifiers

In Dart, visibility is controlled by exports in the main library file (`lib/rook_sdk_core.dart`) and the `_` prefix.

* **Internal (Hidden from consumer)**:
    * `lib/src/data/`: Consumers do not need to know how networking is implemented or how tokens are refreshed.
    * Files NOT exported in `lib/rook_sdk_core.dart` remain inaccessible to users of the package.
    * **Rule**: Use the `_` prefix for private functions or variables inside `RookApiSources` or data layer classes to
      hide implementation details.
* **Public (Available to consumer)**:
    * `RookApiSources` (Entry point).
    * `lib/src/domain/model/`: Shared models (e.g., `SleepSummary`, `ActivityEvent`).
    * `lib/src/domain/enum/`: Shared enums.
    * `lib/src/domain/exception/`: Exceptions that the SDK can throw.
    * **Rule**: All public classes must be explicitly exported in `lib/rook_sdk_core.dart`.

**Rule**: When you are not sure about the visibility of a constant, function, class, etc. Ask for instructions, provide
information on how it will be used, why it is needed, and wait for an answer.

## Logging

* **Engine**: Standard `Dio` `LogInterceptor`.
* **Rule**: Logging is enabled or disabled at the initialization of `RookApiSources` via the `enableLogs` parameter. Do
  not use print statements (`print()`) directly inside network/data classes. Rely on the `LogInterceptor`.

