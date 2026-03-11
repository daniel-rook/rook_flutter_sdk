/// Represents the current state of diagnostic permissions for Samsung Health.
///
/// [none] No permission has been requested or the state is unknown.
/// [requested] Permission has been requested from the user but not yet decided or granted.
/// [granted] Permission has been explicitly granted by the user.
enum SHDiagnosticStatePermissions { none, requested, granted }
