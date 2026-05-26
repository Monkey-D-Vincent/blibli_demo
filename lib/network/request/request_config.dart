import 'request_method.dart';

class RequestConfig {
  // 接口地址
  final String url;

  // 请求方式
  final RequestMethod method;

  // 参数
  final Map<String, dynamic>? queryParameters;

  // body 参数
  final dynamic body;

  // header
  final Map<String, dynamic>? headers;

  // path 参数
  final Map<String, dynamic>? pathParameters;

  const RequestConfig({
    required this.url,
    required this.method,
    this.queryParameters,
    this.body,
    this.headers,
    this.pathParameters,
  });

  // 构建最终 URL
  String buildUrl(String baseUrl) {
    String finalPath = url;

    // 替换 path 参数
    pathParameters?.forEach((key, value) {
      finalPath = finalPath.replaceAll('{$key}', value.toString());
    });

    Uri uri;
    if (finalPath.startsWith(baseUrl)) {
      uri = Uri.parse(finalPath);
    } else {
      uri = Uri.parse(baseUrl + finalPath);
    }

    final newUri = uri.replace(queryParameters: queryParameters);

    return newUri.toString();
  }
}
