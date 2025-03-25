import 'dart:core';

extension IntExtensions on int {
  bool? toBoolOrNull() {
    if (this == 0) {
      return false;
    }

    if (this == 1) {
      return true;
    }

    return null;
  }
}
