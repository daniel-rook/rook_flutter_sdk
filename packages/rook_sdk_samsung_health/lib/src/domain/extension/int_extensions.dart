extension IntExtensions on int {
  /// Checks if the integer is the default value (`0`) and returns `null` if it is.
  ///
  /// If the integer is not the default value, it returns the integer itself.
  int? checkNonDefault() {
    if (this == _defaultInt) {
      return null;
    } else {
      return this;
    }
  }
}

const _defaultInt = 0;
