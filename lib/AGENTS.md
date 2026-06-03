# Demo App (lib)

## Module Overview

This module contains a Flutter application for manual testing and performing demos of the functionalities of the SDKs:
`rook_sdk_apple_health`, `rook_sdk_health_connect`, `rook_sdk_samsung_health`, and `rook_sdk_core`.

## Module Tech stack

| Category                 | Technology           | Notes                                                                                   |
|:-------------------------|:---------------------|:----------------------------------------------------------------------------------------|
| **UI**                   | Material 3           | Use Material 3 for all UI components on both Android and iOS.                           |
| **State Management**     | flutter_bloc (Cubit) | Use **Cubits** specifically to avoid boilerplate and focus on SDKs.                     |
| **DI**                   | provider             | Use `Provider` (or `RepositoryProvider/MutiRepositoryProvider`) to inject repositories. |
| **Navigation**           | go_router            | Declarative routing setup.                                                              |
| **Architecture Pattern** | Feature-First        | Code is grouped by SDK, then by Feature.                                                |

### Data Persistence

* **Key-Value**: `shared_preferences` via `DemoPreferences`.
* **Rule**: Use standard `shared_preferences` for simple key-value storage.

## Module Structure

The application code lives inside the `lib/` directory.

* `core/`: Shared logic, utilities, and widgets that can be used across any feature.
    * `data/`: Shared preferences and local storage.
    * `domain/`: Extension functions and generic utilities.
    * `presentation/`: Reusable, cross-feature UI widgets (e.g., `ScrollableScaffold`).
* `sdk/`: The core testing grounds, grouped by the target SDK platform.
    * `api_sources/`: Cloud-to-cloud testing screens.
    * `sdk_apple_health/`: Apple Health specific testing.
    * `sdk_health_connect/`: Health Connect specific testing.
    * `sdk_samsung_health/`: Samsung Health specific testing.
* `main.dart`: Entry point and global app initialization.
* `menu_screen.dart`: Menu screen to choose the target SDK to demo/test.

### Architectural Rules

* **Feature Grouping:** Inside each SDK directory (e.g., `sdk_samsung_health/`), code must be grouped by **Feature** (
  e.g., `configuration/`, `user/`, `sync/`).
* **Layering:** Every feature directory must split its concerns into:
    * `.../presentation/`: Contains `screens/` (the UI widgets) and `cubit/` (State Management logic).
    * `.../data/`: Contains repositories that interface with the underlying SDK packages.
* **UI Suffix:** All main screen widgets must end with the `Screen` suffix (e.g., `SamsungConfigurationScreen`).
