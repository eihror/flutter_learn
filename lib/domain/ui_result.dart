class UiResult {
  bool loading;

  UiResult({
    this.loading = false,
  });
}

class Loading implements UiResult {
  @override
  bool loading = true;

  Loading();
}

class Success<T> implements UiResult {
  @override
  bool loading = false;

  T? data;

  Success({
    this.data,
  });
}

class Error implements UiResult {
  @override
  bool loading = false;
  Error? error;

  Error({
    this.error,
  });
}
