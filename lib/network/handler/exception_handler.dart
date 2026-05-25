import 'package:dio/dio.dart';

class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);

  @override
  String toString() {
    return message;
  }
}

class ExceptionHandler {
  static Exception handle(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return NetworkException("连接超时");

      case DioExceptionType.sendTimeout:
        return NetworkException("请求超时");

      case DioExceptionType.receiveTimeout:
        return NetworkException("响应超时");

      case DioExceptionType.badResponse:
        return NetworkException("服务器异常");

      case DioExceptionType.cancel:
        return NetworkException("请求取消");

      case DioExceptionType.connectionError:
        return NetworkException("网络异常");

      default:
        return NetworkException("未知异常");
    }
  }
}
