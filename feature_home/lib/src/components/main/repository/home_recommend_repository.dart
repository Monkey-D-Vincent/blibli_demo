import 'package:common/common.dart';
import 'package:feature_home/src/components/main/model/home_recommend_model.dart';
import 'package:lib_network/lib_network.dart';

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
        RequestConfig(url: url, method: RequestMethod.get),
      );
      return JsonUtil.parseObject(result.data, HomeRecommendModel.fromJson)!;
    } catch (e) {
      rethrow;
    }
  }
}
