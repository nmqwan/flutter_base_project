class ApiExceptionEntity implements Exception {
  String message;
  String? title;
  int? errCode;
  StackTrace? stackTrace;

  ApiExceptionEntity(
      {required this.message, this.errCode, this.stackTrace, this.title});

  @override
  String toString() =>
      'ApiExceptionEntity(message: $message, errCode: $errCode, stackTrace: $stackTrace)';
}
