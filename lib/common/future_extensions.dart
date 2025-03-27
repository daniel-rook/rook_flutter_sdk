extension FutureBoolExtensions on Future<bool> {
  Future<bool> getOrFalse() async {
    bool result;

    try {
      result = await this;
    } catch (ignored) {
      result = false;
    }

    return result;
  }
}
