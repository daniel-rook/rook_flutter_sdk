extension IntNonDefault on int {
  int? checkNonDefault() {
    if (this == _defaultInt) {
      return null;
    } else {
      return this;
    }
  }
}

extension DoubleNonDefault on double {
  double? checkNonDefault() {
    if (this == _defaultDouble || isNaN) {
      return null;
    } else {
      return this;
    }
  }
}

extension StringNonDefault on String {
  String? checkNonDefault() {
    if (this == _defaultString) {
      return null;
    } else {
      return this;
    }
  }
}

const _defaultInt = 0;
const _defaultDouble = 0.0;
const _defaultString = "N/A";
