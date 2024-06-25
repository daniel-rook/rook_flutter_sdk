extension IntExtensions on int {
  int? checkNonDefault() {
    if (this == _defaultInt) {
      return null;
    } else {
      return this;
    }
  }
}

const _defaultInt = 0;
