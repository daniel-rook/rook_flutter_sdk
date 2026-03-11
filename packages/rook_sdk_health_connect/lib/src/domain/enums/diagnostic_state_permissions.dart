/// Represents the current state of diagnostic permissions for Health Connect.
///
/// [none] No permission has been requested or the state is unknown.
/// [requested] Permission has been requested from the user but not yet decided or granted.
/// [granted] Permission has been explicitly granted by the user.
enum HCDiagnosticStatePermissions { none, requested, granted }
