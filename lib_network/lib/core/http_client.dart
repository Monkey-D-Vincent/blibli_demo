import 'package:lib_network/interceptor/logs_interceptor.dart';
import 'package:lib_network/Constants/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:lib_network/handler/request_handler.dart';
import 'package:lib_network/interceptor/auth_interceptor.dart';
import 'package:lib_network/interceptor/error_interceptor.dart';
import 'package:lib_network/request/request_config.dart';
import 'package:lib_network/request/request_method.dart';

class HttpClient {

  HttpClient._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.BASE_URL,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    _dio.interceptors.addAll([
      AuthInterceptor(
        RequestHandler(),
      ),
      LogsInterceptor(),
      ErrorInterceptor(),
    ]);
  }

  static final HttpClient _instance = HttpClient._internal();

  factory HttpClient() => _instance;

  late final Dio _dio;

  Future<Response> request(RequestConfig config) async {
    final url = config.buildUrl(AppConstants.BASE_URL);

    switch (config.method) {
      case RequestMethod.get:
        return await _dio.get(
          url,
          queryParameters: config.queryParameters,
          options: Options(headers: config.headers),
        );

      case RequestMethod.post:
        return await _dio.post(
          url,
          data: config.body,
          options: Options(headers: config.headers),
        );

      case RequestMethod.put:
        return await _dio.put(
          url,
          data: config.body,
          options: Options(headers: config.headers),
        );

      case RequestMethod.delete:
        return await _dio.delete(
          url,
          data: config.body,
          options: Options(headers: config.headers),
        );
    }
  }
}
