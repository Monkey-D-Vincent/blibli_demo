import 'package:blibli_demo/components/home/model/home_recommend_model.dart';
import 'package:blibli_demo/network/core/http_client.dart';
import 'package:blibli_demo/network/request/request_config.dart';
import 'package:blibli_demo/network/request/request_method.dart';
import 'package:blibli_demo/utils/json_util.dart';

class HomeRecommendRepository {
  static Future<HomeRecommendModel> getRecommendData({
    String pageNextUrl = "",
  }) async {
    try {
      dynamic result;
      String url = pageNextUrl.isNotEmpty
          ? pageNextUrl
          : "/api/v4/discovery/hot";
      result = await HttpClient().request(
        RequestConfig(
          url: url,
          method: RequestMethod.get,
        ),
      );
      return JsonUtil.parseObject(result.data, HomeRecommendModel.fromJson)!;
    } catch (e) {
      rethrow;
    }
  }
}
