sealed class UiResult {}

class Loading extends UiResult {
  Loading();
}

class Success<T> extends UiResult {
  T? data;

  Success({
    this.data,
  });
}

class Error extends UiResult {
  Error? error;

  Error({
    this.error,
  });
}
