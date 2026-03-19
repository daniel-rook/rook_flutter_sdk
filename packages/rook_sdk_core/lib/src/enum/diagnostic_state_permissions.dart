/// Represents the current permissions state.
///
/// [notRequested] Permissions have not been requested.
/// [requested] Permission has been requested from the user but not yet decided or granted.
/// [granted] Permission has been explicitly granted by the user.
enum DiagnosticStatePermissions { notRequested, requested, granted }
