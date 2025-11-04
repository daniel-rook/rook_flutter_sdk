extension DateTimeExtensions on DateTime {
  static DateTime parseLocal(String formattedString) {
    return DateTime.parse(formattedString).toLocal();
  }

  static DateTime? parseLocalNullable(String? formattedString) {
    if (formattedString == null) {
      return null;
    }

    try {
      return parseLocal(formattedString);
    } catch (exception) {
      return null;
    }
  }
}
