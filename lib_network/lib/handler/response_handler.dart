import 'package:dio/dio.dart';

class ResponseHandler {

  dynamic handle(Response response) {

    final data = response.data;

    return data;
  }
}