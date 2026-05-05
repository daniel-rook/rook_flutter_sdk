class ConsoleOutput {
  String _value = '';

  String get current => _value;

  void append(String string) {
    _value += '\n${DateTime.now().toIso8601String()} - $string\n';
  }

  void appendMultiple(List<String> strings) {
    for (String string in strings) {
      _value += "${DateTime.now().toIso8601String()} - $string\n\n";
    }
  }

  void clear() {
    _value = '';
  }
}
