// token
// 公共header
// 登录校验
import 'package:dio/dio.dart';

import '../handler/request_handler.dart';

class AuthInterceptor extends Interceptor {
  final RequestHandler requestHandler;

  AuthInterceptor(this.requestHandler);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    await requestHandler.handle(options);
    super.onRequest(options, handler);
  }
}
