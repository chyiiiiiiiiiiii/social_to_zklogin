// Trims trailing undefined elements from a list.
List<T?> trimTrailingParams<T>(List<T?> params) {
  int end = params.length;
  while (end > 0 && params[end - 1] == null) {
    end--;
  }
  return end == params.length ? params : params.sublist(0, end);
}
