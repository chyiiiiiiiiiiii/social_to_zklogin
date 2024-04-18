class JSONRPCError implements Exception {
  final String message;
  final int code;
  final dynamic data;

  JSONRPCError({
    required this.message,
    required this.code,
    this.data,
  });

  @override
  String toString() {
    return 'JSONRPCError: $message (Code: $code${data != null ? ', Data: $data' : ''})';
  }
}
