/// Represents the current state of diagnostic permissions for Apple Health.
///
/// [none] No permission has been requested or the state is unknown.
/// [requested] Permission has been requested from the user but not yet decided or granted.
/// [dataRetrieved] Permissions may have been granted. Apple Health does not provide info about permissions,
/// ROOK tries to retrieve some data to check if permissions have been granted.
enum AHDiagnosticStatePermissions { none, requested, dataRetrieved }
