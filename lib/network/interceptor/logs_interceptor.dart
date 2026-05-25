import 'package:dio/dio.dart';

class LogsInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print("""
======== 请求开始 ========

URL:
${options.uri}

METHOD:
${options.method}

HEADER:
${options.headers}

QUERY:
${options.queryParameters}

BODY:
${options.data}

=========================
""");

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("""
======== 响应成功 ========

URL:
${response.requestOptions.uri}

STATUS:
${response.statusCode}

DATA:
${response.data}

=========================
""");

    super.onResponse(response, handler);
  }
}
