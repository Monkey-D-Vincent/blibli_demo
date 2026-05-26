import 'package:json_annotation/json_annotation.dart';

class SafeStringConverter implements JsonConverter<String?, dynamic> {
  const SafeStringConverter();

  @override
  String? fromJson(dynamic json) {
    if (json == null) return "";
    return json.toString();
  }

  @override
  dynamic toJson(String? object) => object;
}