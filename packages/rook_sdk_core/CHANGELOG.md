## 4.1.0

### New Features

**New Exceptions**

* HealthKitNotAllowedException

### Breaking Changes

**Health Kits Filter**

**Health Connect**, **Samsung Health**, **Android** and **Apple Health** will be filtered out when calling
`getAuthorizedDataSourcesV2`, to check the status of each one you can use the on-device status checks;
`HCRookBackgroundSync.isScheduled`, `RookSamsung.isScheduled`, `AndroidStepsManager.isBackgroundAndroidStepsActive`,
`AndroidStepsCounter.isStepsCounterActive` and `AHRookBackgroundSync.isScheduled`.

## 4.0.0

### New Features

**Data Source Management (RookApiSources)**

A new class, `RookApiSources`, has been introduced to manage third-party integrations. This class provides the
following capabilities:

* Authorization: Generate and retrieve authorization URLs for various health data sources.
* Status Tracking: Check which data sources a specific user has already authorized.
* Revocation: Revoke authorization for a specific data source.

**New Data Models & Exceptions**

* Data Models:
    * `HeartRate`
* Exception Types::
    * `HealthKitOutdatedException`
    * `HealthKitDisabledException`
    * `HealthKitNotReadyException`
    * `MissingPermissionsException`
    * `RecordsNotFoundException`
    * `SessionExpiredException`
    * `UnknownException`

### Breaking Changes

**Centralized Exception Handling (SDKException)**

Exception classes now inherit from a base `SDKException` and are marked as final. This structure provides a unified way
to parse errors using `SDKExceptionCode`.

**Exception Hierarchy Changes**

The following exceptions are now final and inherit from `SDKException`:

* `ConnectTimeoutException`
* `DateNotValidForEventsException`
* `DateNotValidForSummariesException`
* `MissingConfigurationException`
* `SDKNotAuthorizedException`
* `SDKNotInitializedException`
* `UserNotInitializedException`

**HttpRequestException**

The `HttpRequestException` has been restructured to align with the new base class:

* The `code` property now refers to an `SDKExceptionCode`.
* The `error` property has been removed.
* Both the HTTP error code and the server message are now encapsulated within the `message` property.

**Data Model Updates**

To better reflect potential null values from health providers, the `DailyCalories` model has been updated:

| Property | Previous Type | New Type |
|----------|---------------|----------|
| basal    | Double        | Double?  |
| active   | Double        | Double?  |

### Migrations

The following exceptions have been removed as they are no longer thrown by the current SDK version:

* `BadUserTimeZoneException`
* `UserNotDeletedException`
* `UserNotRegisteredException`

| Legacy Component                           | New Component                         |
|--------------------------------------------|---------------------------------------|
| `MissingHealthConnectPermissionsException` | `MissingPermissionsException`         |
| `MissingAndroidPermissionsException`       | `MissingPermissionsException`         |
| `HealthConnectNotInstalledException`       | `HealthKitNotInstalledException`      |
| `DeviceNotSupportedException`              | `HealthKitNotSupportedException`      |
| `RequestQuotaExceededException`            | `HealthConnectQuotaExceededException` |

Dependency updates

* dio: **New** → **^5.9.0**
* crypto: **New** → **^3.0.7**

## 1.2.0

* Added `SleepSummary`
* Added `PhysicalSummary`
* Added `BodySummary`
* Added `ActivityEvent`

## 1.1.0

* Added `AuthorizedDataSourceV2`

## 1.0.0

* Added `DataSourceAuthorizer`
* `AuthorizedDataSources` properties have been changed to nullable in order to show data source availability.
    * Added Dexcom to `AuthorizedDataSources` properties.

## 0.4.5

* Added `DailyCalories`
* Added equals and hashCode implementation to `data_source`, `rook_configuration` and `authorized_data_sources`.

## 0.4.4

* Added `AuthorizedDataSources`

## 0.4.3

* Deprecated property `image` in `DataSource`, replace with `imageUrl`.

## 0.4.1

* Added DataSourceType

## 0.4.0

* Added BadUserTimeZoneException.
* Added DateNotValidForEventsException.
* Added DateNotValidForSummariesException.
* Added UserNotDeletedException.
* Added UserNotRegisteredException.
* MissingPermissionsException was renamed to MissingHealthConnectPermissionsException.
* HttpRequestException `message` property was renamed to `error`.
* Changed HttpRequestException constructor parameters order to `HttpRequestException(code, error)`.

## 0.3.1

* Added RequestPermissionsStatus.

## 0.3.0

* Added `enableBackgroundSync` to RookConfiguration.
* RookConfiguration parameters were changed to required named parameters.

## 0.2.1

* Added SyncStatus and SyncStatusWithData.

## 0.2.0

* Renamed NotAuthorizedException to SDKNotAuthorizedException.

## 0.1.2

* Added DataSource class.

## 0.1.0

* Changed all instances of clientPassword to secretKey.

## 0.0.2

* Added RookEnvironment.

## 0.0.1

* First release.
