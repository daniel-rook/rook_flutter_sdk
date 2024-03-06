class ConsoleOutput {
  String _value = '';

  String get current => _value;

  void append(String string) {
    _value += '\n${DateTime.now().toIso8601String()} - $string\n';
  }

  void clear() {
    _value = '';
  }
}
