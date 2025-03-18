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
