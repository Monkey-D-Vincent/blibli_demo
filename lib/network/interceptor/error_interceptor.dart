import 'package:dio/dio.dart';

import '../handler/exception_handler.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final exception = ExceptionHandler.handle(err);

    handler.reject(
      DioException(requestOptions: err.requestOptions, error: exception),
    );
  }
}
