import 'package:common/common.dart';
import 'package:lib_network/core/http_client.dart';
import 'package:lib_network/request/request_config.dart';
import 'package:lib_network/request/request_method.dart';
import 'package:lib_shared/lib_shared.dart';

class HomePopularRepository {
  static Future<HomeRecommendModel> getRecommendData({
    String pageNextUrl = "",
  }) async {
    try {
      dynamic result;
      String url = pageNextUrl.isNotEmpty
          ? pageNextUrl
          : "/api/v5/index/tab/allRec";
      result = await HttpClient().request(
        RequestConfig(url: url, method: RequestMethod.get),
      );
      return JsonUtil.parseObject(result.data, HomeRecommendModel.fromJson)!;
    } catch (e) {
      rethrow;
    }
  }
}