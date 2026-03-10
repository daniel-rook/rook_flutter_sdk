class SDKExceptionCode {
  const SDKExceptionCode._();

  static const int sdkNotInitialized = 1;
  static const int missingConfiguration = 2;
  static const int notAuthorized = 3;
  static const int missingPermissions = 4;
  static const int healthKitNotInstalled = 5;
  static const int healthKitNotSupported = 6;
  static const int recordsNotFound = 7;
  static const int dateNotValidEvent = 8;
  static const int dateNotValidSummary = 9;
  static const int userNotInitialized = 10;
  static const int httpRequest = 11;
  static const int timeout = 12;
  static const int quotaExceeded = 13;
  static const int healthKitDisabled = 14;
  static const int healthKitNotReady = 15;
  static const int healthKitOutdated = 16;
  static const int sessionExpired = 17;
  static const int unknown = 1001;
}
