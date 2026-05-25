class JsonUtil {
  // 解析对象
  static T? parseObject<T>(
    dynamic json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    try {
      if (json == null) {
        return null;
      }
      if (json is! Map<String, dynamic>) {
        return null;
      }
      return fromJson(json);
    } catch (e) {
      print("parseObject error: $e");
      return null;
    }
  }

  // 解析 List
  static List<T> parseList<T>(
    dynamic json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    try {
      if (json == null) {
        return [];
      }
      if (json is! List) {
        return [];
      }
      return json.map<T>((e) {
        if (e is Map<String, dynamic>) {
          return fromJson(e);
        }
        throw Exception("List item is not Map");
      }).toList();
    } catch (e) {
      print("parseList error: $e");
      return [];
    }
  }
}
