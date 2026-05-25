import 'package:blibli_demo/utils/shared_util.dart';
import 'package:dio/dio.dart';

class RequestHandler {
  Future<void> handle(RequestOptions options) async {
    final token = SharedUtil.getToken();

    if (token.isNotEmpty) {
      options.headers["token"] = token;
    }
    options.headers["content-type"] = "application/json";
  }
}
